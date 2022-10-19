Sequel.migration do
  
  up do
    
    db = self

    create_table(:lignes_budgets) do
      primary_key :id, :type=>:Bignum
      foreign_key :budget_id, :budgets, :index => true, null: false, :type=>:Bignum
      foreign_key :ligne_comptable_id, :lignes_comptables, :index => true, null: false, :type=>:Bignum
      String :intitule, size: 250, null: false
      Integer :montant, null: false
      DateTime :created_at, null: false, :default=>Sequel::CURRENT_TIMESTAMP
    end

  end

  down do
    
  end

end