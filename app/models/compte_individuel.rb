class CompteIndividuel < Sequel::Model(:comptes_individuels)
  many_to_one :coproprietaire
  many_to_one :exercice
  many_to_one :compte
end