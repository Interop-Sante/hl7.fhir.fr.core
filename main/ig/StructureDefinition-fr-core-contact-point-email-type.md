# FR Core Contact Point Email Type Extension - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Contact Point Email Type Extension**

## Extension: FR Core Contact Point Email Type Extension 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point-email-type | *Version*:2.2.0-ballot |
| Active as of 2025-11-07 | *Computable Name*:FRCoreContactPointEmailTypeExtension |

Extension permettant d’indiquer le type d’adresse email d’un ContactPoint.

This extension allows to specify the type of mail used to contact the person.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [FR Core Contact Point Profile](StructureDefinition-fr-core-contact-point.md)
* Examples for this Extension: [Practitioner/FRCorePractitionerExample](Practitioner-FRCorePractitionerExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-contact-point-email-type)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-contact-point-email-type.csv), [Excel](StructureDefinition-fr-core-contact-point-email-type.xlsx), [Schematron](StructureDefinition-fr-core-contact-point-email-type.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-contact-point-email-type",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point-email-type",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreContactPointEmailTypeExtension",
  "title" : "FR Core Contact Point Email Type Extension",
  "status" : "active",
  "date" : "2025-11-07T17:36:51+00:00",
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
  "description" : "Extension permettant d'indiquer le type d'adresse email d'un ContactPoint.\n\r This extension allows to specify the type of mail used to contact the person.",
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
      "expression" : "ContactPoint"
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
        "short" : "Type of email | type de messagerie électronique",
        "definition" : "Extension permettant d'indiquer le type d'adresse email d'un ContactPoint.\n\r This extension allows to specify the type of mail used to contact the person.",
        "max" : "1"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point-email-type"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-email-type"
        }
      }
    ]
  }
}

```
