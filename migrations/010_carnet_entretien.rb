Sequel.migration do
  
  up do
    
    create_table(:carnets_entretiens) do
      
      primary_key :id, type: :Bignum
      foreign_key :copropriete_id, :coproprietes, index: true, null: false, unique: true, type: :Bignum
      DateTime :created_at, null: false, default: Sequel::CURRENT_TIMESTAMP

    end

  end

end
