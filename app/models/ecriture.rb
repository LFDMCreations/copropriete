class Ecriture < Sequel::Model
  many_to_one :compte
  many_to_one :exercice
  many_to_one :facture
end
