# frozen_string_literal: true

ClasseComptable.insert(intitule: 'Provisions, avances, subventions et emprunts', numero: '1')
ClasseComptable.insert(intitule: 'Copropriétaires et tiers', numero: '4')
ClasseComptable.insert(intitule: 'Comptes financiers', numero: '5')
ClasseComptable.insert(intitule: 'Comptes de charges', numero: '6')
ClasseComptable.insert(intitule: 'Comptes de produits', numero: '7')
SousClasseComptable.insert(
  classe_comptable_id: ClasseComptable.where(intitule: 'Provisions, avances, subventions et emprunts').get(:id), intitule: 'Provisions et avances', numero: '10'
)
SousClasseComptable.insert(
  classe_comptable_id: ClasseComptable.where(intitule: 'Provisions, avances, subventions et emprunts').get(:id), intitule: 'Solde en attente sur travaux et opérations exceptionnelles', numero: '12'
)
SousClasseComptable.insert(
  classe_comptable_id: ClasseComptable.where(intitule: 'Provisions, avances, subventions et emprunts').get(:id), intitule: 'Travaux décidés par l\'assemblée générale', numero: '12-1'
)
SousClasseComptable.insert(
  classe_comptable_id: ClasseComptable.where(intitule: 'Provisions, avances, subventions et emprunts').get(:id), intitule: 'Travaux délégués au conseil syndical en application de l\'article 21-1 de la loi susvisée', numero: '12-2'
)
SousClasseComptable.insert(
  classe_comptable_id: ClasseComptable.where(intitule: 'Provisions, avances, subventions et emprunts').get(:id), intitule: 'Subventions', numero: '13'
)
SousClasseComptable.insert(
  classe_comptable_id: ClasseComptable.where(intitule: 'Copropriétaires et tiers').get(:id), intitule: 'Fournisseurs', numero: '40'
)
SousClasseComptable.insert(
  classe_comptable_id: ClasseComptable.where(intitule: 'Copropriétaires et tiers').get(:id), intitule: 'Personnel', numero: '42'
)
SousClasseComptable.insert(
  classe_comptable_id: ClasseComptable.where(intitule: 'Copropriétaires et tiers').get(:id), intitule: 'Sécurité sociale et autres organismes sociaux', numero: '43'
)
SousClasseComptable.insert(
  classe_comptable_id: ClasseComptable.where(intitule: 'Copropriétaires et tiers').get(:id), intitule: 'Etat et collectivités territoriales', numero: '44'
)
SousClasseComptable.insert(
  classe_comptable_id: ClasseComptable.where(intitule: 'Copropriétaires et tiers').get(:id), intitule: 'Collectivité des copropriétaires', numero: '45'
)
SousClasseComptable.insert(
  classe_comptable_id: ClasseComptable.where(intitule: 'Copropriétaires et tiers').get(:id), intitule: 'Débiteurs et créditeurs divers', numero: '46'
)
SousClasseComptable.insert(
  classe_comptable_id: ClasseComptable.where(intitule: 'Copropriétaires et tiers').get(:id), intitule: 'Compte d\'attente', numero: '47'
)
SousClasseComptable.insert(
  classe_comptable_id: ClasseComptable.where(intitule: 'Copropriétaires et tiers').get(:id), intitule: 'Compte de régularisation', numero: '48'
)
SousClasseComptable.insert(
  classe_comptable_id: ClasseComptable.where(intitule: 'Copropriétaires et tiers').get(:id), intitule: 'Dépréciation des comptes de tiers', numero: '49'
)
SousClasseComptable.insert(classe_comptable_id: ClasseComptable.where(intitule: 'Comptes financiers').get(:id),
                           intitule: 'Fonds placés', numero: '50')
SousClasseComptable.insert(classe_comptable_id: ClasseComptable.where(intitule: 'Comptes financiers').get(:id),
                           intitule: 'Banques, ou fonds disponibles en banque pour le syndicat', numero: '51')
SousClasseComptable.insert(classe_comptable_id: ClasseComptable.where(intitule: 'Comptes financiers').get(:id),
                           intitule: 'Caisse', numero: '53')
