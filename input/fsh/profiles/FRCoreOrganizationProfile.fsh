Profile: FRCoreOrganizationProfile
Parent: Organization
Id: fr-core-organization
Title: "FR Core Organization Profile"
Description: """Profile of the Organization resource for France. This profile specifies the types of identifiers for organizations in France, and adds a number of French extensions. 
\r\nProfil de la ressource Organization pour la France. Ce profil spécifie les types d'identifiants pour l'organisation en France, et ajoute des extensions françaises."""

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-organization)

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    FRCoreOrganizationShortNameExtension named shortName 0..1 and
    FRCoreOrganizationDescriptionExtension named description 0..1 and
    http://hl7.org/fhir/StructureDefinition/organization-period named usePeriod 0..1
    
* identifier.use from IdentifierUse (required)
* identifier.type from FRCoreValueSetOrganizationIdentifierType (extensible)
* identifier.system 1..
* identifier.value 1..

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the identifier.system pattern"

* identifier contains idNatSt 0..1 and siren 0..* and siret 0..* and finess 0..* and adeliRang 0..* and rppsRang 0..*

* identifier[idNatSt] ^short = "Identifiant idNat_Struct délivré par une autorité d'enregistrement tel que défini dans l'Annexe Transverse Source des données métier pour les professionnels et les structures."
* identifier[idNatSt].use = #official
* identifier[idNatSt].type = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203#IDNST
* identifier[idNatSt].system = "urn:oid:1.2.250.1.71.4.2.2"
* identifier[idNatSt].value ^short = "Identification nationale de la structure préfixé : 0 + ADELI rang, 1 + Numéro FINESS Etablissement, 2 + Numéro SIREN, 3 + Numéro SIRET, 4 + RPPS rang ou identifiant technique de la structure."

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

* identifier[adeliRang] ^short = "Identifiant ADELI rang (9 chiffres ADELI + 2 chiffres RANG)"
* identifier[adeliRang].type = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203#INTRN
* identifier[adeliRang].system = "https://adelirang.esante.gouv.fr"

* identifier[rppsRang] ^short = "RPPS rang (11 chiffres RPPS + 2 chiffres RANG)"
* identifier[rppsRang].type = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203#INTRN
* identifier[rppsRang].system = "https://rppsrang.esante.gouv.fr"


* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "coding.system"
* type ^slicing.rules = #open

* type contains
    organizationType 0..1 and
    secteurActiviteRASS 0..1 and
    categorieEtablissementRASS 0..1

* type[organizationType] from FRCoreValueSetOrganizationType (required)
* type[organizationType].coding 1..1
* type[organizationType].coding.system 1..

* type[secteurActiviteRASS] from $JDV-J101-SecteurActivite-RASS (required)
* type[secteurActiviteRASS] ^short = "Secteurs d'activité des établissements avec la même activité dans le RASS"
* type[secteurActiviteRASS].coding 1..1
* type[secteurActiviteRASS].coding.system 1..

* type[categorieEtablissementRASS] from $JDV-J129-CategorieEtablissement-RASS (required)
* type[categorieEtablissementRASS] ^short = "Catégorie d'établissement du RASS"
* type[categorieEtablissementRASS].coding 1..1
* type[categorieEtablissementRASS].coding.system 1..

* telecom only FRCoreContactPointProfile
* address only FRCoreAddressProfile
* partOf only Reference(FRCoreOrganizationProfile)
* partOf.type from FRCoreValueSetOrganizationType (extensible)
* contact.telecom only FRCoreContactPointProfile
* contact.address only FRCoreAddressProfile