Sequel.migration do
  
  up do
    
    db = self

    create_table(:prestataires) do
      primary_key :id, :type=>:Bignum
      foreign_key :adresse_id, :adresses, :index => true, :type=>:Bignum
      foreign_key :personne_morale_id, :personnes_morales, :index => true, :type=>:Bignum
      foreign_key :personne_physique_id, :personnes_physiques, :index => true, :type=>:Bignum
      # exemple : "plombier" ou "serrurier"
      String :metier, size: 250
      DateTime :created_at, :null=>false, :default=>Sequel::CURRENT_TIMESTAMP
    end

    run 'ALTER TABLE prestataires ADD CONSTRAINT prestataire_physique_check CHECK (
      personne_morale_id IS NOT NULL OR personne_physique_id IS NOT NULL
      )'

  end

  down do
    drop_table(:prestas)
  end


end