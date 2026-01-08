# FR Core Location Part Of Position Room Extension - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Location Part Of Position Room Extension**

## Extension: FR Core Location Part Of Position Room Extension 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location-position-room | *Version*:2.2.0-ballot |
| Active as of 2026-01-08 | *Computable Name*:FRCoreLocationPartOfPositionRoomExtension |

Position du lit dans la chambre. Position of the bed in the bedroom

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [FR Core Location Profile](StructureDefinition-fr-core-location.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-location-position-room)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-location-position-room.csv), [Excel](StructureDefinition-fr-core-location-position-room.xlsx), [Schematron](StructureDefinition-fr-core-location-position-room.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-location-position-room",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location-position-room",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreLocationPartOfPositionRoomExtension",
  "title" : "FR Core Location Part Of Position Room Extension",
  "status" : "active",
  "date" : "2026-01-08T13:27:28+00:00",
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
  "description" : "Position du lit dans la chambre.\r\nPosition of the bed in the bedroom",
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
      "expression" : "Location.partOf"
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
        "short" : "FR Core Location Part Of Position Room Extension",
        "definition" : "Position du lit dans la chambre.\r\nPosition of the bed in the bedroom"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location-position-room"
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
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-location-position-room|2.2.0-ballot"
        }
      }
    ]
  }
}

```
