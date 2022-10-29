class Copropriete < Sequel::Model
  one_to_one :adresse
  one_to_many :budgets
  one_to_many :factures
  one_to_one :carnet_entretien
  one_to_one :assurance
  one_to_many :administrators
  one_to_many :coproprietaires
  one_to_one :banque
  one_to_many :lots
  many_to_many :prestataires, left_key: :copropriete_id, right_key: :prestataire_id, join_table: :prestataires_coproprietes
  one_to_many :exercices

end
