Sequel.migration do
  
  up do
    db = self
    
    # Cette table est utilisé dans `coproprietes` et dans  `coproprietaires`
    create_table(:adresses) do
      primary_key :id, :type=>:Bignum
      String :numero, size: 50, null: false
      String :voie, size: 50, null: false
      String :nom_voie, size: 250, null: false
      String :code_postale, size: 50, null: false
      String :pays, size: 250, null: false, default: 'France'      
      DateTime :created_at, :null=>false, :default=>Sequel::CURRENT_TIMESTAMP
    end

    create_table(:personnes_physiques) do
      primary_key :id, :type=>:Bignum
      String :prenom, size: 250
      String :nom, size: 250
      citext :email
      constraint :valid_email, :email=>/^[^,;@ \r\n]+@[^,@; \r\n]+\.[^,@; \r\n]+$/
      index :email, :unique=>true
      String :telephone, size: 50
      DateTime :created_at, :null=>false, :default=>Sequel::CURRENT_TIMESTAMP
    end

  end

  down do
    drop_table(:adresses)    
  end

end