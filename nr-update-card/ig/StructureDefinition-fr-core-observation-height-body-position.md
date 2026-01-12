# FR Core Observation Height Body Position Extension - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Observation Height Body Position Extension**

## Extension: FR Core Observation Height Body Position Extension 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-height-body-position | *Version*:2.2.0-ballot |
| Active as of 2026-01-12 | *Computable Name*:FRCoreObservationHeightBodyPositionExtension |

Extension utilisée par le profil FrObservationBodyHeight permettant de préciser la position du corps durant la mesure de la taille (le jeu de valeur associé est limité aux 2 valeurs lying et standing). Extension on the FrObservationBodyHeight to specify the position of the body during the measure of the height.

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [FR Core Observation Body Height Profile](StructureDefinition-fr-core-observation-body-height.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-observation-height-body-position)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-observation-height-body-position.csv), [Excel](StructureDefinition-fr-core-observation-height-body-position.xlsx), [Schematron](StructureDefinition-fr-core-observation-height-body-position.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-observation-height-body-position",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-height-body-position",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreObservationHeightBodyPositionExtension",
  "title" : "FR Core Observation Height Body Position Extension",
  "status" : "active",
  "date" : "2026-01-12T08:44:59+00:00",
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
  "description" : "Extension utilisée par le profil FrObservationBodyHeight permettant de préciser la position du corps durant la mesure de la taille (le jeu de valeur associé est limité aux 2 valeurs lying et standing).\r\nExtension on the FrObservationBodyHeight to specify the position of the body during the measure of the height.",
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
        "short" : "FR Core Observation Height Body Position Extension",
        "definition" : "Extension utilisée par le profil FrObservationBodyHeight permettant de préciser la position du corps durant la mesure de la taille (le jeu de valeur associé est limité aux 2 valeurs lying et standing).\r\nExtension on the FrObservationBodyHeight to specify the position of the body during the measure of the height."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-height-body-position"
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
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-height-body-position|2.2.0-ballot"
        }
      }
    ]
  }
}

```
