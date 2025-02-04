Profile: FRCorePractitionerProfile
Parent: Practitioner
Id: fr-core-practitioner
Title: "FR Core Practitioner Profile"
Description: """Profil de la ressource Practitionner pour la France."""

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains fr-canonical 0..1
* meta.profile[fr-canonical] = Canonical(fr-core-practitioner)

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    fr-core-practitioner-specialty named specialty 0..1
    

* identifier.type from FRCoreValueSetPractitionerIdentifierType (extensible)
* identifier.type.coding.system ^example[0].label = "CodeSystem HL7v2 (PAM) pour un type d'identifiant PS"
* identifier.type.coding.system ^example[=].valueUri = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.type.coding.system ^example[+].label = "CodeSystem ANS pour un type d'identifiant d'un employé dans une structure"
* identifier.type.coding.system ^example[=].valueUri = "https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne"

* identifier.system ^definition = "Establishes the namespace for the value - that is, a OID that describes a set values that are unique.\r\nthe namespace for the practitioner identifier value is fixed in France.\r\nPour un PS identifié à partir de sa carte CPS, OID = 1.2.250.1.71.4.2.1\r\nPour un employé identifié au sein de sa structure, OID de l'établissement, branche de gestion des employés ou http://hopitalTest.fr/fhir/namingsystem/employes"


* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the identifier.system pattern"

* identifier contains idNatPs 0..1 and rpps 0..*

// Identifiant national des professionels de santé
* identifier[idNatPs] ^short = "Identifiant national unique du professionnel de santé"
* identifier[idNatPs].type 1..
* identifier[idNatPs].type = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203#IDNPS
* identifier[idNatPs].system 1..
* identifier[idNatPs].system = "urn:oid:1.2.250.1.71.4.2.1"
* identifier[idNatPs].value 1..
* identifier[idNatPs].value ^short = "Identifiant national unique du PS. Cet identifiant ne doit pas être construit, la donnée peut être trouvée dans l'annuaire santé, sur ProSantéConnect ou dans la carte CPx. Pour plus d'informations, cf Annexe Transverse – Source des données métier pour les professionnels et les structures du CI-SIS."
* identifier[idNatPs].value ^description = "Cet identifiant est préfixé selon source de provenance de l'identifiant. Ces préfixes (1, 3, 4, 5, 6) proviennent du system : https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne."

// Identifiant du Répertoire Partagé des Professionnels intervenant dans le système de Santé (RPPS). Celui-ci peut aussi être inclus dans l'idNatPs.
* identifier[rpps] ^short = "Numéro RPPS (11 chiffres)"
* identifier[rpps].type 1..
* identifier[rpps].type = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203#RPPS
* identifier[rpps].system 1..
* identifier[rpps].system = "https://rpps.esante.gouv.fr"
* identifier[rpps].value 1..

* name only FRCoreHumanNameProfile
* telecom only FRCoreContactPointProfile
* address only FRCoreAddressProfile

* qualification ^short = "Qualifications obtained by training and certification | Diplômes. Les différents diplômes sont : les diplômes d'état français, les commissions de qualification, les diplômes d'études spécialisées, les DESC groupe 1 et 2, les capacités, les diplômes d'un pays de l'EEE, les diplômes d'université (DU) ou Inter-Universitaire, les certificats d'étude spéciale, les attestations, les diplômes européens d'études spécialisées, les diplômes de 2ème cycle non qualifiant et les autres types de diplômes. Pour plus d'informations, consulter le jeu de valeurs associé."



// ###########
// # DIPLOME #
// ###########

* qualification ^slicing.discriminator.type = #value
* qualification ^slicing.discriminator.path = "code.coding"
* qualification ^slicing.rules = #open
* qualification contains degree 0..*


* qualification[degree] ^short = "Diplôme et type de diplôme, par exemple : DE, DES, CES, etc. (typeDiplome)"

