class PersonneMorale < Sequel::Model(:personnes_morales)
  many_to_many :coproprietaires, left_key: :personne_morale_id, right_key: :coproprietaire_id, join_table: :coproprietaires_personnes_morales
  one_to_many :prestataires
end

class PersonnePhysique < Sequel::Model(:personnes_physiques )
  many_to_many :coproprietaires, left_key: :personne_physique_id, right_key: :coproprietaire_id, join_table: :coproprietaires_personnes_physiques
  one_to_many :prestataires
end
