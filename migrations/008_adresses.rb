Sequel.migration do

  up do
    # Cette table est utilisé dans `coproprietes` dans  `coproprietaires` et `prestataires`
    create_table(:adresses) do
      primary_key :id, type: :Bignum
      foreign_key :copropriete_id, :coproprietes, index: true, unique: true, type: :Bignum
      foreign_key :coproprietaire_id, :coproprietaires, index: true, unique: true, type: :Bignum
      foreign_key :prestataire_id, :prestataires, index: true, unique: true, type: :Bignum

      # numéro de voie: ex: "132" ; peut-être vide (ex pour les lieux dits)
      String :numero, size: 50
      # nom de la voie : "rue victor hugo"
      # un lieu-dit est renseigné comme "nom_voie" : "Le Gué de la Terre"
      String :nom_voie, size: 250, null: false
      String :code_postale, size: 50, null: false
      String :pays, size: 250, null: false, default: 'France'
      DateTime :created_at, null: false, default: Sequel::CURRENT_TIMESTAMP
    end
  end

  down do
    drop_table(:adresses)
  end

end
