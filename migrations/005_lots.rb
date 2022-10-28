# frozen_string_literal: true

Sequel.migration do
  up do
    db = self

    create_table(:lots) do
      primary_key :id, type: :Bignum
      # a priori copropriete_id pas nécessaire, mais ça peut faciliter les requetes
      foreign_key :copropriete_id, :coproprietes, index: true, type: :Bignum
      foreign_key :coproprietaire_id, :coproprietaires, null: false, index: true, type: :Bignum
      Fixnum :tantiemes, null: false
    end
  end

  down do
    drop_table(:lots)
  end
end
