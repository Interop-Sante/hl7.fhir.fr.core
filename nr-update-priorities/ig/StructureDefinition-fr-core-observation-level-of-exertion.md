# FR Core Observation Level Of Exertion Extension - Guide d'implémentation FR Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Observation Level Of Exertion Extension**

## Extension: FR Core Observation Level Of Exertion Extension 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-level-of-exertion | *Version*:2.2.0-ballot |
| Active as of 2025-12-29 | *Computable Name*:FRCoreObservationLevelOfExertionExtension |

Extension française définie dans le contexte du profil Vital Signs Resprate. Cette extension permet de préciser le niveau d’exercice du patient durant la mesure de la fréquence respiratoire (au repos, pendant l’effort, après l’effort). French extension defined in the context of the Vital Signs Resprate profile. This extension is used to define the level of exertion ( at rest, during exertion, post exertion) during the respiratory rate measure

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [FR Core Observation Body Temperature Profile](StructureDefinition-fr-core-observation-body-temperature.md), [FR Core Observation Heart Rate Profile](StructureDefinition-fr-core-observation-heartrate.md) and [FR Core Observation Respiratory Rate Profile](StructureDefinition-fr-core-observation-resp-rate.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-observation-level-of-exertion)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-observation-level-of-exertion.csv), [Excel](StructureDefinition-fr-core-observation-level-of-exertion.xlsx), [Schematron](StructureDefinition-fr-core-observation-level-of-exertion.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-observation-level-of-exertion",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-level-of-exertion",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreObservationLevelOfExertionExtension",
  "title" : "FR Core Observation Level Of Exertion Extension",
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
  "description" : "Extension française définie dans le contexte du profil Vital Signs Resprate. Cette extension permet de préciser le niveau d'exercice du patient durant la mesure de la fréquence respiratoire (au repos, pendant l'effort, après l'effort).\r\nFrench extension defined in the context of the Vital Signs Resprate profile. This extension is used to define the level of exertion ( at rest, during exertion, post exertion) during the respiratory rate measure",
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
        "short" : "FR Core Observation Level Of Exertion Extension",
        "definition" : "Extension française définie dans le contexte du profil Vital Signs Resprate. Cette extension permet de préciser le niveau d'exercice du patient durant la mesure de la fréquence respiratoire (au repos, pendant l'effort, après l'effort).\r\nFrench extension defined in the context of the Vital Signs Resprate profile. This extension is used to define the level of exertion ( at rest, during exertion, post exertion) during the respiratory rate measure"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-level-of-exertion"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
