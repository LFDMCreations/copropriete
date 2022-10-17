Sequel.migration do
  up do
    
    db = self

    create_table(:personnes_morales) do
      primary_key :id, :type=>:Bignum
      foreign_key :adresse_id, :adresses, null: false, :type=>:Bignum,
      String :forme, size: 50, null: false
      String :denomination, size: 250, null: false
      String :mandataire_prenom, size: 250; null: false
      String :mandataire_nom, size: 250; null: false
      citext :mandataire_email, :null=>false
      constraint :valid_mandataire_email, :mandataire_email=>/^[^,;@ \r\n]+@[^,@; \r\n]+\.[^,@; \r\n]+$/
      index :mandataire_email, :unique=>true
      DateTime :created_at, :null=>false, :default=>Sequel::CURRENT_TIMESTAMP
    end


    # les tantiemes font partie de la table 'lots' pas de 'coproprietaires' puisque
    # chaque proprietaire peut avoir plusieurs lots
    create_table(:coproprietaires) do
      primary_key :id, :type=>:Bignum
      foreign_key :adresse_id, :adresses, :type=>:Bignum
      foreign_key :personne_morale_id, :personnes_morales, :type=>:Bignum
      foreign_key :personne_physique_id, :personnes_physiques, :type=>:Bignum

      # le copropriétaire est-il sous tutelle ou curatelle :
      FalseClass :majeur_protege, default: false
      Trueclass :whatsapp, default: true
      String :etat_civil, size: 250, default: 'marie'
      # est-ce que le copropriétaire habite dans la copropriété ? 
      Trueclass :habitant, null: false, default: true
      Falseclass :personne_morale, null: false, default: false
      Trueclass :personne_physique, null: false, default: true
      FalseClass :conseil_syndical, null: false, default: false
      # par exemple : 'habite 5e étage droite ; est en retard sur ses charges'
      String :commentaires, text: true
      DateTime :created_at, :null=>false, :default=>Sequel::CURRENT_TIMESTAMP
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
    drop_table(:personnes_morales, :coproprietaires)
  end

end