Sequel.migration do
  up do

    db = self

    create_table(:classes_comptables) do
      primary_key :id, :type=>:Bignum
      String :intitule, size: 250, null: false
      # String et non Numeric parce que certaines lignes comportent par exemple
      # '12-1' et puis '12-2'
      # de toutes façons pas de calcul sur ces données
      String :numero, null: false
    end

    create_table(:sous_classes_comptables) do
      primary_key :id, :type=>:Bignum
      foreign_key :classe_comptable_id, :classes_comptables, :index => true, null: false, :type=>:Bignum
      String :intitule, size: 250, null: false
      String :numero, null: false
    end

    create_table(:lignes_comptables) do
      primary_key :id, :type=>:Bignum
      foreign_key :sous_classe_comptable_id, :sous_classes_comptables, :index => true, null: false, :type=>:Bignum
      String :intitule, size: 250, null: false
      String :numero, null: false
    end
    
  end

  down do
    drop_table(:classes_comptables, :sous_classes_comptables, :lignes_comptables)
  end

end