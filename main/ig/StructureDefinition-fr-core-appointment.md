# FR Core Appointment Profile - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Appointment Profile**

## Resource Profile: FR Core Appointment Profile 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-appointment | *Version*:2.2.0-ballot |
| Active as of 2025-10-22 | *Computable Name*:FRCoreAppointmentProfile |

 
Profile of the Appointment resource for France. This profile adds the operator who created/updated/canceled the appointment. It also allows to possibly reference an appointment canceled and a document associated with the appointment. 
Profil de la ressource Appointment pour la France. Ce profil ajoute l’opérateur qui a créé/modifié/annulé le RDV. Il permet également de référencer éventuellement un RDV annulé et/ou un document lié au RDV. 

**Usages:**

* Refer to this Profile: [FR Core Encounter Profile](StructureDefinition-fr-core-encounter.md)
* Examples for this Profile: [Appointment/FRCoreAppointmentExample](Appointment-FRCoreAppointmentExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-appointment)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-appointment.csv), [Excel](StructureDefinition-fr-core-appointment.xlsx), [Schematron](StructureDefinition-fr-core-appointment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-appointment",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-appointment",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreAppointmentProfile",
  "title" : "FR Core Appointment Profile",
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
  "description" : "Profile of the Appointment resource for France. This profile adds the operator who created/updated/canceled the appointment. It also allows to possibly reference an appointment canceled and a document associated with the appointment.\r\n\nProfil de la ressource Appointment pour la France. Ce profil ajoute l'opérateur qui a créé/modifié/annulé le RDV. Il permet également de référencer éventuellement un RDV annulé et/ou un document lié au RDV.",
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
      "identity" : "ical",
      "uri" : "http://ietf.org/rfc/2445",
      "name" : "iCalendar"
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
  "type" : "Appointment",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Appointment",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Appointment",
        "path" : "Appointment"
      },
      {
        "id" : "Appointment.meta.profile",
        "path" : "Appointment.meta.profile",
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
        "id" : "Appointment.meta.profile:fr-canonical",
        "path" : "Appointment.meta.profile",
        "sliceName" : "fr-canonical",
        "min" : 0,
        "max" : "1",
        "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-appointment"
      },
      {
        "id" : "Appointment.extension",
        "path" : "Appointment.extension",
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
        "id" : "Appointment.extension:appointmentOperator",
        "path" : "Appointment.extension",
        "sliceName" : "appointmentOperator",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-appointment-operator"
            ]
          }
        ]
      },
      {
        "id" : "Appointment.specialty",
        "path" : "Appointment.specialty",
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "specialty"
            }
          ],
          "strength" : "required",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-practitioner-specialty"
        }
      },
      {
        "id" : "Appointment.slot",
        "path" : "Appointment.slot",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-slot"
            ]
          }
        ]
      },
      {
        "id" : "Appointment.participant.actor",
        "path" : "Appointment.participant.actor",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/Device",
              "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-healthcare-service",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location"
            ]
          }
        ]
      }
    ]
  }
}

```
