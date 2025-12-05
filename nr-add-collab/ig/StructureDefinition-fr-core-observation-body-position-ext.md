# FR Core Observation Body Position Ext Extension - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Observation Body Position Ext Extension**

## Extension: FR Core Observation Body Position Ext Extension 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-position-ext | *Version*:2.2.0-ballot |
| Active as of 2025-12-05 | *Computable Name*:FRCoreObservationBodyPositionExtExtension |

Extension CIMI (upgardée en FHIR R4) définie dans le contexte du profil Respiratory rate. Cette extension permet de préciser la position du corps lors de la mesure de la fréquence respiratoire. CIMI extension (in FHIR R4) defined in the context of the Respiratory Rate profile. This extension is used to specify the body position during the respiratory rate observation

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [FR Core Observation Heart Rate Profile](StructureDefinition-fr-core-observation-heartrate.md) and [FR Core Observation Respiratory Rate Profile](StructureDefinition-fr-core-observation-resp-rate.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-observation-body-position-ext)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-observation-body-position-ext.csv), [Excel](StructureDefinition-fr-core-observation-body-position-ext.xlsx), [Schematron](StructureDefinition-fr-core-observation-body-position-ext.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-observation-body-position-ext",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-position-ext",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreObservationBodyPositionExtExtension",
  "title" : "FR Core Observation Body Position Ext Extension",
  "status" : "active",
  "date" : "2025-12-05T08:32:19+00:00",
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
  "description" : "Extension CIMI (upgardée en FHIR R4) définie dans le contexte du profil Respiratory rate. Cette extension permet de préciser la position du corps lors de la mesure de la fréquence respiratoire.\r\nCIMI extension (in FHIR R4) defined in the context of the Respiratory Rate profile. This extension is used to specify the body position during the respiratory rate observation",
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
      "expression" : "Observation"
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
        "short" : "FR Core Observation Body Position Ext Extension",
        "definition" : "Extension CIMI (upgardée en FHIR R4) définie dans le contexte du profil Respiratory rate. Cette extension permet de préciser la position du corps lors de la mesure de la fréquence respiratoire.\r\nCIMI extension (in FHIR R4) defined in the context of the Respiratory Rate profile. This extension is used to specify the body position during the respiratory rate observation"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-position-ext"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "example",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-body-position|2.2.0-ballot"
        }
      }
    ]
  }
}

```
