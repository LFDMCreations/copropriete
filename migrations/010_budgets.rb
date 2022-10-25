# frozen_string_literal: true

Sequel.migration do
  up do
    db = self

    create_table(:budgets_generaux) do
      # c'est le budget prévisionnel sur la base duquel les charges sont appelés et
      # les factures payées.
      primary_key :id, type: :Bignum
      Date :debut_budget, null: false, default: Sequel::CURRENT_TIMESTAMP
      Date :fin_fin, null: false, default: Sequel::CURRENT_TIMESTAMP
      DateTime :created_at, null: false, default: Sequel::CURRENT_TIMESTAMP
    end

    create_table(:budgets_speciaux) do
      # c'est le budget prévisionnel sur la base duquel les charges sont appelés et
      # les factures payées.
      # ici : charges spéciales (cf p. 118 du guide ARC)
      primary_key :id, type: :Bignum
      Date :debut_budget, null: false, default: Sequel::CURRENT_TIMESTAMP
      Date :fin_fin, null: false, default: Sequel::CURRENT_TIMESTAMP
      DateTime :created_at, null: false, default: Sequel::CURRENT_TIMESTAMP
    end

    create_table(:budgets_travaux) do
      # c'est le budget prévisionnel sur la base duquel les charges sont appelés et
      # les factures payées.
      # ici : budget pour travaux (cf p. 119 du guide ARC)
      primary_key :id, type: :Bignum
      Date :debut_budget, null: false, default: Sequel::CURRENT_TIMESTAMP
      Date :fin_fin, null: false, default: Sequel::CURRENT_TIMESTAMP
      DateTime :created_at, null: false, default: Sequel::CURRENT_TIMESTAMP
    end
  end

  down do
    drop_table( :budgets_generaux,
                :budgets_speciaux,
                :budgets_travaux
    )
  end
end
