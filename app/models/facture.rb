class Facture < Sequel::Model
  many_to_one :prestataire
  many_to_one :copropriete
end
