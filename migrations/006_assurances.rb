# frozen_string_literal: true

Sequel.migration do
  up do
    create_table(:courtier_assurances) do
      primary_key :id, type: :Bignum
      foreign_key :copropriete_id, :coproprietes, null: false, index: true, type: :Bignum
      # le nom du courtier, ex: "nexity assurance"
      String :etablissement, size: 250, null: false
      String :numero_dossier, size: 250, null: false
      String :gestionnaire, size: 250, null: false
      String :telephone, size: 250, null: false
      citext :email
      constraint :valid_email, email: /^[^,;@ \r\n]+@[^,@; \r\n]+\.[^,@; \r\n]+$/
      String :commentaires, text: true
      DateTime :created_at, null: false, default: Sequel::CURRENT_TIMESTAMP

    end

    create_table(:assurances) do
      primary_key :id, type: :Bignum
      foreign_key :copropriete_id, :coproprietes, null: false, index: true, type: :Bignum
      foreign_key :courtier_assurances_id, :courtier_assurances, index: true, type: :Bignum
      # le nom de la compagnie d'assurances, ex: "Axa"
      String :etablissement, size: 250, null: false
      String :numero_police, size: 250, null: false
      String :gestionnaire, size: 250
      String :telephone, size: 250
      citext :email
      constraint :valid_email, email: /^[^,;@ \r\n]+@[^,@; \r\n]+\.[^,@; \r\n]+$/
      String :commentaires, text: true
      DateTime :created_at, null: false, default: Sequel::CURRENT_TIMESTAMP
    end
  end

  down do
    drop_table(:courtier_assurances,
               :assurances)
  end
end
