# FR Core Encounter Profile - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Encounter Profile**

## Resource Profile: FR Core Encounter Profile 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-encounter | *Version*:2.2.0-ballot |
| Active as of 2025-12-15 | *Computable Name*:FRCoreEncounterProfile |

 
This profil constrains the Encounter resource to represent either the patient visit or admission or the various movements that compose the patient stay. 
Ce profil de la ressource Encounter sert à la fois à définir la venue dans l’établissement et à représenter les mouvements du patient qui découpent cette venue. 

**Utilisations:**

* Référer à ce Profil: [FR Core Encounter Profile](StructureDefinition-fr-core-encounter.md), [FR Core Observation Bmi Profile](StructureDefinition-fr-core-observation-bmi.md), [FR Core Observation Body Height Profile](StructureDefinition-fr-core-observation-body-height.md), [FR Core Observation Body Temperature Profile](StructureDefinition-fr-core-observation-body-temperature.md)...Show 6 more,[FR Core Observation Body Weight Profile](StructureDefinition-fr-core-observation-body-weight.md),[FR Core Observation Blood Pressure Profile](StructureDefinition-fr-core-observation-bp.md),[FR Core Observation Head Circum Profile](StructureDefinition-fr-core-observation-head-circum.md),[FR Core Observation Heart Rate Profile](StructureDefinition-fr-core-observation-heartrate.md),[FR Core Observation Respiratory Rate Profile](StructureDefinition-fr-core-observation-resp-rate.md)and[FR Core Observation Oxygen Saturation Profile](StructureDefinition-fr-core-observation-saturation-oxygen.md)
* Exemples pour ce Profil: [Encounter/FRCoreEncounterExample](Encounter-FRCoreEncounterExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-encounter)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-encounter.csv), [Excel](StructureDefinition-fr-core-encounter.xlsx), [Schematron](StructureDefinition-fr-core-encounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-encounter",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-encounter",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreEncounterProfile",
  "title" : "FR Core Encounter Profile",
  "status" : "active",
  "date" : "2025-12-15T10:51:41+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [
    {
      "name" : "Interop'Santé",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://interopsante.org/"
        }
      ]
    },
    {
      "name" : "InteropSanté",
      "telecom" : [
        {
          "system" : "email",
          "value" : "fhir@interopsante.org",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "This profil constrains the Encounter resource to represent either the patient visit or admission or the various movements that compose the patient stay.\r\n\nCe profil de la ressource Encounter sert à la fois à définir la venue dans l'établissement et à représenter les mouvements du patient qui découpent cette venue.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "France"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Encounter",
        "path" : "Encounter"
      },
      {
        "id" : "Encounter.meta.profile",
        "path" : "Encounter.meta.profile",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "$this"
            }
          ],
          "description" : "Slice based on the canonical url value",
          "rules" : "open"
        }
      },
      {
        "id" : "Encounter.meta.profile:fr-canonical",
        "path" : "Encounter.meta.profile",
        "sliceName" : "fr-canonical",
        "min" : 0,
        "max" : "1",
        "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-encounter|2.2.0-ballot"
      },
      {
        "id" : "Encounter.extension",
        "path" : "Encounter.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Encounter.extension:estimatedDischargeDate",
        "path" : "Encounter.extension",
        "sliceName" : "estimatedDischargeDate",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-estimated-discharge-date|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.identifier",
        "path" : "Encounter.identifier",
        "short" : "Identifier(s) by which this encounter is known | identifiant de la rencontre",
        "definition" : "Identifier(s) by which this encounter is known.Cet élément est multiévalué (pour ne pas bloquer les implémentations, car il arrive sur le terrain qu'il y ait plusieurs id pour une même admission, mais cette situation est considérée comme une anomalie)",
        "min" : 1
      },
      {
        "id" : "Encounter.identifier.type",
        "path" : "Encounter.identifier.type",
        "definition" : "A coded type for an identifier that can be used to determine which identifier to use for a specific purpose | Type d'identifiant (admission ou de mouvement lors d'une hospitalisation) (JdV à définir)",
        "min" : 1,
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "IdentifierType"
            },
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding",
              "valueBoolean" : true
            }
          ],
          "strength" : "extensible",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-encounter-identifier-type|2.2.0-ballot"
        }
      },
      {
        "id" : "Encounter.identifier.system",
        "path" : "Encounter.identifier.system",
        "definition" : "Establishes the namespace for the value - that is, a URL that describes a set values that are unique.\r\nLe namespace est défini à partir de la racine d'identification (gérée par l'ANS) de l'organisation où a lieu la rencontre, concaténée avec par exemple le FINESS de l'établissent (ou FINEJ ou SIRET ou SIREN), cf annexe française des types de données HL7 en France.",
        "min" : 1,
        "example" : [
          {
            "label" : "OID de l'ANS de gestion des organisations (1.2.250.1.71.4.2.2) suivi du FINESS suivi de la branche z qui gère les id de venue/mouvements si l'établissement n'a pas d'OID (sinon utilisation de l'OID de l'établissement)",
            "valueUri" : "urn:oid:1.2.250.1.71.4.2.2.1330780321"
          },
          {
            "label" : "autre solution, utilisation d'une URL",
            "valueUri" : "http://encounter-identifier-system.org"
          }
        ]
      },
      {
        "id" : "Encounter.identifier.value",
        "path" : "Encounter.identifier.value",
        "min" : 1
      },
      {
        "id" : "Encounter.identifier.assigner",
        "path" : "Encounter.identifier.assigner",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.class.system",
        "path" : "Encounter.class.system",
        "min" : 1
      },
      {
        "id" : "Encounter.class.code",
        "path" : "Encounter.class.code",
        "min" : 1
      },
      {
        "id" : "Encounter.type",
        "path" : "Encounter.type",
        "max" : "1",
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "EncounterType"
            }
          ],
          "strength" : "example",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-encounter-type|2.2.0-ballot"
        }
      },
      {
        "id" : "Encounter.subject",
        "path" : "Encounter.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0-ballot",
              "http://hl7.org/fhir/StructureDefinition/Group|4.0.1"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.participant",
        "path" : "Encounter.participant",
        "short" : "List of participants involved in the encounter | Liste des personnes impliquées dans la rencontre"
      },
      {
        "id" : "Encounter.participant.individual",
        "path" : "Encounter.participant.individual",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson|4.0.1",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0-ballot",
              "http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.appointment",
        "path" : "Encounter.appointment",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-appointment|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.period",
        "path" : "Encounter.period",
        "min" : 1
      },
      {
        "id" : "Encounter.account",
        "path" : "Encounter.account",
        "max" : "1"
      },
      {
        "id" : "Encounter.hospitalization.preAdmissionIdentifier",
        "path" : "Encounter.hospitalization.preAdmissionIdentifier",
        "short" : "Pre-admission identifier | Identifiant de pré-admission"
      },
      {
        "id" : "Encounter.hospitalization.preAdmissionIdentifier.type",
        "path" : "Encounter.hospitalization.preAdmissionIdentifier.type",
        "min" : 1,
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "IdentifierType"
            },
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding",
              "valueBoolean" : true
            }
          ],
          "strength" : "extensible",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-encounter-identifier-type|2.2.0-ballot"
        }
      },
      {
        "id" : "Encounter.hospitalization.preAdmissionIdentifier.system",
        "path" : "Encounter.hospitalization.preAdmissionIdentifier.system",
        "definition" : "Establishes the namespace for the value - that is, a URL that describes a set values that are unique.\r\nLe namespace est défini à partir de la racine d'identification (gérée par l'ANS) de l'organisation où a lieu la rencontre , concaténée avec par exemple le FINESS de l'établissent (ou FINEJ ou SIRET ou SIREN), cf annexe française des types de données HL7 en France",
        "min" : 1,
        "fixedUri" : "1.2.250.1.71.4.2.2+.n°FINESS"
      },
      {
        "id" : "Encounter.hospitalization.preAdmissionIdentifier.value",
        "path" : "Encounter.hospitalization.preAdmissionIdentifier.value",
        "min" : 1
      },
      {
        "id" : "Encounter.hospitalization.preAdmissionIdentifier.assigner",
        "path" : "Encounter.hospitalization.preAdmissionIdentifier.assigner",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.hospitalization.origin",
        "path" : "Encounter.hospitalization.origin",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location|2.2.0-ballot",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.hospitalization.reAdmission",
        "path" : "Encounter.hospitalization.reAdmission",
        "short" : "the resaon of re-admission of this hospitalization encounter | Raison de la ré-admission du patient."
      },
      {
        "id" : "Encounter.hospitalization.destination",
        "path" : "Encounter.hospitalization.destination",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location|2.2.0-ballot",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.hospitalization.dischargeDisposition",
        "path" : "Encounter.hospitalization.dischargeDisposition",
        "binding" : {
          "strength" : "example",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-encounter-discharge-disposition|2.2.0-ballot"
        }
      },
      {
        "id" : "Encounter.location.location",
        "path" : "Encounter.location.location",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.location.physicalType",
        "path" : "Encounter.location.physicalType",
        "binding" : {
          "strength" : "example",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-location-physical-type|2.2.0-ballot"
        }
      },
      {
        "id" : "Encounter.serviceProvider",
        "path" : "Encounter.serviceProvider",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.partOf",
        "path" : "Encounter.partOf",
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
                "valueBoolean" : true
              }
            ],
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-encounter|2.2.0-ballot"
            ]
          }
        ]
      }
    ]
  }
}

```
