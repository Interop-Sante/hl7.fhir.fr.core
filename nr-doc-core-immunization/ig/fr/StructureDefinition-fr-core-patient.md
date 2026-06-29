# FR Core Patient Profile - Guide d'implémentation FR Core v2.2.0

## Profil de ressource: FR Core Patient Profile 

 
Profile of the Patient resource for France. This profile specifies the patient’s identifiers for France. It uses international extensions (birtplace and nationality) and adds specific French extensions. 
Ce profil spécifie les identifiants de patient utilisés en France. Il utilise des extensions internationales (birthplace et nationalité) et ajoute des extensions propres à la France.) 

**Utilisations:**

* Dérivé de ce Profil: [FR Core Patient INS Profile](StructureDefinition-fr-core-patient-ins.md)
* Référence ce Profil: [FR Core Appointment Operator Extension](StructureDefinition-fr-core-appointment-operator.md), [FR Core Appointment Profile](StructureDefinition-fr-core-appointment.md), [FR Core Encounter Profile](StructureDefinition-fr-core-encounter.md), [FR Core Medication Administration Inhaled Oxygen Profile](StructureDefinition-fr-core-medication-administration-inhaled-oxygen.md)... Show 11 more, [FR Core Observation Bmi Profile](StructureDefinition-fr-core-observation-bmi.md), [FR Core Observation Body Height Profile](StructureDefinition-fr-core-observation-body-height.md), [FR Core Observation Body Temperature Profile](StructureDefinition-fr-core-observation-body-temperature.md), [FR Core Observation Body Weight Profile](StructureDefinition-fr-core-observation-body-weight.md), [FR Core Observation Blood Pressure Profile](StructureDefinition-fr-core-observation-bp.md), [FR Core Observation Head Circum Profile](StructureDefinition-fr-core-observation-head-circum.md), [FR Core Observation Heart Rate Profile](StructureDefinition-fr-core-observation-heartrate.md), [FR Core Observation Respiratory Rate Profile](StructureDefinition-fr-core-observation-resp-rate.md), [FR Core Observation Oxygen Saturation Profile](StructureDefinition-fr-core-observation-saturation-oxygen.md), [FR Core Related Person Profile](StructureDefinition-fr-core-related-person.md) and [FR Core Schedule Profile](StructureDefinition-fr-core-schedule.md)
* Exemples pour ce/t/te Profil: [Patient/FRCorePatientDeceasedExample](Patient-FRCorePatientDeceasedExample.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-patient)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [PatientEuCore](http://hl7.eu/fhir/base/2.0.0/StructureDefinition-patient-eu-core.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [PatientEuCore](http://hl7.eu/fhir/base/2.0.0/StructureDefinition-patient-eu-core.html) 

** Résumé **

Obligatoire : 0 élément(32 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Address Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address|2.2.0)](StructureDefinition-fr-core-address.md)
* [FR Core Human Name Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-human-name|2.2.0)](StructureDefinition-fr-core-human-name.md)
* [FR Core Contact Point Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point|2.2.0)](StructureDefinition-fr-core-contact-point.md)
* [FR Core Practitioner Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0)](StructureDefinition-fr-core-practitioner.md)
* [FR Core Organization Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0)](StructureDefinition-fr-core-organization.md)
* [PractitionerRole (http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1)](http://hl7.org/fhir/R4/practitionerrole.html)
* [Organization (http://hl7.org/fhir/StructureDefinition/Organization|4.0.1)](http://hl7.org/fhir/R4/organization.html)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability|2.2.0](StructureDefinition-fr-core-identity-reliability.md)
* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-death-place|2.2.0](StructureDefinition-fr-core-patient-death-place.md)
* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-birthdate-update-indicator|2.2.0](StructureDefinition-fr-core-patient-birthdate-update-indicator.md)
* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-birth-list-given-name|2.2.0](StructureDefinition-fr-core-patient-birth-list-given-name.md)
* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-contact-identifier|2.2.0](StructureDefinition-fr-core-patient-contact-identifier.md)
* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-comment|2.2.0](StructureDefinition-fr-core-comment.md)
* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-contact-relationship-category|2.2.0](StructureDefinition-fr-core-patient-contact-relationship-category.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Patient.meta.profile
* The element 1 is sliced based on the value of Patient.identifier
* The element 1 is sliced based on the value of Patient.name
* The element 1 is sliced based on the value of Patient.contact.relationship

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [PatientEuCore](http://hl7.eu/fhir/base/2.0.0/StructureDefinition-patient-eu-core.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [PatientEuCore](http://hl7.eu/fhir/base/2.0.0/StructureDefinition-patient-eu-core.html) 

** Résumé **

Obligatoire : 0 élément(32 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Address Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address|2.2.0)](StructureDefinition-fr-core-address.md)
* [FR Core Human Name Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-human-name|2.2.0)](StructureDefinition-fr-core-human-name.md)
* [FR Core Contact Point Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point|2.2.0)](StructureDefinition-fr-core-contact-point.md)
* [FR Core Practitioner Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0)](StructureDefinition-fr-core-practitioner.md)
* [FR Core Organization Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0)](StructureDefinition-fr-core-organization.md)
* [PractitionerRole (http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1)](http://hl7.org/fhir/R4/practitionerrole.html)
* [Organization (http://hl7.org/fhir/StructureDefinition/Organization|4.0.1)](http://hl7.org/fhir/R4/organization.html)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability|2.2.0](StructureDefinition-fr-core-identity-reliability.md)
* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-death-place|2.2.0](StructureDefinition-fr-core-patient-death-place.md)
* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-birthdate-update-indicator|2.2.0](StructureDefinition-fr-core-patient-birthdate-update-indicator.md)
* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-birth-list-given-name|2.2.0](StructureDefinition-fr-core-patient-birth-list-given-name.md)
* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-contact-identifier|2.2.0](StructureDefinition-fr-core-patient-contact-identifier.md)
* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-comment|2.2.0](StructureDefinition-fr-core-comment.md)
* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-contact-relationship-category|2.2.0](StructureDefinition-fr-core-patient-contact-relationship-category.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Patient.meta.profile
* The element 1 is sliced based on the value of Patient.identifier
* The element 1 is sliced based on the value of Patient.name
* The element 1 is sliced based on the value of Patient.contact.relationship

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-core-patient.csv), [Excel](../StructureDefinition-fr-core-patient.xlsx), [Schematron](../StructureDefinition-fr-core-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-patient",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient",
  "version" : "2.2.0",
  "name" : "FRCorePatientProfile",
  "title" : "FR Core Patient Profile",
  "status" : "active",
  "date" : "2026-06-29T10:21:29+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [{
    "name" : "Interop'Santé",
    "telecom" : [{
      "system" : "url",
      "value" : "http://interopsante.org"
    }]
  },
  {
    "name" : "InteropSanté",
    "telecom" : [{
      "system" : "email",
      "value" : "fhir@interopsante.org",
      "use" : "work"
    }]
  }],
  "description" : "Profile of the Patient resource for France. This profile specifies the patient's identifiers for France. It uses international extensions (birtplace and nationality) and adds specific French extensions.\r\n\nCe profil spécifie les identifiants de patient utilisés en France. Il utilise des extensions internationales (birthplace et nationalité) et ajoute des extensions propres à la France.)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.eu/fhir/base/StructureDefinition/patient-eu-core|2.0.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.meta.profile",
      "path" : "Patient.meta.profile",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this"
        }],
        "description" : "Slice based on the canonical url value",
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.meta.profile:fr-canonical",
      "path" : "Patient.meta.profile",
      "sliceName" : "fr-canonical",
      "min" : 0,
      "max" : "1",
      "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0"
    },
    {
      "id" : "Patient.extension:birthPlace",
      "path" : "Patient.extension",
      "sliceName" : "birthPlace"
    },
    {
      "id" : "Patient.extension:birthPlace.value[x]",
      "path" : "Patient.extension.value[x]",
      "type" : [{
        "code" : "Address",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address|2.2.0"]
      }]
    },
    {
      "id" : "Patient.extension:identityReliability",
      "path" : "Patient.extension",
      "sliceName" : "identityReliability",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability|2.2.0"]
      }]
    },
    {
      "id" : "Patient.extension:deathPlace",
      "path" : "Patient.extension",
      "sliceName" : "deathPlace",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-death-place|2.2.0"]
      }]
    },
    {
      "id" : "Patient.extension:birthDateUpdateIndicator",
      "path" : "Patient.extension",
      "sliceName" : "birthDateUpdateIndicator",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-birthdate-update-indicator|2.2.0"]
      }]
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type"
        }],
        "description" : "Slicing de l'identifiant Patient sur le type d'identifiant (IPP, INS-NIR, INS-NIA, etc.)",
        "rules" : "open"
      },
      "short" : "An identifier for this patient | Identifiant patient. Pour modéliser un patient avec une INS au statut qualifié, il est nécessaire de respecter la conformité au profil FRCorePatientINS. Les identifiants NIR et NIA ne sont définis que dans le cas du FRCorePatientINS."
    },
    {
      "id" : "Patient.identifier.type",
      "path" : "Patient.identifier.type",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-identifier-type|2.2.0"
      }
    },
    {
      "id" : "Patient.identifier:NSS-NIR",
      "path" : "Patient.identifier",
      "sliceName" : "NSS-NIR",
      "short" : "National Health Plan Identifier | Le Numéro d'Inscription au Répertoire (NIR) de facturation permet de faire transiter le numéro de sécurité social de l’ayant droit ou du bénéfiaire (patient) / le numéro de sécurité sociale de l’ouvrant droit (assuré).",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:NSS-NIR.use",
      "path" : "Patient.identifier.use",
      "min" : 1,
      "patternCode" : "official"
    },
    {
      "id" : "Patient.identifier:NSS-NIR.type",
      "path" : "Patient.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "NH"
        }]
      }
    },
    {
      "id" : "Patient.identifier:NSS-NIR.system",
      "path" : "Patient.identifier.system",
      "short" : "Autorité d’affectation du NIR utilisé en tant que numéro de sécurité sociale",
      "min" : 1,
      "patternUri" : "urn:oid:1.2.250.1.213.1.4.13"
    },
    {
      "id" : "Patient.identifier:NSS-NIR.value",
      "path" : "Patient.identifier.value",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:NSS-NIA",
      "path" : "Patient.identifier",
      "sliceName" : "NSS-NIA",
      "short" : "National Health Plan Identifier | Le Numéro d'Inscription au Répertoire (NIA) de facturation d'attente permet de faire transiter le numéro de sécurité social de l’ayant droit ou du bénéfiaire (patient) / le numéro de sécurité sociale d'attente de l’ouvrant droit (assuré).",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:NSS-NIA.use",
      "path" : "Patient.identifier.use",
      "min" : 1,
      "patternCode" : "official"
    },
    {
      "id" : "Patient.identifier:NSS-NIA.type",
      "path" : "Patient.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "NH"
        }]
      }
    },
    {
      "id" : "Patient.identifier:NSS-NIA.system",
      "path" : "Patient.identifier.system",
      "short" : "Autorité d’affectation du NIA utilisé en tant que numéro de sécurité sociale",
      "min" : 1,
      "patternUri" : "urn:oid:1.2.250.1.213.1.4.14"
    },
    {
      "id" : "Patient.identifier:NSS-NIA.value",
      "path" : "Patient.identifier.value",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:INS-C",
      "path" : "Patient.identifier",
      "sliceName" : "INS-C",
      "short" : "Computed National Health Identifier | Identifiant National de Santé Calculé à partir des éléments de la carte vitale",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Patient.identifier:INS-C.use",
      "path" : "Patient.identifier.use",
      "min" : 1,
      "patternCode" : "secondary"
    },
    {
      "id" : "Patient.identifier:INS-C.type",
      "path" : "Patient.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
          "code" : "INS-C",
          "display" : "Identifiant National de Santé Calculé"
        }]
      }
    },
    {
      "id" : "Patient.identifier:INS-C.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "patternUri" : "urn:oid:1.2.250.1.213.1.4.2"
    },
    {
      "id" : "Patient.identifier:INS-C.value",
      "path" : "Patient.identifier.value",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:NDP",
      "path" : "Patient.identifier",
      "sliceName" : "NDP",
      "short" : "French pharmaceutical Record Identifier | Numéro de Dossier Pharmaceutique français. Celui-ci est unique.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:NDP.use",
      "path" : "Patient.identifier.use",
      "min" : 1,
      "patternCode" : "secondary"
    },
    {
      "id" : "Patient.identifier:NDP.type",
      "path" : "Patient.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
          "code" : "NDP",
          "display" : "Identifiant du patient au Dossier Pharmaceutique"
        }]
      }
    },
    {
      "id" : "Patient.identifier:NDP.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "patternUri" : "urn:oid:1.2.250.1.176.1.2"
    },
    {
      "id" : "Patient.identifier:NDP.value",
      "path" : "Patient.identifier.value",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:PI",
      "path" : "Patient.identifier",
      "sliceName" : "PI",
      "short" : "Hospital assigned patient identifier | Identifiant Patient Permanent (IPP).",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Patient.identifier:PI.use",
      "path" : "Patient.identifier.use",
      "comment" : "La valeur old permet d'identifier des IPP désactivés (en cas de fusion d'identité pour résoudre des problèmes de doublonnage par exemple)",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-identifier-use-pi|2.2.0"
      }
    },
    {
      "id" : "Patient.identifier:PI.type",
      "path" : "Patient.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "PI",
          "display" : "Patient internal identifier"
        }]
      }
    },
    {
      "id" : "Patient.identifier:PI.system",
      "path" : "Patient.identifier.system",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:PI.value",
      "path" : "Patient.identifier.value",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:RRI",
      "path" : "Patient.identifier",
      "sliceName" : "RRI",
      "short" : "Regional Registry ID | Identifiant régional",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Patient.identifier:RRI.use",
      "path" : "Patient.identifier.use",
      "min" : 1,
      "patternCode" : "secondary"
    },
    {
      "id" : "Patient.identifier:RRI.type",
      "path" : "Patient.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "RRI",
          "display" : "Regional registry ID"
        }]
      }
    },
    {
      "id" : "Patient.identifier:RRI.system",
      "path" : "Patient.identifier.system",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:RRI.value",
      "path" : "Patient.identifier.value",
      "min" : 1
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "use"
        }],
        "rules" : "open"
      },
      "type" : [{
        "code" : "HumanName",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-human-name|2.2.0"]
      }]
    },
    {
      "id" : "Patient.name:usualName",
      "path" : "Patient.name",
      "sliceName" : "usualName",
      "short" : "Name of a human | Nom utilisé",
      "definition" : "A human's name with the ability to identify parts and usage | Le nom utilisé (usual) n’est transmis que s’il est défini (par exemple nom marital du conjoint).",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Patient.name:usualName.use",
      "path" : "Patient.name.use",
      "min" : 1,
      "patternCode" : "usual"
    },
    {
      "id" : "Patient.name:officialName",
      "path" : "Patient.name",
      "sliceName" : "officialName",
      "short" : "Name of a human | Nom de naissance",
      "definition" : "A human's name with the ability to identify parts and usage | Le nom de naissance (official) est obligatoire dans le cas où l’on véhicule l’INS et que l’identité est qualifiée (celui-ci ne doit pas être altéré).",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Patient.name:officialName.extension:birth-list-given-name",
      "path" : "Patient.name.extension",
      "sliceName" : "birth-list-given-name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-birth-list-given-name|2.2.0"]
      }]
    },
    {
      "id" : "Patient.name:officialName.use",
      "path" : "Patient.name.use",
      "min" : 1,
      "patternCode" : "official"
    },
    {
      "id" : "Patient.name:officialName.family",
      "path" : "Patient.name.family",
      "min" : 1
    },
    {
      "id" : "Patient.name:officialName.given",
      "path" : "Patient.name.given",
      "min" : 1
    },
    {
      "id" : "Patient.telecom",
      "path" : "Patient.telecom",
      "type" : [{
        "code" : "ContactPoint",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point|2.2.0"]
      }]
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "short" : "male | female | unknown",
      "definition" : "French patient's gender checked with the INSi teleservice | Genre administratif du patient. Dans le cas d'une identité récupérée par le téléservice INSi, les valeurs M ou F issues du téléservice sont à adapter à FHIR (male | female | unknown).",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-gender|2.2.0"
      }
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "short" : "The date of birth for the french patient checked with the INSitelservice | Date de naissance du patient. Dans le cas d'une identité récupérée du téléservice INSi, la date de naissance est modifiée selon les règles du RNIV dans le cas de dates exceptionnelles."
    },
    {
      "id" : "Patient.address",
      "path" : "Patient.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address|2.2.0"]
      }]
    },
    {
      "id" : "Patient.maritalStatus",
      "path" : "Patient.maritalStatus",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-marital-status|2.2.0"
      }
    },
    {
      "id" : "Patient.contact.extension",
      "path" : "Patient.contact.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.contact.extension:contactIdentifier",
      "path" : "Patient.contact.extension",
      "sliceName" : "contactIdentifier",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-contact-identifier|2.2.0"]
      }]
    },
    {
      "id" : "Patient.contact.extension:comment",
      "path" : "Patient.contact.extension",
      "sliceName" : "comment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-comment|2.2.0"]
      }]
    },
    {
      "id" : "Patient.contact.relationship",
      "path" : "Patient.contact.relationship",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "extension('https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-contact-relationship-category').value"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.contact.relationship:role",
      "path" : "Patient.contact.relationship",
      "sliceName" : "role",
      "short" : "The nature of the relationship. Rôle de la personne. Ex : personne de confiance, aidant ...",
      "min" : 0,
      "max" : "1",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-contact-role|2.2.0"
      }
    },
    {
      "id" : "Patient.contact.relationship:role.extension",
      "path" : "Patient.contact.relationship.extension",
      "min" : 1
    },
    {
      "id" : "Patient.contact.relationship:role.extension:category",
      "path" : "Patient.contact.relationship.extension",
      "sliceName" : "category",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-contact-relationship-category|2.2.0"]
      }]
    },
    {
      "id" : "Patient.contact.relationship:role.extension:category.value[x]",
      "path" : "Patient.contact.relationship.extension.value[x]",
      "patternCode" : "role"
    },
    {
      "id" : "Patient.contact.relationship:relationType",
      "path" : "Patient.contact.relationship",
      "sliceName" : "relationType",
      "short" : "The nature of the relationship. Relation de la personne. Ex : Mère, époux, enfant ...",
      "min" : 0,
      "max" : "1",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-relation-type|2.2.0"
      }
    },
    {
      "id" : "Patient.contact.relationship:relationType.extension",
      "path" : "Patient.contact.relationship.extension",
      "min" : 1
    },
    {
      "id" : "Patient.contact.relationship:relationType.extension:category",
      "path" : "Patient.contact.relationship.extension",
      "sliceName" : "category",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-contact-relationship-category|2.2.0"]
      }]
    },
    {
      "id" : "Patient.contact.relationship:relationType.extension:category.value[x]",
      "path" : "Patient.contact.relationship.extension.value[x]",
      "patternCode" : "relationType"
    },
    {
      "id" : "Patient.contact.name",
      "path" : "Patient.contact.name",
      "type" : [{
        "code" : "HumanName",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-human-name|2.2.0"]
      }]
    },
    {
      "id" : "Patient.contact.telecom",
      "path" : "Patient.contact.telecom",
      "type" : [{
        "code" : "ContactPoint",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point|2.2.0"]
      }]
    },
    {
      "id" : "Patient.generalPractitioner",
      "path" : "Patient.generalPractitioner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1"]
      }]
    },
    {
      "id" : "Patient.managingOrganization",
      "path" : "Patient.managingOrganization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0",
        "http://hl7.org/fhir/StructureDefinition/Organization|4.0.1"]
      }]
    }]
  }
}

```
