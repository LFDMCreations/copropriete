# frozen_string_literal: true

Sequel.migration do
  up do
    db = self

    create_table(:lignes_budgets) do
      primary_key :id, type: :Bignum
      foreign_key :budget_general_id, :budgets_generaux, index: true, type: :Bignum
      foreign_key :budget_special_id, :budgets_speciaux, index: true, type: :Bignum
      foreign_key :budget_travaux_id, :budgets_travaux,  index: true, type: :Bignum
      foreign_key :compte_id, :comptes, index: true, null: false, type: :Bignum
      String :intitule, size: 250, null: false
      Integer :montant, null: false
      DateTime :created_at, null: false, default: Sequel::CURRENT_TIMESTAMP
    end

    create_table(:totaux_budgets) do
      primary_key :id, type: :Bignum      
      foreign_key :budget_general_id, :budgets_generaux, index: true, type: :Bignum
      foreign_key :budget_special_id, :budgets_speciaux, index: true, type: :Bignum
      foreign_key :budget_travaux_id, :budgets_travaux,  index: true, type: :Bignum
      Integer :montant, null: false
      DateTime :date_de_valeur, null: false
      DateTime :created_at, null: false, default: Sequel::CURRENT_TIMESTAMP
    end

    run 'ALTER TABLE lignes_budgets ADD CONSTRAINT type_budget CHECK (
      budget_general_id IS NOT NULL OR budget_special_id IS NOT NULL OR budget_travaux_id IS NOT NULL
      )'
      
    run 'ALTER TABLE totaux_budgets ADD CONSTRAINT type_budget CHECK (
      budget_general_id IS NOT NULL OR budget_special_id IS NOT NULL OR budget_travaux_id IS NOT NULL
      )'
  end


  down do
    drop_table(:lignes_budgets, :totaux_budgets)
  end
end
