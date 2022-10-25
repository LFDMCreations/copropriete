# frozen_string_literal: true

Sequel.migration do
  up do
    db = self

    create_table(:banques) do
      primary_key :id, type: :Bignum
      String :nom_banque, size: 250, null: false
      String :numero_de_compte, size: 250
      String :IBAN, size: 250
      String :numero_de_client, size: 250, null: false
      # le mot de passe ou code de connexion est crypté dans la base de données
      String :password_digest, null: false
      String :gestionnaire_prenom, size: 250
      String :gestionnaire_nom, size: 250
      String :gestionnaire_email, size: 250
      String :gestionnaire_telephone, size: 250
      String :commentaires, text: true
      DateTime :created_at, null: false, default: Sequel::CURRENT_TIMESTAMP
    end

    create_table(:coproprietes) do
      primary_key :id, type: :Bignum
      foreign_key :adresse_id, :adresses, index: true, null: false, type: :Bignum
      foreign_key :banque_id, :banques, index: true, null: false, type: :Bignum
      Fixnum :tantiemes, null: false, default: 1000
      String :immatriculation
      DateTime :reglement_date, null: false
      String :commentaires, text: true
      DateTime :created_at, null: false, default: Sequel::CURRENT_TIMESTAMP
    end
  end

  down do
    drop_table(:banque, :copropriete)
  end
end
