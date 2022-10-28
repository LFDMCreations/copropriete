# Les balances sont établies une seule fois en fin d'exercice.
Sequel.migration do
  up do
    db = self

    create_table(:balances) do
      primary_key :id, type: :Bignum
      foreign_key :copropriete_id, :coproprietes, null: false, index: true, type: :Bignum
      foreign_key :compte_id, :comptes, index: true, null: false, type: :Bignum
      foreign_key :exercice_id, :exercices, index: true, null: false, type: :Bignum
      # les montants doivent être multipliés par 100 avant enregistrement en DB:
      Integer :cumul_debit
      Integer :cumul_credit
      Integer :solde_debit
      Integer :solde_credit
      DateTime :created_at, null: false, default: Sequel::CURRENT_TIMESTAMP
    end
  end

  down do
  end
end
