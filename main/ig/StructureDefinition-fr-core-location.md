# FR Core Location Profile - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Location Profile**

## Resource Profile: FR Core Location Profile 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location | *Version*:2.2.0-ballot-2 |
| Active as of 2026-01-29 | *Computable Name*:FRCoreLocationProfile |

 
Ressource Location adaptée au contexte français. Cette ressource est utilisée pour représenter un lieu physique, telle qu’une salle d’examen, un lit d’hôpital ou une chambre d’hôpital. 

### Usage

La ressource Location est utilisée pour représenter chaque élément physique d’un établissement.

Il est possible de définir des coordonnées précises pour chaque élément de lieu (voir `position`). Ces coordonnées sont utiles soit en interne à l’établissement soit pour le patient. Les coordonnées sont définies par des données WGS84, qui correspondent aux coordonnées GPS exprimées sous forme de latitude et longitude.

### Ajout du profil FR

En plus de préciser les types de lieu utilisables avec les ressources `Location`, le profil permet de définir :

* le type de chambre
* la position d’une lit dans une chambre

**Utilisations:**

* Référer à ce Profil: [FR Core Appointment Profile](StructureDefinition-fr-core-appointment.md), [FR Core Encounter Profile](StructureDefinition-fr-core-encounter.md), [FR Core Healthcare Service Profile](StructureDefinition-fr-core-healthcare-service.md), [FR Core Practitioner Role](StructureDefinition-fr-core-practitioner-role.md) and [FR Core Schedule Profile](StructureDefinition-fr-core-schedule.md)
* Exemples pour ce Profil: [Lit Fenetre - chambre 04](Location-hopitaltest-endocrino-ch04-litF.md), [Chambre 04](Location-hopitaltest-endocrino-ch04.md) and [Salle d'examen 01](Location-hopitaltest-salle-examen-01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-location)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-location.csv), [Excel](StructureDefinition-fr-core-location.xlsx), [Schematron](StructureDefinition-fr-core-location.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-location",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location",
  "version" : "2.2.0-ballot-2",
  "name" : "FRCoreLocationProfile",
  "title" : "FR Core Location Profile",
  "status" : "active",
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
  "description" : "Ressource Location adaptée au contexte français. \nCette ressource est utilisée pour représenter un lieu physique, telle qu'une salle d'examen, \nun lit d'hôpital ou une chambre d'hôpital. ",
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
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Location",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Location|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Location",
        "path" : "Location",
        "constraint" : [
          {
            "key" : "inv-location-type-chambre",
            "severity" : "error",
            "human" : "Location Type Chambre",
            "expression" : "extension('http://fhir.fr/StructureDefinition/fr-core-location-type-chambre').exists() implies type.coding.where(code = 'CHAMB').exists()",
            "source" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location|2.2.0-ballot-2"
          },
          {
            "key" : "inv-location-type-lit",
            "severity" : "error",
            "human" : "Location Type Lit",
            "expression" : "extension('http://fhir.fr/StructureDefinition/fr-core-location-position-lit').exists() implies type.coding.where(code = 'LIT').exists()",
            "source" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location|2.2.0-ballot-2"
          }
        ]
      },
      {
        "id" : "Location.meta.profile",
        "path" : "Location.meta.profile",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "$this"
            }
          ],
          "description" : "Slice based on the canonical url value",
          "rules" : "open"
        }
      },
      {
        "id" : "Location.meta.profile:fr-canonical",
        "path" : "Location.meta.profile",
        "sliceName" : "fr-canonical",
        "min" : 0,
        "max" : "1",
        "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location|2.2.0-ballot-2"
      },
      {
        "id" : "Location.extension",
        "path" : "Location.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Location.extension:typeChambre",
        "path" : "Location.extension",
        "sliceName" : "typeChambre",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location-type-chambre|2.2.0-ballot-2"
            ]
          }
        ]
      },
      {
        "id" : "Location.extension:positionLit",
        "path" : "Location.extension",
        "sliceName" : "positionLit",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location-position-lit|2.2.0-ballot-2"
            ]
          }
        ]
      },
      {
        "id" : "Location.type",
        "path" : "Location.type",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-location-type|2.2.0-ballot-2"
        }
      }
    ]
  }
}

```
