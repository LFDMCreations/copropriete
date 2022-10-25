# frozen_string_literal: true

Sequel.migration do
  up do
    db = self

    create_table(:comptes_individuels) do
      primary_key :id, type: :Bignum
      foreign_key :coproprietaire_id, :coproprietaires, null: false, index: true, type: :Bignum
      foreign_key :exercice_id, :exercices, index: true, null: false, type: :Bignum
      String :intitule
    end
  end

  down do
  end
end
