class Lot < Sequel::Model
  many_to_one :coproprietaire
  many_to_one :copropriete
end
