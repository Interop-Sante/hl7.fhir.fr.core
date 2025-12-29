# FR Core Organization Total Number Of Theorical Accomodation Space Extension - Guide d'implémentation FR Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Organization Total Number Of Theorical Accomodation Space Extension**

## Extension: FR Core Organization Total Number Of Theorical Accomodation Space Extension 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-number-of-theorical-accomadation-space | *Version*:2.2.0-ballot |
| Active as of 2025-12-29 | *Computable Name*:FRCoreOrganizationTotalNumberOfTheoricalAccomodationSpaceExtension |

Nombre total de places d’hébergement théoriques

Total number of theorical accomodation space

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [FR Core Organization UF Profile](StructureDefinition-fr-core-organization-uf.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-organization-number-of-theorical-accomadation-space)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-organization-number-of-theorical-accomadation-space.csv), [Excel](StructureDefinition-fr-core-organization-number-of-theorical-accomadation-space.xlsx), [Schematron](StructureDefinition-fr-core-organization-number-of-theorical-accomadation-space.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-organization-number-of-theorical-accomadation-space",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-number-of-theorical-accomadation-space",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreOrganizationTotalNumberOfTheoricalAccomodationSpaceExtension",
  "title" : "FR Core Organization Total Number Of Theorical Accomodation Space Extension",
  "status" : "active",
  "date" : "2025-12-29T16:43:45+00:00",
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
  "description" : "Nombre total de places d'hébergement théoriques\n\rTotal number of theorical accomodation space",
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
      "expression" : "Organization"
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
        "short" : "FR Core Organization Total Number Of Theorical Accomodation Space Extension",
        "definition" : "Nombre total de places d'hébergement théoriques\n\rTotal number of theorical accomodation space"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-number-of-theorical-accomadation-space"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      }
    ]
  }
}

```
