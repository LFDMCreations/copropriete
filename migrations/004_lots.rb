Sequel.migration do
  up do
    db = self

    create_table(:lots) do
      primary_key :id, type: :Bignum
      # a priori copropriete_id pas nécessaire, mais ça peut faciliter les requetes
      foreign_key :copropriete_id, :coproprietes, index: true, type: :Bignum
      foreign_key :coproprietaire_id, :coproprietaires, null: false, index: true, type: :Bignum
      Fixnum :tantiemes, null: false
      # numero de lot dans le règlement. Sert à l'identification du lot,
      # non à un calcul quelconque. peut être vide (si pas dans règlement)
      String :numero, size: 50
      # par exemple : '5e ét droite'
      String :localisation, size: 50, null: false
      String :commentaire, text: true
      DateTime :created_at, null: false, default: Sequel::CURRENT_TIMESTAMP
    end
  end

  down do
    drop_table(:lots)
  end
end
