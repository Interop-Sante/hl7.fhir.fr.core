ValueSet: FRCoreValueSetIdentityReliabilityINSStatus
Id: fr-core-vs-identity-reliability-ins-status
Title: "FR Core ValueSet Identity Reliability INS Status"
Description: "Les 4 statuts de confiance de l'identité définis par le RNIV [EXI SI 07]. Ces statuts sont exclusifs les uns des autres.\n\n| Code | Statut RNIV | INSi (I) | Contrôle (C) |\n|---|---|---|---|\n| PROV | Identité provisoire | − | − |\n| RECUP | Identité récupérée | + | − |\n| VALI | Identité validée | − | + |\n| QUAL | Identité qualifiée | + | + |"
* insert SetValueset

* fr-core-cs-v2-0445#PROV "Identité provisoire"
* fr-core-cs-v2-0445#RECUP "Identité récupérée"
* fr-core-cs-v2-0445#VALI "Identité validée"
* fr-core-cs-v2-0445#QUAL "Identité qualifiée"

// SVS profile
* ^experimental = false
