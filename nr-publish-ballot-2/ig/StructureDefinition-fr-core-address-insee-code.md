# FR Core Address Insee Code Extension - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Address Insee Code Extension**

## Extension: FR Core Address Insee Code Extension 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code | *Version*:2.2.0-ballot-2 |
| Active as of 2026-01-28 | *Computable Name*:FRCoreAddressInseeCodeExtension |

Extension d’ajout du code insee (5 chiffres) à l’adresse postale. This extension adds the insee code (5 digits) to the address

This extension adds to the address data type:

* “Code commune INSEE” (5 digits)

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [FR Core Address Profile](StructureDefinition-fr-core-address.md)
* Exemples pour ce Extension: [Patient/FRCorePatientExample](Patient-FRCorePatientExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-address-insee-code)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-address-insee-code.csv), [Excel](StructureDefinition-fr-core-address-insee-code.xlsx), [Schematron](StructureDefinition-fr-core-address-insee-code.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-address-insee-code",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code",
  "version" : "2.2.0-ballot-2",
  "name" : "FRCoreAddressInseeCodeExtension",
  "title" : "FR Core Address Insee Code Extension",
  "status" : "active",
  "date" : "2026-01-28T08:22:20+00:00",
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
  "description" : "Extension d'ajout du code insee (5 chiffres) à l'adresse postale.\r\nThis extension adds the insee code (5 digits) to the address",
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
  "purpose" : "This extension adds to the address data type:\r\n-  \"Code commune INSEE\" (5 digits)",
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
      "expression" : "Address"
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
        "short" : "FR Core Address Insee Code Extension",
        "definition" : "Extension d'ajout du code insee (5 chiffres) à l'adresse postale.\r\nThis extension adds the insee code (5 digits) to the address"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code"
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
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-insee-code|2.2.0-ballot-2"
        }
      }
    ]
  }
}

```
