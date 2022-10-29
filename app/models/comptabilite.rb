# La relation entre ces trois classes est basée sur la colonne "numero" de chaque classe, 
# non sur les foreign_keys. Il a donc fallu ajouter les methodes permettant d'interroger
# la filiation entre les classes


class ClasseComptable < Sequel::Model(:classes_comptables)
end

class SousClasseComptable < Sequel::Model(:sous_classes_comptables)

  def comptes
    Compte.where(numero: /^45/)
  end
  
end

class Compte < Sequel::Model
  many_to_many :ligne_budgets, right_key: :ligne_budget_id, left_key: :compte_id, join_table: :lignes_budgets_comptes

  # instance methods
  def sous_classe_comptable
    SousClasseComptable.where(numero: self[:numero][0,2])
  end

  # class methods


end
