class BudgetGeneral < Sequel::Model(:budgets_generaux)
  many_to_one :copropriete
  one_to_many :ligne_budgets
end

class BudgetSpecial < Sequel::Model(:budgets_speciaux)
  many_to_one :copropriete
  one_to_many :ligne_budgets
end

class BudgetTravaux < Sequel::Model(:budgets_travaux)
  many_to_one :copropriete
  one_to_many :ligne_budgets
end
