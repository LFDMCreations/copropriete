class CarnetEntretien < Sequel::Model(:carnets_entretiens)
  one_to_one :copropriete
end