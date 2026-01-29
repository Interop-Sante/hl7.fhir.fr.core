# FR Core ValueSet Practitioner specialty - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet Practitioner specialty**

## ValueSet: FR Core ValueSet Practitioner specialty 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-practitioner-specialty | *Version*:2.2.0-ballot-2 | |
| * Standards status: *[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 5 | *Computable Name*:FRCoreValueSetPractitionerSpecialty |

 
The modalities of exercice of the practitioner, registered by an official organization for a period of time. 

 **References** 

* [FR Core Appointment Profile](StructureDefinition-fr-core-appointment.md)
* [FR Core Healthcare Service Profile](StructureDefinition-fr-core-healthcare-service.md)
* [FR Core Practitioner Role](StructureDefinition-fr-core-practitioner-role.md)
* [FR Core Practitioner Specialty Extension](StructureDefinition-fr-core-practitioner-specialty.md)
* [FR Core Schedule Profile](StructureDefinition-fr-core-schedule.md)
* [FR Core Slot Profile](StructureDefinition-fr-core-slot.md)

### Définition logique (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-practitioner-specialty",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "informative"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 5
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode" : "pc"
    }
  ],
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-practitioner-specialty",
  "version" : "2.2.0-ballot-2",
  "name" : "FRCoreValueSetPractitionerSpecialty",
  "title" : "FR Core ValueSet Practitioner specialty",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-01-29T08:41:18+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [
    {
      "name" : "Interop'Santé",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://interopsante.org"
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
  "description" : "The modalities of exercice of the practitioner, registered by an official organization for a period of time.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FRA",
          "display" : "France"
        }
      ]
    }
  ],
  "immutable" : true,
  "compose" : {
    "include" : [
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale"
      }
    ]
  }
}

```
