Sequel.migration do

  up do
    create_table(:coproprietes) do
      primary_key :id, type: :Bignum
      Fixnum :tantiemes, null: false, default: 1000
      String :immatriculation
      DateTime :reglement_date, null: false
      String :commentaire, text: true
      DateTime :created_at, null: false, default: Sequel::CURRENT_TIMESTAMP
    end
  end

  down do
    drop_table(:banques, :coproprietes)
  end

end
