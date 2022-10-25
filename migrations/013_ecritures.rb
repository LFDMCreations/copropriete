# frozen_string_literal: true

Sequel.migration do
  up do
    db = self

    create_table(:ecritures) do
      # ce sont les écritures qui constituent le grand livre
      primary_key :id, type: :Bignum
      foreign_key :compte_id, :comptes, index: true, null: false, type: :Bignum
      foreign_key :exercice_id, :exercices, index: true, null: false, type: :Bignum
      # il peut y avoir une facture attachée, mais par forcément :
      foreign_key :facture_id, :factures, index: true, type: :Bignum
      # les montants doivent être multipliés par 100 avant enregistrement en DB:
      Integer :montant_debit
      Integer :montant_credit
      String :libelle, size: 250, null: false, default: 'à renseigner'
      Date :date_de_valeur, null: false
      DateTime :created_at, null: false, default: Sequel::CURRENT_TIMESTAMP
    end

    run 'ALTER TABLE ecritures ADD CONSTRAINT debit_or_credit CHECK (
      montant_debit IS NOT NULL OR montant_credit IS NOT NULL
      )'
  end

  down do
    drop_table(:ecritures)
  end
end
