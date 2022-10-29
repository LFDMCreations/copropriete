# frozen_string_literal: true

Sequel.migration do
  up do
    create_table(:compte_banque_general) do
      primary_key :id, type: :Bignum
      foreign_key :copropriete_id, :coproprietes, null: false, unique: true, index: true, type: :Bignum
      foreign_key :coproprietaire_id, :coproprietes, unique: true, index: true, type: :Bignum
      foreign_key :prestataire_id, :coproprietes, unique: true, index: true, type: :Bignum
      String :etablissement, size: 50, null: false
      String :IBAN, size: 250, null: false
      String :commentaires, text: true
    end

    create_table(:compte_alur) do
      primary_key :id, type: :Bignum
      foreign_key :copropriete_id, :coproprietes, unique: true, index: true, type: :Bignum
      foreign_key :coproprietaire_id, :coproprietes, unique: true, index: true, type: :Bignum
      foreign_key :prestataire_id, :coproprietes, unique: true, index: true, type: :Bignum
      String :etablissement, size: 50, null: false
      String :IBAN, size: 250, null: false
      String :commentaires, text: true
    end
  end

  down do
    drop_table(:compte_banque_general,
               :compte_alur)
  end
end
