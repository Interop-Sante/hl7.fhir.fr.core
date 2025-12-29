# FR Core Practitioner Role - Guide d'implémentation FR Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Practitioner Role**

## Resource Profile: FR Core Practitioner Role 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role | *Version*:2.2.0-ballot |
| Active as of 2025-12-29 | *Computable Name*:FRCorePractitionerRoleProfile |

 
Profile of the PractitionerRole resource for France. This profil specifies the role of the practitioner for the organization 
Spécification du profil de la ressource PractitionerRole pour un usage en France. Ce profil permet de spécifier le rôle (la situation d’exercice) du PS dans le contexte d’une organisation. 

**Utilisations:**

* Référer à ce Profil: [FR Core Schedule Profile](StructureDefinition-fr-core-schedule.md)
* Exemples pour ce Profil: [PractitionerRole/FRCorePractitionerRoleExample](PractitionerRole-FRCorePractitionerRoleExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-practitioner-role)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-practitioner-role.csv), [Excel](StructureDefinition-fr-core-practitioner-role.xlsx), [Schematron](StructureDefinition-fr-core-practitioner-role.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-practitioner-role",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role",
  "version" : "2.2.0-ballot",
  "name" : "FRCorePractitionerRoleProfile",
  "title" : "FR Core Practitioner Role",
  "status" : "active",
  "date" : "2025-12-29T10:22:56+00:00",
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
  "description" : "Profile of the PractitionerRole resource for France. This profil specifies the role of the practitioner for the organization\r\n\nSpécification du profil de la ressource PractitionerRole pour un usage en France. Ce profil permet de spécifier le rôle (la situation d'exercice) du PS dans le contexte d'une organisation.",
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "servd",
      "uri" : "http://www.omg.org/spec/ServD/1.0/",
      "name" : "ServD"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "PractitionerRole",
        "path" : "PractitionerRole"
      },
      {
        "id" : "PractitionerRole.meta.profile",
        "path" : "PractitionerRole.meta.profile",
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
        "id" : "PractitionerRole.meta.profile:fr-canonical",
        "path" : "PractitionerRole.meta.profile",
        "sliceName" : "fr-canonical",
        "min" : 0,
        "max" : "1",
        "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role"
      },
      {
        "id" : "PractitionerRole.extension",
        "path" : "PractitionerRole.extension",
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
        "id" : "PractitionerRole.extension:serviceTypeDuration",
        "path" : "PractitionerRole.extension",
        "sliceName" : "serviceTypeDuration",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-service-type-duration"
            ]
          }
        ]
      },
      {
        "id" : "PractitionerRole.practitioner",
        "path" : "PractitionerRole.practitioner",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner"
            ]
          }
        ]
      },
      {
        "id" : "PractitionerRole.organization",
        "path" : "PractitionerRole.organization",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"
            ]
          }
        ]
      },
      {
        "id" : "PractitionerRole.code",
        "path" : "PractitionerRole.code",
        "short" : "The role a person plays representing an organization | Rôle (situation d'exercice) du professionnel de santé au sein de l'organisation",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-practitioner-role-exercice"
        }
      },
      {
        "id" : "PractitionerRole.specialty",
        "path" : "PractitionerRole.specialty",
        "short" : "Specific specialty associated with the organization | spécialité ordinale du professionnel de santé au sein de l'organisation",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-practitioner-specialty"
        }
      },
      {
        "id" : "PractitionerRole.location",
        "path" : "PractitionerRole.location",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location"
            ]
          }
        ]
      },
      {
        "id" : "PractitionerRole.healthcareService",
        "path" : "PractitionerRole.healthcareService",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-healthcare-service"
            ]
          }
        ]
      },
      {
        "id" : "PractitionerRole.telecom",
        "path" : "PractitionerRole.telecom",
        "short" : "Details of a Technology mediated contact point | Coordonnées électroniques détaillées",
        "type" : [
          {
            "code" : "ContactPoint",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point"
            ]
          }
        ]
      }
    ]
  }
}

```
