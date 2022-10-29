Sequel.migration do

  up do
    create_table(:prestataires) do
      primary_key :id, type: :Bignum
      foreign_key :personne_morale_id, :personnes_morales, index: true, type: :Bignum
      foreign_key :personne_physique_id, :personnes_physiques, index: true, type: :Bignum
      # exemple : "plombier" ou "serrurier"
      String :metier, size: 250
      DateTime :created_at, null: false, default: Sequel::CURRENT_TIMESTAMP
    end

    run 'ALTER TABLE prestataires ADD CONSTRAINT prestataire_physique_check CHECK (
      personne_morale_id IS NOT NULL OR personne_physique_id IS NOT NULL
      )'

    create_join_table(copropriete_id: :coproprietes, prestataire_id: :prestataires)

  end

  down do
    drop_table(:prestataires)
  end
end
