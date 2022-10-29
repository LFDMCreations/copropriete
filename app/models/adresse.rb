class Adresse < Sequel::Model
  one_to_one :copropriete
  one_to_one :coproprietaire
  one_to_one :prestataire
end
