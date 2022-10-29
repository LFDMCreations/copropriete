# Un coproprietaire peut être personne morale ou physique, 
# seul ou deux ou plusieurs copropriétaires (d'où un join table)
# habitant ou pas.
# par définition, les copropriétaires sont habitant, donc le plus souevent c'est redondant 
# de renseigner une adresse par copropriétaire.

Sequel.migration do
  up do
    db = self
    # les tantiemes font partie de la table 'lots' pas de 'coproprietaires' puisque
    # chaque proprietaire peut avoir plusieurs lots
    create_table(:coproprietaires) do
      primary_key :id, type: :Bignum      
      foreign_key :copropriete_id, :coproprietes, index: true, type: :Bignum
      # le copropriétaire est-il sous tutelle ou curatelle :
      FalseClass :majeur_protege, default: false
      TrueClass :whatsapp, default: true
      String :etat_civil, size: 250, default: 'marié'
      # est-ce que le copropriétaire habite dans la copropriété ?
      TrueClass :habitant, null: false, default: true
      # personne morale ou physique ? 
      # ces lignes ne peuvent s'intituler "personne_morale" pour éviter la collision avec les tables qui ont ces noms
      FalseClass :morale, null: false, default: false
      TrueClass :physique, null: false, default: true
      # permet d'attirer l'attention sur un copropriétaire, ex : en retard de charges
      # renseigner le champs commentaires s'il y a une alerte
      FalseClass :alerte, null: false, default: false
      FalseClass :conseil_syndical, null: false, default: false
      # par exemple : 'est en retard sur ses charges'
      String :commentaire, text: true
      DateTime :created_at, null: false, default: Sequel::CURRENT_TIMESTAMP
    end

    create_join_table(personne_physique_id: :personnes_physiques, coproprietaire_id: :coproprietaires)
    create_join_table(personne_morale_id: :personnes_morales, coproprietaire_id: :coproprietaires)

    ###################~~~~~~~~~~~~ ATTENTION ~~~~~~~~~~~~~~################
    ###### DANS LE CODE, UN CHAMPS VIDE DOIT AVOIR LA VALEUR `NULL` ########
    ########### PARCE QUE '' EST UN STRING QUI N'EST PAS VIDE ##############
    # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ #
    run 'ALTER TABLE coproprietaires ADD CONSTRAINT personnes_company_check CHECK (
      CASE WHEN physique
        THEN etat_civil IS NOT NULL AND majeur_protege IS NOT NULL
        ELSE etat_civil IS     NULL AND majeur_protege IS     NULL
      END )'
  end

  down do
    drop_table(:coproprietaires)
    drop_join_table(personne_physique_id: :personnes_physiques, coproprietaire_id: :coproprietaires)
    drop_join_table(personne_morale_id: :personnes_morales, coproprietaire_id: :coproprietaires)
  end
end
