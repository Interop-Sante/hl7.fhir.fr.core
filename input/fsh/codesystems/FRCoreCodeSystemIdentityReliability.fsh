CodeSystem: FRCoreCodeSystemReliabilityIdentity
Id: fr-core-cs-fiabilite-identite
Title: "FR Core CodeSystem Fiabilité Identité"
Description: "French Identity reliabilty codes"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"

* ^identifier.system = "http://terminology.hl7.org/CodeSystem/v2-tables"
* ^identifier.value = "urn:oid:2.16.840.1.113883.12.445"

* ^caseSensitive = true
* ^content = #complete
* #VIDE "Identité non encore qualifiée"
* #PROV "Identité provisoire"
* #VALI "Identité validée"
* #DOUB "Doublon"
* #DESA "Identité désactivée"
* #DPOT "Doublon potentiel"
* #DOUA "Doublon avéré"
* #COLP "Collision potentielle"
* #COLV "Collision avérée"
* #FILI "Filiation"
* #CACH "Identité cachée"
* #ANOM "Anonyme"
* #IDVER "Identité vérifiée par le patient"
* #RECD "Identité reçue d'un autre domaine"
* #IDRA "Identité rapprochée dans un autre domaine"
* #USUR "Identité usurpée"
* #HOMD "Homonyme détecté"
* #INVA "Identité invalidée"
* #HOMA "Homonyme avéré (attribut d'identité homonyme)"
* #FICT "Identité fictive (attribut d'identité fictive)"
* #DOUT "Identité douteuse (attribut d'identité douteuse)"

// SCS profile
* ^experimental = false