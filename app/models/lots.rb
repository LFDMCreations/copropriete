class Lot < Sequel::Model
  many_to_one :copropriete
  many_to_one :coproprietaire
end