* qualification[degree].code.coding ^slicing.discriminator.type = #value
* qualification[degree].code.coding ^slicing.discriminator.path = "$this"
* qualification[degree].code.coding ^slicing.rules = #closed

* qualification[degree].code.coding contains degreeType 0..1 and degree 0..1 

// Slice typeDiplome
* qualification[degree].code.coding[degree] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification[degree].code.coding[degreeType] from $JDV-J81-TypeDiplome-RASS (required)




// ##############
// # PROFESSION #
// ##############

* qualification contains exercicePro 0..1


* qualification[exercicePro] ^short = "exercicePro : exercice professionnel décrivant la profession exercée, l'identité d'exercice d'un professionnel et le cadre de son exercice (civil, militaire, etc.)." 
* qualification[exercicePro].code.coding ^slicing.discriminator.type = #value
* qualification[exercicePro].code.coding ^slicing.discriminator.path = "$this"
* qualification[exercicePro].code.coding ^slicing.rules = #closed

* qualification[exercicePro].code.coding contains 
    categorieProfession 0..1 and
	profession 0..1

// Slice 1 : Catégorie professionnelle
* qualification[exercicePro].code.coding[categorieProfession] ^short = "Catégorie professionnelle indiquant si le professionnel exerce sa profession en tant que Militaire, Civil, Fonctionnaire ou Etudiant (categorieProfessionnelle)."
* qualification[exercicePro].code.coding[categorieProfession] from $JDV-J89-CategorieProfessionnelle-RASS (required)

// Slice 2 : profession de sante
* qualification[exercicePro].code.coding[profession] ^short = "Profession exercée : de santé (professionSante) TRE G15, du social (professionSocial) TRE R94, à usage de titre professionnel (usagerTitre) TRE R95, ou autre profession (autreProfession) TRE R291"
* qualification[exercicePro].code.coding[profession] from $JDV-J106-EnsembleProfession-RASS (required)


// ################
// # SAVOIR FAIRE #
// ################

* qualification contains savoirFaire 0..*


* qualification[savoirFaire] ^short = "savoirFaire : Prérogatives d'exercice d'un professionnel reconnues par une autorité d'enregistrement sur une période donnée de son exercice professionnel, par exemple les spécialités ordinales, etc."

* qualification[savoirFaire].code.coding ^slicing.discriminator.type = #value
* qualification[savoirFaire].code.coding ^slicing.discriminator.path = "$this"
* qualification[savoirFaire].code.coding ^slicing.rules = #closed

* qualification[savoirFaire].code.coding contains
    typeSavoirFaire 0..1 and
    savoirFaire 0..1 

// Slice : typeSavoirFaire
* qualification[savoirFaire].code.coding[typeSavoirFaire] ^short = "Le type de savoir-faire (qualifications/autres attributions).\ntypeSavoirFaire"
* qualification[savoirFaire].code.coding[typeSavoirFaire] from $JDV-J91-TypeSavoirFaire-RASS (required)

// Slice : savoirFaire
* qualification[savoirFaire].code.coding[savoirFaire] ^short = "Compétence acquise par le professionnel (competence) R39 ou Compétence exclusive exercée par le professionnel à titre exclusif (competenceExclusive) R40 ou Diplôme d'études spécialisées complémentaires (DESC)DESCnonQualifian R42 ou Capacité (savoir-faire)de médecine (capaciteSavoirFaire) R43 ou Qualification de praticien adjoint contractuel (qualificationPAC) R44 ou Fonction qualifiée (Synonyme: fonctionQualifiee) R45 ou Droit d'exercice complémentaire (Synonyme: droitExerciceComplementaire) R97 ou Orientation particulière (Synonyme: orientationParticuliere) G13 ou Activité ponctuelle du professionnel de type expertise (attributionParticuliere) G13."
* qualification[savoirFaire].code.coding[savoirFaire] from $JDV-J107-EnsembleSavoirFaire-RASS (required)
