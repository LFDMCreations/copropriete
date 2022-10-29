class Coproprietaire < Sequel::Model

  # à cause des règles de pluriel de la librairie Sequel, le pluriel de 'personne_physique' est 'personne_physiques'
  # sans 's' à personne. :personne_physiques va chercher la classe PersonnePhysique (ce qui est exacte)

  many_to_many :personne_physiques, left_key: :coproprietaire_id, right_key: :personne_physique_id, join_table: :coproprietaires_personnes_physiques
  many_to_many :personne_morales, left_key: :coproprietaire_id, right_key: :personne_morale_id, join_table: :coproprietaires_personnes_morales
  many_to_one :copropriete
  one_to_many :lots
  one_to_one :banque
  one_to_one :adresse
  one_to_many :compte_individuels
  
=begin
  copro = Coproprietaire.last
  pp = PersonnePhysique[5]
  # enter into join_table:
  copro.add_personne_physique(pp)
  # fetch all personne_physiques beloningin to this coproprietaire:
  copro.personne_physiques
=end

end
