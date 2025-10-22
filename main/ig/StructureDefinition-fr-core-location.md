# FR Core Location Profile - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Location Profile**

## Resource Profile: FR Core Location Profile 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location | *Version*:2.2.0-ballot |
| Active as of 2025-10-22 | *Computable Name*:FRCoreLocationProfile |

 
French profile of Location. 
Profil français de la ressource Location 

**Usages:**

* Refer to this Profile: [FR Core Appointment Profile](StructureDefinition-fr-core-appointment.md), [FR Core Encounter Profile](StructureDefinition-fr-core-encounter.md), [FR Core Healthcare Service Profile](StructureDefinition-fr-core-healthcare-service.md), [FR Core Location Profile](StructureDefinition-fr-core-location.md)...Show 2 more,[FR Core Practitioner Role](StructureDefinition-fr-core-practitioner-role.md)and[FR Core Schedule Profile](StructureDefinition-fr-core-schedule.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-location)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-location.csv), [Excel](StructureDefinition-fr-core-location.xlsx), [Schematron](StructureDefinition-fr-core-location.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-location",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreLocationProfile",
  "title" : "FR Core Location Profile",
  "status" : "active",
  "date" : "2025-10-22T14:21:04+00:00",
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
  "description" : "French profile of Location.\r\n\nProfil français de la ressource Location",
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Location",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Location",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Location",
        "path" : "Location"
      },
      {
        "id" : "Location.meta.profile",
        "path" : "Location.meta.profile",
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
        "id" : "Location.meta.profile:fr-canonical",
        "path" : "Location.meta.profile",
        "sliceName" : "fr-canonical",
        "min" : 0,
        "max" : "1",
        "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location"
      },
      {
        "id" : "Location.extension",
        "path" : "Location.extension",
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
        "id" : "Location.extension:usePeriod",
        "path" : "Location.extension",
        "sliceName" : "usePeriod",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-use-period"
            ]
          }
        ]
      },
      {
        "id" : "Location.identifier",
        "path" : "Location.identifier",
        "short" : "Identifiant fonctionnel du lieu. Il est recommandé de remplir ce champs pour faciliter l'identification des ressources."
      },
      {
        "id" : "Location.identifier.type",
        "path" : "Location.identifier.type",
        "min" : 1,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-location-identifier-type"
        }
      },
      {
        "id" : "Location.identifier.system",
        "path" : "Location.identifier.system",
        "min" : 1
      },
      {
        "id" : "Location.identifier.value",
        "path" : "Location.identifier.value",
        "min" : 1
      },
      {
        "id" : "Location.identifier.assigner",
        "path" : "Location.identifier.assigner",
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
        "id" : "Location.type",
        "path" : "Location.type",
        "max" : "1",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-location-type"
        }
      },
      {
        "id" : "Location.telecom",
        "path" : "Location.telecom",
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
        "id" : "Location.address",
        "path" : "Location.address",
        "type" : [
          {
            "code" : "Address",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address"
            ]
          }
        ]
      },
      {
        "id" : "Location.physicalType",
        "path" : "Location.physicalType",
        "binding" : {
          "strength" : "example",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-location-physical-type"
        }
      },
      {
        "id" : "Location.managingOrganization",
        "path" : "Location.managingOrganization",
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
        "id" : "Location.partOf",
        "path" : "Location.partOf",
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
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location"
            ]
          }
        ]
      },
      {
        "id" : "Location.partOf.extension:positionRoom",
        "path" : "Location.partOf.extension",
        "sliceName" : "positionRoom",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location-position-room"
            ]
          }
        ]
      }
    ]
  }
}

```
