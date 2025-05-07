Alias: $TRE-R87-TypeCarte = https://mos.esante.gouv.fr/NOS/TRE_R87-TypeCarte/FHIR/TRE-R87-TypeCarte
Alias: $TRE-R256-TypeMessagerie = https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie
Alias: $TRE-R257-TypeBAL = https://mos.esante.gouv.fr/NOS/TRE_R257-TypeBAL/FHIR/TRE-R257-TypeBAL
Alias: $TRE-R14-TypeDiplome = https://mos.esante.gouv.fr/NOS/TRE_R14-TypeDiplome/FHIR/TRE-R14-TypeDiplome
Alias: $TRE-R48-DiplomeEtatFrancais = https://mos.esante.gouv.fr/NOS/TRE_R48-DiplomeEtatFrancais/FHIR/TRE-R48-DiplomeEtatFrancais
Alias: $TRE-R09-CategorieProfessionnelle = https://mos.esante.gouv.fr/NOS/TRE_R09-CategorieProfessionnelle/FHIR/TRE-R09-CategorieProfessionnelle
Alias: $TRE-G15-ProfessionSante = https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante

Alias: $TRE-R22-GenreActivite = https://mos.esante.gouv.fr/NOS/TRE_R22-GenreActivite/FHIR/TRE-R22-GenreActivite
Alias: $TRE-R23-ModeExercice = https://mos.esante.gouv.fr/NOS/TRE_R23-ModeExercice/FHIR/TRE-R23-ModeExercice
Alias: $TRE-R21-Fonction = https://mos.esante.gouv.fr/NOS/TRE_R21-Fonction/FHIR/TRE-R21-Fonction
Alias: $TRE-G05-SousSectionTableauCNOP = https://mos.esante.gouv.fr/NOS/TRE_G05-SousSectionTableauCNOP/FHIR/TRE-G05-SousSectionTableauCNOP

Alias: $TRE-R02-SecteurActivite = https://mos.esante.gouv.fr/NOS/TRE_R02-SecteurActivite/FHIR/TRE-R02-SecteurActivite

Alias: $fr-core-cs-v2-0203 = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203
Alias: $fr-core-cs-v2-3307 = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307

Instance: practitioner-example
InstanceOf: FRCorePractitionerProfile
Usage: #inline
* meta.lastUpdated = "2025-04-28T18:19:26.335+02:00"
* meta.source = "https://annuaire.sante.fr"
* language = #fr
* extension.url = "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-smartcard"
* extension.extension[0].url = "type"
* extension.extension[=].valueCodeableConcept = $TRE-R87-TypeCarte#CPS
* extension.extension[+].url = "number"
* extension.extension[=].valueString = "3100345668"
* extension.extension[+].url = "period"
* extension.extension[=].valuePeriod.start = "2024-02-21"
* extension.extension[=].valuePeriod.end = "2027-02-21"
* identifier[0].use = #official
* identifier[=].type = $fr-core-cs-v2-0203#IDNPS
* identifier[=].system = "urn:oid:1.2.250.1.71.4.2.1"
* identifier[=].value = "810101201234"
* identifier[+].use = #official
* identifier[=].type = $fr-core-cs-v2-0203#RPPS
* identifier[=].system = "https://rpps.esante.gouv.fr"
* identifier[=].value = "10101201234"
* active = true
* name.text = "Leclerc Sophie"
* name.family = "Leclerc"
* name.given = "Sophie"
* name.prefix = "MME"
* name.suffix = "DR"
* telecom.extension[0].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point-email-type"
* telecom.extension[=].valueCoding = $TRE-R256-TypeMessagerie#MSSANTE "MSSANTE"
* telecom.extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-mailbox-mss-metadata"
* telecom.extension[=].extension[0].url = "type"
* telecom.extension[=].extension[=].valueCodeableConcept = $TRE-R257-TypeBAL#PER
* telecom.extension[=].extension[+].url = "digitization"
* telecom.extension[=].extension[=].valueBoolean = false
* telecom.system = #email
* telecom.value = "sophie.leclerc@mssante.fr"
* telecom.use = #work
* qualification[0].code.coding[0] = $TRE-R14-TypeDiplome#DE
* qualification[=].code.coding[+] = $TRE-R48-DiplomeEtatFrancais#DE11
* qualification[+].code.coding[0] = $TRE-R09-CategorieProfessionnelle#C
* qualification[=].code.coding[+] = $TRE-G15-ProfessionSante#70

Instance: practitionerrole-example
InstanceOf: FRCorePractitionerRoleProfile
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2025-04-28T18:19:34.908+02:00"
* meta.source = "https://annuaire.sante.fr"
* language = #fr
* identifier.use = #official
* identifier.system = "https://rpps.esante.gouv.fr"
* identifier.value = "1011848351"
* active = true
* practitioner = Reference(practitioner-example)
* organization = Reference(org-example)
* code[0] = $TRE-R22-GenreActivite#GENR01
* code[+] = $TRE-R23-ModeExercice#L
* code[+] = $TRE-R21-Fonction#FON-05


Instance: org-example
InstanceOf: FRCoreOrganizationProfile
Usage: #example
* meta.extension.url = "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-data-trace"
* meta.extension.extension.url = "systeme-information"
* meta.extension.extension.valueCode = #CG
* meta.versionId = "1"
* meta.lastUpdated = "2025-04-28T19:35:45.507+02:00"
* meta.source = "https://annuaire.sante.fr"
* meta.profile[0] = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"
* meta.profile[+] = "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-organization"
* language = #fr
* identifier[0].use = #official
* identifier[=].type = $fr-core-cs-v2-0203#IDNST
* identifier[=].system = "urn:oid:1.2.250.1.71.4.2.2"
* identifier[=].value = "2264403106"
* identifier[+].use = #official
* identifier[=].type = $fr-core-cs-v2-0203#SIREN
* identifier[=].system = "https://sirene.fr"
* identifier[=].value = "264403106"
* active = true
* type[0].extension.url = "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-types"
* type[=].extension.valueCode = #organizationType
* type[=] = $fr-core-cs-v2-3307#LEGAL-ENTITY
* type[+].extension.url = "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-types"
* type[=].extension.valueCode = #secteurActiviteRASS
* type[=] = $TRE-R02-SecteurActivite#SA43
* name = "HOPITAL INTERCOMMUNAL DE LA PRESQU'ILE G"