Sequel.migration do
  
  up do

    db = self

    create_table(:lots) do
      primary_key :id, :type=>:Bignum
      foreign_key :coproprietaire_id, :coproprietaires, :null=>false, :type=>:Bignum
      Fixnum :tantiemes, null: false
    end

  end

  down do
    drop_table(:lots)
  end

end