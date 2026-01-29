Profile: FRCoreOrganizationEtablissementProfile
Parent: FRCoreOrganizationProfile
Id: fr-core-organization-etablissement
Title: "FR Core Organization Etablissement Profile"
Description: """Profil de la ressource Organization permettant de représenter des établissements sanitaires et sociaux."""


* extension contains
    FRCoreOrganizationSAECategoryExtension named sae 0..1 and
    FRCoreOrganizationRaisonSocialeExtension named raisonSociale 0..1

* identifier.use from IdentifierUse (required)
* identifier.type from FRCoreValueSetOrganizationIdentifierType (extensible)

* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[0].path = "system"
* identifier ^slicing.discriminator[1].type = #pattern
* identifier ^slicing.discriminator[1].path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the identifier.system pattern"

* identifier contains
    idNatSt 0..*    and
    siren 0..*      and
    siret 0..*      and
    finess 0..*     and
    rppsRang 0..*
    

* identifier[idNatSt] ^short = "Identifiant national de structure, à privilégier. L'idNatSt ne doit pas être construit, il peut être trouvé via l'API Annuaire Santé."
* identifier[idNatSt] ^definition = "Identifiant national de structure unique délivré par une autorité d'enregistrement tel que défini dans l'Annexe Transverse Source des données métier pour les professionnels et les structures. L'idNatSt ne doit pas être construit, pour trouver l'identifiant d'une structure, il suffit de faire une requête via l'API Annuaire Santé. Il s'agit de l'identifiant national à privilégier."
* identifier[idNatSt].use 1..
* identifier[idNatSt].use = #official
* identifier[idNatSt].type 1..
* identifier[idNatSt].type = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203#IDNST
* identifier[idNatSt].system 1..
* identifier[idNatSt].system = "urn:oid:1.2.250.1.71.4.2.2"
* identifier[idNatSt].value ^short = "Identifiant national de la structure. Cet identifiant ne doit pas être construit ni interprété, la donnée peut être trouvée dans l'annuaire santé."
* identifier[idNatSt].value ^definition = "L'idNatStruct est construit, selon le cas, de cette manière : 0 + ADELI rang, 1 + Numéro FINESS Etablissement, 2 + Numéro SIREN, 3 + Numéro SIRET, 4 + RPPS rang ou identifiant technique de la structure"
* identifier[idNatSt].value 1..

* identifier[siren] ^short = "Identifiant SIREN (9 chiffres)"
* identifier[siren].type = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203#SIREN
* identifier[siren].system = "https://sirene.fr"

* identifier[siret] ^short = "Identifiant SIRET (14 chiffres)"
* identifier[siret].type = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203#SIRET
* identifier[siret].system = "https://sirene.fr"

* identifier[finess] ^short = "Identifiant FINESS Entité Géographique (EG) ou Entité Juridique (EJ)"
* identifier[finess].type.coding.code ^short = "FINEJ | FINEG"
* identifier[finess].type.coding.system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
* identifier[finess].system = "https://finess.esante.gouv.fr"

* identifier[rppsRang] ^short = "RPPS rang (11 chiffres RPPS + 2 chiffres RANG)"
* identifier[rppsRang].type = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203#INTRN
* identifier[rppsRang].system = "https://rppsrang.esante.gouv.fr"


* type from FRCoreValueSetOrganizationEtablissementType (example)

* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "$this"
* type ^slicing.rules = #open


// Organization.name
* name MS
* name ^short = "Raison sociale de la structure"
