Sequel.migration do
  
  up do
    
    db = self

    create_table(:ecritures) do
      primary_key :id, :type=>:Bignum
      foreign_key :account_id, :accounts, :index => true, null: false, :type=>:Bignum
      foreign_key :ligne_comptable_id, :lignes_comptables, :index => true, null: false, :type=>:Bignum
      foreign_key :facture, :facture_id, null: false, :index => true, :type=>:Bignum
      # les montants doivent être multipliés par 100 avant enregistrement en DB:
      Integer :montant, null: false
      String :intitule, size: 250, null: false, default: 'à renseigner'
      FalseClass :secret, null: false, default: false
      Date :date_de_valeur, null: false, :default=>Sequel::CURRENT_TIMESTAMP
      DateTime :created_at, null: false, :default=>Sequel::CURRENT_TIMESTAMP
    end    

  end

  down do
    drop_table(:ecritures)
  end

end
