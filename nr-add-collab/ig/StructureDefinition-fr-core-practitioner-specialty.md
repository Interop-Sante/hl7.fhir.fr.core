# FR Core Practitioner Specialty Extension - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Practitioner Specialty Extension**

## Extension: FR Core Practitioner Specialty Extension 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-specialty | *Version*:2.2.0-ballot |
| Active as of 2025-12-05 | *Computable Name*:FRCorePractitionerSpecialtyExtension |

This extension adds the element “specialty” to the FHIR Practitioner resource.

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [FR Core Practitioner Profile](StructureDefinition-fr-core-practitioner.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-practitioner-specialty)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-practitioner-specialty.csv), [Excel](StructureDefinition-fr-core-practitioner-specialty.xlsx), [Schematron](StructureDefinition-fr-core-practitioner-specialty.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-practitioner-specialty",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-specialty",
  "version" : "2.2.0-ballot",
  "name" : "FRCorePractitionerSpecialtyExtension",
  "title" : "FR Core Practitioner Specialty Extension",
  "status" : "active",
  "date" : "2025-12-05T08:30:09+00:00",
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
  "description" : "This extension adds the element \"specialty\" to the FHIR Practitioner resource.",
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
      "expression" : "Practitioner"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "FR Core Practitioner Specialty Extension",
        "definition" : "This extension adds the element \"specialty\" to the FHIR Practitioner resource."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-specialty"
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
          "strength" : "required",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-practitioner-specialty|2.2.0-ballot"
        }
      }
    ]
  }
}

```
