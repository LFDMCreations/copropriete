class CarnetEntretien < Sequel::Model
  one_to_one :copropriete
end