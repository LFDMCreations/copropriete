class PersonneMorale < Sequel::Model(:personnes_morales)
  many_to_many :coproprietaires, left_key: :personne_morale_id, right_key: :coproprietaire_id, join_table: :coproprietaires_personnes_morales
end

class PersonnePhysique < Sequel::Model(:personnes_physiques )
  many_to_many :coproprietaires, left_key: :personne_physique_id, right_key: :coproprietaire_id, join_table: :coproprietaires_personnes_physiques
end

class Adresse < Sequel::Model
  one_to_one :copropriete
end
