CodeSystem: FRCoreCodeSystemReliabilityIdentity
Id: fr-core-cs-fiabilite-identite
Title: "FR Core CodeSystem Fiabilité Identité"
Description: "French Identity reliabilty codes"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"

* ^identifier.system = "http://terminology.hl7.org/CodeSystem/v2-tables"
* ^identifier.value = "urn:oid:2.16.840.1.113883.12.445"

* ^caseSensitive = true
* ^content = #complete
* #VIDE "Identité non encore qualifiée" "Identité non encore qualifiée"
* #PROV "Identité provisoire" "Identité provisoire"
* #VALI "Identité validée" "Identité validée"
* #DOUB "Doublon" "Doublon"
* #DESA "Identité désactivée" "Identité désactivée"
* #DPOT "Doublon potentiel" "Doublon potentiel"
* #DOUA "Doublon avéré" "Doublon avéré"
* #COLP "Collision potentielle" "Collision potentielle"
* #COLV "Collision avérée" "Collision avérée"
* #FILI "Filiation" "Filiation"
* #CACH "Identité cachée" "Identité cachée"
* #ANOM "Anonyme" "Anonyme"
* #IDVER "Identité vérifiée par le patient" "Identité vérifiée par le patient"
* #RECD "Identité reçue d'un autre domaine" "Identité reçue d'un autre domaine"
* #IDRA "Identité rapprochée dans un autre domaine" "Identité rapprochée dans un autre domaine"
* #USUR "Identité usurpée" "Identité usurpée"
* #HOMD "Homonyme détecté" "Homonyme détecté"
* #INVA "Identité invalidée" "Identité invalidée"
* #HOMA "Homonyme avéré (attribut d'identité homonyme)" "Homonyme avéré (attribut d'identité homonyme)"
* #FICT "Identité fictive (attribut d'identité fictive)" "Identité fictive (attribut d'identité fictive)"
* #DOUT "Identité douteuse (attribut d'identité douteuse)" "Identité douteuse (attribut d'identité douteuse)"

// SCS profile
* ^experimental = false