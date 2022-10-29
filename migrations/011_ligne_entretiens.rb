Sequel.migration do
  
  up do
    
    create_table(:lignes_entretiens) do
      
      primary_key :id, type: :Bignum
      foreign_key :carnet_entretien_id, :carnets_entretiens, index: true, null: false, type: :Bignum
      DateTime :created_at, null: false, default: Sequel::CURRENT_TIMESTAMP

    end

  end

end
