Sequel.migration do
  
  up do
    
    create_table(:carnets_entretiens) do
      
      primary_key :id, type: :Bignum
      foreign_key :copropriete_id, :coproprietes, index: true, null: false, type: :Bignum
      foreign_key :assurance_id, :assurances, index: true, null: false, type: :Bignum

    end

  end

end
