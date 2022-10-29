# frozen_string_literal: true

Sequel.migration do
  up do
    db = self

    create_table(:comptes_individuels) do
      primary_key :id, type: :Bignum
      foreign_key :copropriete_id, :coproprietes, null: false, index: true, type: :Bignum
      foreign_key :coproprietaire_id, :coproprietaires, null: false, index: true, type: :Bignum
      foreign_key :exercice_id, :exercices, index: true, null: false, type: :Bignum
      foreign_key :compte_id, :comptes, index: true, type: :Bignum
      String :intitule      
      # les montants doivent être multipliés par 100 avant enregistrement en DB:
      Integer :debit
      Integer :credit
      DateTime :created_at, null: false, default: Sequel::CURRENT_TIMESTAMP
    end
  end

  down do
    drop_table(:comptes_individuels)
  end
end