SousClasseComptable.insert(classe_comptable_id: ClasseComptable.where(intitule: 'Comptes de charges').get(:id),
                           intitule: 'Achats de matières et fournitures', numero: '60')
SousClasseComptable.insert(classe_comptable_id: ClasseComptable.where(intitule: 'Comptes de charges').get(:id),
                           intitule: 'Services extérieurs', numero: '61')
SousClasseComptable.insert(classe_comptable_id: ClasseComptable.where(intitule: 'Comptes de charges').get(:id),
                           intitule: 'Frais d\'administration et honoraires', numero: '62')
SousClasseComptable.insert(classe_comptable_id: ClasseComptable.where(intitule: 'Comptes de charges').get(:id),
                           intitule: 'Impôts - taxes et versements assimilés', numero: '63')
SousClasseComptable.insert(classe_comptable_id: ClasseComptable.where(intitule: 'Comptes de charges').get(:id),
                           intitule: 'Frais de personnel', numero: '64')
SousClasseComptable.insert(classe_comptable_id: ClasseComptable.where(intitule: 'Comptes de charges').get(:id),
                           intitule: 'Montant spécifique alloué au conseil syndical, au sein du budget prévisionnel, pour l\'exercice de sa délégation de pouvoirs en application de l\'article 21-1', numero: '65')
SousClasseComptable.insert(classe_comptable_id: ClasseComptable.where(intitule: 'Comptes de charges').get(:id),
                           intitule: 'Charges financières des emprunts, agios ou autres', numero: '66')
SousClasseComptable.insert(classe_comptable_id: ClasseComptable.where(intitule: 'Comptes de charges').get(:id),
                           intitule: 'Charges pour travaux et opérations exceptionnelles', numero: '67')
SousClasseComptable.insert(classe_comptable_id: ClasseComptable.where(intitule: 'Comptes de charges').get(:id),
                           intitule: 'Dotations aux dépréciations sur créances douteuses', numero: '68')
SousClasseComptable.insert(classe_comptable_id: ClasseComptable.where(intitule: 'Comptes de produits').get(:id),
                           intitule: 'Appels de fonds', numero: '70')
SousClasseComptable.insert(classe_comptable_id: ClasseComptable.where(intitule: 'Comptes de produits').get(:id),
                           intitule: 'Autres produits', numero: '71')
