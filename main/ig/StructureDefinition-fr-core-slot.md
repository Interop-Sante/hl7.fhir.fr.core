# FR Core Slot Profile - Guide d'implémentation FR Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Slot Profile**

## Resource Profile: FR Core Slot Profile 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-slot | *Version*:2.2.0-ballot |
| Active as of 2026-01-09 | *Computable Name*:FRCoreSlotProfile |

 
Profil of the Slot resource for France. 
Profil de la ressource Slot pour la France 

**Utilisations:**

* Référer à ce Profil: [FR Core Appointment Profile](StructureDefinition-fr-core-appointment.md)
* Exemples pour ce Profil: [Slot/FRCoreSlotExample](Slot-FRCoreSlotExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-slot)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-slot.csv), [Excel](StructureDefinition-fr-core-slot.xlsx), [Schematron](StructureDefinition-fr-core-slot.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-slot",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-slot",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreSlotProfile",
  "title" : "FR Core Slot Profile",
  "status" : "active",
  "date" : "2026-01-09T10:08:27+00:00",
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
  "description" : "Profil of the Slot resource for France.\r\n\nProfil de la ressource Slot pour la France",
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
      "identity" : "ical",
      "uri" : "http://ietf.org/rfc/2445",
      "name" : "iCalendar"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Slot",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Slot|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Slot",
        "path" : "Slot"
      },
      {
        "id" : "Slot.meta.profile",
        "path" : "Slot.meta.profile",
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
        "id" : "Slot.meta.profile:fr-canonical",
        "path" : "Slot.meta.profile",
        "sliceName" : "fr-canonical",
        "min" : 0,
        "max" : "1",
        "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-slot|2.2.0-ballot"
      },
      {
        "id" : "Slot.identifier.use",
        "path" : "Slot.identifier.use",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/identifier-use|4.0.1"
        }
      },
      {
        "id" : "Slot.serviceCategory",
        "path" : "Slot.serviceCategory",
        "max" : "1"
      },
      {
        "id" : "Slot.specialty",
        "path" : "Slot.specialty",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-practitioner-specialty|2.2.0-ballot"
        }
      },
      {
        "id" : "Slot.schedule",
        "path" : "Slot.schedule",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-schedule|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Slot.status",
        "path" : "Slot.status",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/slotstatus|4.0.1"
        }
      }
    ]
  }
}

```
