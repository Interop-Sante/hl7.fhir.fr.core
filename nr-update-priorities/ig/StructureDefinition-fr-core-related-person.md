# FR Core Related Person Profile - Guide d'implémentation FR Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Related Person Profile**

## Resource Profile: FR Core Related Person Profile 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person | *Version*:2.2.0-ballot |
| Active as of 2025-12-29 | *Computable Name*:FRCoreRelatedPersonProfile |

 
Profile of the RelatedPerson resource for France. 
Profil de la ressource RelatedPerson pour l’usage en France 

**Utilisations:**

* Référer à ce Profil: [FR Core Appointment Profile](StructureDefinition-fr-core-appointment.md), [FR Core Observation Blood Pressure Profile](StructureDefinition-fr-core-observation-bp.md), [FR Core Observation Heart Rate Profile](StructureDefinition-fr-core-observation-heartrate.md), [FR Core Observation Respiratory Rate Profile](StructureDefinition-fr-core-observation-resp-rate.md) and [FR Core Schedule Profile](StructureDefinition-fr-core-schedule.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-related-person)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-related-person.csv), [Excel](StructureDefinition-fr-core-related-person.xlsx), [Schematron](StructureDefinition-fr-core-related-person.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-related-person",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreRelatedPersonProfile",
  "title" : "FR Core Related Person Profile",
  "status" : "active",
  "date" : "2025-12-29T10:57:12+00:00",
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
  "description" : "Profile of the RelatedPerson resource for France.\r\n\nProfil de la ressource RelatedPerson pour l'usage en France",
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
  "type" : "RelatedPerson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "RelatedPerson",
        "path" : "RelatedPerson"
      },
      {
        "id" : "RelatedPerson.meta.profile",
        "path" : "RelatedPerson.meta.profile",
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
        "id" : "RelatedPerson.meta.profile:fr-canonical",
        "path" : "RelatedPerson.meta.profile",
        "sliceName" : "fr-canonical",
        "min" : 0,
        "max" : "1",
        "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person"
      },
      {
        "id" : "RelatedPerson.identifier",
        "path" : "RelatedPerson.identifier",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "RelatedPerson.patient",
        "path" : "RelatedPerson.patient",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient"
            ]
          }
        ]
      },
      {
        "id" : "RelatedPerson.relationship",
        "path" : "RelatedPerson.relationship",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "coding.system"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "RelatedPerson.relationship:Role",
        "path" : "RelatedPerson.relationship",
        "sliceName" : "Role",
        "short" : "The nature of the relationship. Rôle de la personne. Ex : personne de confiance, aidant ...",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-contact-role"
        }
      },
      {
        "id" : "RelatedPerson.relationship:Role.coding.system",
        "path" : "RelatedPerson.relationship.coding.system",
        "min" : 1,
        "patternUri" : "https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass"
      },
      {
        "id" : "RelatedPerson.relationship:RelationType",
        "path" : "RelatedPerson.relationship",
        "sliceName" : "RelationType",
        "short" : "The nature of the relationship. Relation de la personne. Ex : Mère, époux, enfant ...",
        "min" : 0,
        "max" : "*",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-relation-type"
        }
      },
      {
        "id" : "RelatedPerson.relationship:RelationType.coding.system",
        "path" : "RelatedPerson.relationship.coding.system",
        "min" : 1,
        "patternUri" : "https://mos.esante.gouv.fr/NOS/TRE_R216-HL7RoleCode/FHIR/TRE-R216-HL7RoleCode"
      },
      {
        "id" : "RelatedPerson.name",
        "path" : "RelatedPerson.name",
        "type" : [
          {
            "code" : "HumanName",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-human-name"
            ]
          }
        ]
      },
      {
        "id" : "RelatedPerson.telecom",
        "path" : "RelatedPerson.telecom",
        "type" : [
          {
            "code" : "ContactPoint",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point"
            ]
          }
        ]
      },
      {
        "id" : "RelatedPerson.address",
        "path" : "RelatedPerson.address",
        "type" : [
          {
            "code" : "Address",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address"
            ]
          }
        ]
      }
    ]
  }
}

```