SousClasseComptable.insert(classe_comptable_id: ClasseComptable.where(intitule: 'Comptes de produits').get(:id),
                           intitule: 'Reprises de dépréciations de créances douteuses', numero: '78')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Provisions et avances').get(:id),
              intitule: 'Provisions pour travaux décidés', numero: '102')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Provisions et avances').get(:id),
              intitule: 'Avances', numero: '103')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Provisions et avances').get(:id),
              intitule: 'Avances de trésorerie', numero: '1031')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Provisions et avances').get(:id),
              intitule: 'Autres avances', numero: '1033')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Provisions et avances').get(:id),
              intitule: 'Fonds de travaux', numero: '105')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Provisions et avances').get(:id),
              intitule: 'Provisions pour travaux au titre de la délégation de pouvoirs accordée au conseil syndical en application de l\'article 21-1 de la loi susvisée', numero: '106')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Subventions').get(:id),
              intitule: 'Subventions accordées en instance de versement', numero: '130')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Fournisseurs').get(:id),
              intitule: 'Factures parvenues', numero: '401')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Fournisseurs').get(:id),
              intitule: 'Factures non parvenues', numero: '408')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Fournisseurs').get(:id),
              intitule: 'Fournisseurs débiteurs', numero: '409')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Personnel').get(:id),
              intitule: 'Rémunérations dues', numero: '421')
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Sécurité sociale et autres organismes sociaux').get(:id), intitule: 'Sécurité sociale', numero: '431'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Sécurité sociale et autres organismes sociaux').get(:id), intitule: 'Autres organismes sociaux', numero: '432'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Etat et collectivités territoriales').get(:id), intitule: 'Etat et autres organismes - subventions à recevoir', numero: '441'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Etat et collectivités territoriales').get(:id), intitule: 'Etat - impôts et versements assimilés', numero: '442'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Etat et collectivités territoriales').get(:id), intitule: 'Collectivités territoriales - aides', numero: '443'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Collectivité des copropriétaires').get(:id), intitule: 'Copropriétaire individualisé', numero: '450'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Collectivité des copropriétaires').get(:id), intitule: 'Copropriétaire - budget prévisionnel', numero: '450-1'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Collectivité des copropriétaires').get(:id), intitule: 'Copropriétaire - travaux de l\'article 14-2 de la loi susvisée et opérations exceptionnelles', numero: '450-2'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Collectivité des copropriétaires').get(:id), intitule: 'Copropriétaire - avances', numero: '450-3'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Collectivité des copropriétaires').get(:id), intitule: 'Copropriétaire - emprunts', numero: '450-4'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Collectivité des copropriétaires').get(:id), intitule: 'Copropriétaire-fonds de travaux', numero: '450-5'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Collectivité des copropriétaires').get(:id), intitule: 'Copropriétaire - créances douteuses', numero: '459'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Débiteurs et créditeurs divers').get(:id), intitule: 'Débiteurs divers', numero: '461'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Débiteurs et créditeurs divers').get(:id), intitule: 'Créditeurs divers', numero: '462'
)
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Compte d\'attente').get(:id),
              intitule: 'Compte en attente d\'imputation débiteur', numero: '471')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Compte d\'attente').get(:id),
              intitule: 'Compte en attente d\'imputation créditeur', numero: '472')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Compte de régularisation').get(:id),
              intitule: 'Charges payées d\'avance', numero: '486')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Compte de régularisation').get(:id),
              intitule: 'Produits encaissés d\'avance', numero: '487')
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Dépréciation des comptes de tiers').get(:id), intitule: 'Copropriétaires', numero: '491'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Dépréciation des comptes de tiers').get(:id), intitule: 'Personnes autres que les copropriétaires', numero: '492'
)
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Fonds placés').get(:id),
              intitule: 'Compte à terme', numero: '501')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Fonds placés').get(:id),
              intitule: 'Autre compte', numero: '502')
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Banques, ou fonds disponibles en banque pour le syndicat').get(:id), intitule: 'Banques', numero: '512'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Banques, ou fonds disponibles en banque pour le syndicat').get(:id), intitule: 'Chèques postaux', numero: '514'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Achats de matières et fournitures').get(:id), intitule: 'Eau', numero: '601'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Achats de matières et fournitures').get(:id), intitule: 'Electricité', numero: '602'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Achats de matières et fournitures').get(:id), intitule: 'Chauffage, énergie et combustibles', numero: '603'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Achats de matières et fournitures').get(:id), intitule: 'Achats produits d\' entretien et petits équipements', numero: '604'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Achats de matières et fournitures').get(:id), intitule: 'Matériel', numero: '605'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Achats de matières et fournitures').get(:id), intitule: 'Fournitures', numero: '606'
)
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Services extérieurs').get(:id),
              intitule: 'Nettoyage des locaux', numero: '611')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Services extérieurs').get(:id),
              intitule: 'Locations immobilières', numero: '612')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Services extérieurs').get(:id),
              intitule: 'Locations mobilières', numero: '613')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Services extérieurs').get(:id),
              intitule: 'Contrats de maintenance', numero: '614')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Services extérieurs').get(:id),
              intitule: 'Entretien et petites réparations', numero: '615')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Services extérieurs').get(:id),
              intitule: 'Primes d\'assurances', numero: '616')
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Frais d\'administration et honoraires').get(:id), intitule: 'Rémunérations du syndic sur gestion copropriété', numero: '621'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Frais d\'administration et honoraires').get(:id), intitule: 'Rémunération du syndic', numero: '6211'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Frais d\'administration et honoraires').get(:id), intitule: 'Débours', numero: '6212'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Frais d\'administration et honoraires').get(:id), intitule: 'Frais postaux', numero: '6213'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Frais d\'administration et honoraires').get(:id), intitule: 'Autres honoraires du syndic', numero: '622'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Frais d\'administration et honoraires').get(:id), intitule: 'Honoraires travaux', numero: '6221'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Frais d\'administration et honoraires').get(:id), intitule: 'Prestations particulières', numero: '6222'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Frais d\'administration et honoraires').get(:id), intitule: 'Autres honoraires', numero: '6223'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Frais d\'administration et honoraires').get(:id), intitule: 'Rémunérations de tiers intervenants', numero: '623'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Frais d\'administration et honoraires').get(:id), intitule: 'Frais du conseil syndical', numero: '624'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Impôts - taxes et versements assimilés').get(:id), intitule: 'Taxe de balayage', numero: '632'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Impôts - taxes et versements assimilés').get(:id), intitule: 'Taxe foncière', numero: '633'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Impôts - taxes et versements assimilés').get(:id), intitule: 'Autres impôts et taxes', numero: '634'
)
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Frais de personnel').get(:id),
              intitule: 'Salaires', numero: '641')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Frais de personnel').get(:id),
              intitule: 'Charges sociales et organismes sociaux', numero: '642')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Frais de personnel').get(:id),
              intitule: 'Taxe sur les salaires', numero: '643')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Frais de personnel').get(:id),
              intitule: 'Autres (médecine du travail, mutuelles, etc.)', numero: '644')
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Charges financières des emprunts, agios ou autres').get(:id), intitule: 'Remboursement d\'annuités d\'emprunt', numero: '661'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Charges financières des emprunts, agios ou autres').get(:id), intitule: 'Autres charges financières et agios', numero: '662'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Charges pour travaux et opérations exceptionnelles').get(:id), intitule: 'Travaux décidés par l\'assemblée générale', numero: '671'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Charges pour travaux et opérations exceptionnelles').get(:id), intitule: 'Travaux urgents', numero: '672'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Charges pour travaux et opérations exceptionnelles').get(:id), intitule: 'Etudes techniques, diagnostic, consultation', numero: '673'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Charges pour travaux et opérations exceptionnelles').get(:id), intitule: 'Travaux délégués au conseil syndical en application de l\'article 21-1 de la loi susvisée', numero: '674'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Charges pour travaux et opérations exceptionnelles').get(:id), intitule: 'Pertes sur créances irrécouvrables', numero: '677'
)
Compte.insert(
  sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Charges pour travaux et opérations exceptionnelles').get(:id), intitule: 'Charges exceptionnelles', numero: '678'
)
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Appels de fonds').get(:id),
              intitule: 'Provisions sur opérations courantes', numero: '701')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Appels de fonds').get(:id),
              intitule: 'Provisions sur travaux du I de l\'article 14-2 et opérations exceptionnelles', numero: '702')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Appels de fonds').get(:id),
              intitule: 'Avances', numero: '703')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Appels de fonds').get(:id),
              intitule: 'Remboursements d\'annuités d\'emprunts', numero: '704')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Appels de fonds').get(:id),
              intitule: 'Affectation du fonds de travaux', numero: '705')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Appels de fonds').get(:id),
              intitule: 'Provisions au titre de la délégation de pouvoirs accordée au conseil syndical en application de l\'article 21-1 de la loi susvisée', numero: '706')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Appels de fonds').get(:id),
              intitule: 'Provisions sur opérations courantes', numero: '706-1')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Appels de fonds').get(:id),
              intitule: 'Provisions sur travaux et opérations exceptionnelles', numero: '706-2')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Autres produits').get(:id),
              intitule: 'Subventions', numero: '711')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Autres produits').get(:id),
              intitule: 'Emprunts', numero: '712')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Autres produits').get(:id),
              intitule: 'Indemnités d\'assurances', numero: '713')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Autres produits').get(:id),
              intitule: 'Produits divers (dont intérêts légaux dus par les copropriétaires)', numero: '714')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Autres produits').get(:id),
              intitule: 'Produits financiers', numero: '716')
Compte.insert(sous_classe_comptable_id: SousClasseComptable.where(intitule: 'Autres produits').get(:id),
              intitule: 'Produits exceptionnels', numero: '718')
