class LigneBudget < Sequel::Model(:lignes_budgets)
  many_to_one :budget
  many_to_many :comptes, left_key: :ligne_budget_id, right_key: :compte_id, join_table: :lignes_budgets_comptes
 end