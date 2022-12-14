# frozen_string_literal: true

Sequel.migration do
  up do
    db = self

    create_table(:factures) do
      # art. L441-9 du code de commerce
      primary_key :id, type: :Bignum
      foreign_key :prestataire_id, :prestataires, index: true, null: false, type: :Bignum
      foreign_key :copropriete_id, :coproprietes, null: false, index: true, type: :Bignum
      String :service_denomination, size: 250, null: false
      String :service_quantite, size: 250, null: false
      Date :date_emission
      Date :date_prestation
      Date :date_limite_paiement
      # TOUJOURS multiplier le montant par 100
      # deux fois montants en raison des taux de TVA distincts
      Integer :acompte
      Integer :montant_ht_1, null: false
      Integer :taux_tva_1, null: false
      Integer :total_1, null: false
      Integer :montant_ht_2
      Integer :taux_tva_2
      Integer :total_2
      Integer :total_tcc, null: false
      Integer :reduction_prix
      FalseClass :payee, default: false
      String :commentaires, text: true
      DateTime :created_at, null: false, default: Sequel::CURRENT_TIMESTAMP
    end
  end

  down do
    drop_table(:factures)
  end
end
