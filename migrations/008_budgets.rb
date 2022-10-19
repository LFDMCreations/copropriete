Sequel.migration do
  
  up do

    db = self

    create_table(:budgets) do
      primary_key :id, :type=>:Bignum
      Date :debut_exercice, null: false, :default=>Sequel::CURRENT_TIMESTAMP
      Date :fin_exercice, null: false, :default=>Sequel::CURRENT_TIMESTAMP
      DateTime :created_at, null: false, :default=>Sequel::CURRENT_TIMESTAMP
    end

  end

  down do
    drop_table(:budgets)    
  end


end