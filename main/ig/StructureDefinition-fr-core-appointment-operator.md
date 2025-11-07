# FR Core Appointment Operator Extension - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Appointment Operator Extension**

## Extension: FR Core Appointment Operator Extension 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-appointment-operator | *Version*:2.2.0-ballot |
| Active as of 2025-11-07 | *Computable Name*:FRCoreAppointmentOperatorExtension |

Cette extension ajoute l’élément appointmentOperator à la ressource Appointment (opérateur de création/modification/annulation du RDV). This extension adds the element appointmentOperator to the Appointment resource (operator of creation/update/cancel of the appointment

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [FR Core Appointment Profile](StructureDefinition-fr-core-appointment.md)
* Examples for this Extension: [Appointment/FRCoreAppointmentExample](Appointment-FRCoreAppointmentExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-appointment-operator)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-appointment-operator.csv), [Excel](StructureDefinition-fr-core-appointment-operator.xlsx), [Schematron](StructureDefinition-fr-core-appointment-operator.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-appointment-operator",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-appointment-operator",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreAppointmentOperatorExtension",
  "title" : "FR Core Appointment Operator Extension",
  "status" : "active",
  "date" : "2025-11-07T16:50:39+00:00",
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
  "description" : "Cette extension ajoute l'élément appointmentOperator à la ressource Appointment (opérateur de création/modification/annulation du RDV). \r\nThis extension adds the element appointmentOperator to the Appointment resource (operator of creation/update/cancel of the appointment",
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
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Appointment"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "FR Core Appointment Operator Extension",
        "definition" : "Cette extension ajoute l'élément appointmentOperator à la ressource Appointment (opérateur de création/modification/annulation du RDV). \r\nThis extension adds the element appointmentOperator to the Appointment resource (operator of creation/update/cancel of the appointment"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-appointment-operator"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Extension.value[x]:valueReference",
        "path" : "Extension.value[x]",
        "sliceName" : "valueReference",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson"
            ]
          }
        ]
      }
    ]
  }
}

```
