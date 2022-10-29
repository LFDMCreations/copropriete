class CompteBanqueGeneral < Sequel::Model(:compte_banque_general)
  one_to_one :copropriete
  one_to_one :coproprietaire
  one_to_one :prestataire
end

class CompteAlur < Sequel::Model(:compte_alur)
  one_to_one :copropriete
  one_to_one :coproprietaire
  one_to_one :prestataire
end
