class Exercice < Sequel::Model
  many_to_one :copropriete
  one_to_many :ecritures
  one_to_many :compte_individuels

end
