# frozen_string_literal: true

Sequel.migration do
  up do
    db = self

    # Cette table est utilisé dans `coproprietes` et dans  `coproprietaires`
    create_table(:adresses) do
      primary_key :id, type: :Bignum
      # numéro de voie: ex: "132"
      String :numero, size: 50
      # nom de la voie : "rue victor hugo"
      # un lieu-dit est renseigné comme "nom_voie" : "Le Gué de la Terre"
      String :nom_voie, size: 250, null: false
      String :code_postale, size: 50, null: false
      String :pays, size: 250, null: false, default: 'France'
      DateTime :created_at, null: false, default: Sequel::CURRENT_TIMESTAMP
    end

    create_table(:personnes_physiques) do
      primary_key :id, type: :Bignum
      String :prenom, size: 250
      String :nom, size: 250
      citext :email
      constraint :valid_email, email: /^[^,;@ \r\n]+@[^,@; \r\n]+\.[^,@; \r\n]+$/
      index :email, unique: true
      String :telephone, size: 50
      DateTime :created_at, null: false, default: Sequel::CURRENT_TIMESTAMP
    end

    create_table(:personnes_morales) do
      primary_key :id, type: :Bignum
      String :forme, size: 50, null: false
      String :denomination, size: 250, null: false
      String :mandataire_prenom, size: 250, null: false
      String :mandataire_nom, size: 250, null: false
      citext :mandataire_email, null: false
      constraint :valid_mandataire_email, mandataire_email: /^[^,;@ \r\n]+@[^,@; \r\n]+\.[^,@; \r\n]+$/
      index :mandataire_email, unique: true
      DateTime :created_at, null: false, default: Sequel::CURRENT_TIMESTAMP
    end
  end

  down do
    drop_table(:adresses, :personnes_physiques, :personnes_morales)
  end
end
