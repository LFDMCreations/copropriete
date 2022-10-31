class Copropriete < Sequel::Model
  one_to_one :adresse
  one_to_many :budget_generals
  one_to_many :budget_specials
  one_to_many :budgets_travaux
  one_to_many :factures
  one_to_one :carnet_entretien
  one_to_one :assurance
  one_to_many :administrators
  one_to_many :coproprietaires
  one_to_one :banque
  one_to_many :lots
  many_to_many :prestataires, left_key: :copropriete_id, right_key: :prestataire_id, join_table: :prestataires_coproprietes
  one_to_many :exercices


  dataset_module do

    # dataset_module create class methods for increased flexibility
    # https://sequel.jeremyevans.net/rdoc/files/doc/model_dataset_method_design_rdoc.html#label-Flexibility-3A+Use+Single+Method+Per+Task

    def toute_la_copropriete(copro_id)
      
      puts self[copro_id].coproprietaires

    end

  end





end

=begin
?> copro.coproprietaires.each do |aa| puts "copro : #{aa[:id]}"
  ?>   aa.personne_physiques.each do |pp|
  ?>     puts "nom : #{pp[:nom]}"
  ?>   end
  ?>   aa.lots.each do |ll|
  ?>     puts "lot : #{ll[:id]}"
  ?>   end
  >> end
=end