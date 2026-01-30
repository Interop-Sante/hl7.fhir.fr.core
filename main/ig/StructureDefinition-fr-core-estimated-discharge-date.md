# FR Core Encounter Estimated Discharge Date Extension - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Encounter Estimated Discharge Date Extension**

## Extension: FR Core Encounter Estimated Discharge Date Extension 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-estimated-discharge-date | *Version*:2.2.0-ballot-2 |
| Active as of 2026-01-30 | *Computable Name*:FRCoreEncounterEstimatedDischargeDateExtension |

This extension is used to specify the estimated discharge date of the patient

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [FR Core Encounter Profile](StructureDefinition-fr-core-encounter.md)
* Exemples pour ce Extension: [Encounter/FRCoreEncounterExample](Encounter-FRCoreEncounterExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-estimated-discharge-date)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-estimated-discharge-date.csv), [Excel](StructureDefinition-fr-core-estimated-discharge-date.xlsx), [Schematron](StructureDefinition-fr-core-estimated-discharge-date.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-estimated-discharge-date",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-estimated-discharge-date",
  "version" : "2.2.0-ballot-2",
  "name" : "FRCoreEncounterEstimatedDischargeDateExtension",
  "title" : "FR Core Encounter Estimated Discharge Date Extension",
  "status" : "active",
  "date" : "2026-01-30T10:25:45+00:00",
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
  "description" : "This extension is used to specify the estimated discharge date of the patient",
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
      "expression" : "Encounter"
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
        "short" : "Estimated discharge date | Date de sortie estimée",
        "definition" : "This extension is used to specify the estimated discharge date of the patient"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-estimated-discharge-date"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "date"
          }
        ]
      }
    ]
  }
}

```
