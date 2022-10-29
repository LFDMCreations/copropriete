class Prestataire < Sequel::Model
  one_to_one :adresse
  one_to_many :factures
  one_to_one :banque

  many_to_one :personne_physique
  many_to_one :personne_morale
  many_to_many :coproprietes, left_key: :prestataire_id, right_key: :copropriete_id, join_table: :prestataires_coproprietes



end
