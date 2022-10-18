Sequel.migration do
  up do
    
    db = self

    # les tantiemes font partie de la table 'lots' pas de 'coproprietaires' puisque
    # chaque proprietaire peut avoir plusieurs lots
    create_table(:coproprietaires) do
      primary_key :id, :type=>:Bignum
      foreign_key :adresse_id, :adresses, :index => true, :type=>:Bignum
      foreign_key :personne_morale_id, :personnes_morales, :index => true, :type=>:Bignum
      foreign_key :personne_physique_id, :personnes_physiques, :index => true, :type=>:Bignum

      # le copropriétaire est-il sous tutelle ou curatelle :
      FalseClass :majeur_protege, default: false
      TrueClass :whatsapp, default: true
      String :etat_civil, size: 250, default: 'marié'
      # est-ce que le copropriétaire habite dans la copropriété ? 
      TrueClass :habitant, null: false, default: true
      FalseClass :personne_morale, null: false, default: false
      TrueClass :personne_physique, null: false, default: true
      FalseClass :conseil_syndical, null: false, default: false
      # par exemple : 'habite 5e étage droite ; est en retard sur ses charges'
      String :commentaires, text: true
      DateTime :created_at, :null => false, :default=>Sequel::CURRENT_TIMESTAMP
    end

    run 'ALTER TABLE coproprietaires ADD CONSTRAINT coproprietaires_physique_check CHECK (
      personne_morale_id IS NOT NULL OR personne_physique_id IS NOT NULL
      )'

    run 'ALTER TABLE coproprietaires ADD CONSTRAINT coproprietaires_adresse_check CHECK (
      CASE WHEN habitant
        THEN adresse_id IS     NULL
        ELSE adresse_id IS NOT NULL
      END
    )'

    # Seulement si le coproprietaire est une personne morale,
    # prenom, nom et email peuvent être NULL ; dans le cas contraire, ces champs sont requis

    ####################~~~~~~~~~~~~ ATTENTION ~~~~~~~~~~~~~~################
    ###### DANS LE CODE, UN CHAMPS VIDE DOIT AVOIR LA VALEUR `NULL` #########
    ########### PARCE QUE '' EST UN STRING QUI N'EST PAS VIDE ###############
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
    run 'ALTER TABLE coproprietaires ADD CONSTRAINT personnes_company_check CHECK (
      CASE WHEN personne_physique
        THEN etat_civil IS NOT NULL AND majeur_protege IS NOT NULL
        ELSE etat_civil IS     NULL AND majeur_protege IS     NULL
      END )'

  end

  down do
    drop_table(:coproprietaires)
  end

end
