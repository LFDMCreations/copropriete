# frozen_string_literal: true

Sequel.migration do
  up do
    db = self

    create_table(:exercices) do
      primary_key :id, type: :Bignum
      Date :debut_exercice, null: false
      Date :fin_exercice, null: false
      DateTime :created_at, null: false, default: Sequel::CURRENT_TIMESTAMP
    end
  end

  down do
    drop_table(:exercices)
  end
end
