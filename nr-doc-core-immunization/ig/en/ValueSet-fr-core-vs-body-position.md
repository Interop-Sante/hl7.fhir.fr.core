# Body Position value set - Guide d'implémentation FR Core v2.2.0

## ValueSet: Body Position value set 

 
SELECT SNOMED CT code system values the position in which the individual was in during a measurement. 

 **References** 

* [FR Core Observation Body Position Ext Extension](StructureDefinition-fr-core-observation-body-position-ext.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-body-position",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-body-position",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetBodyPosition",
  "title" : "Body Position value set",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-29T15:19:05+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [{
    "name" : "Interop'Santé",
    "telecom" : [{
      "system" : "url",
      "value" : "http://interopsante.org"
    }]
  },
  {
    "name" : "InteropSanté",
    "telecom" : [{
      "system" : "email",
      "value" : "fhir@interopsante.org",
      "use" : "work"
    }]
  }],
  "description" : "SELECT SNOMED CT code system values the position in which the individual was in during a measurement.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "30212006",
        "display" : "Fowler's position (finding)"
      },
      {
        "code" : "26527006",
        "display" : "Inverse Trendelenburg position (finding)"
      },
      {
        "code" : "102536004",
        "display" : "Left lateral decubitus position (finding)"
      },
      {
        "code" : "414585002",
        "display" : "Left lateral tilt (finding)"
      },
      {
        "code" : "10904000",
        "display" : "Orthostatic body position (finding)"
      },
      {
        "code" : "1240000",
        "display" : "Prone body position (finding)"
      },
      {
        "code" : "102538003",
        "display" : "Recumbent body position (finding)"
      },
      {
        "code" : "423413008",
        "display" : "Reverse trendelenburg positioning (finding)"
      },
      {
        "code" : "102535000",
        "display" : "Right lateral decubitus position (finding)"
      },
      {
        "code" : "415346000",
        "display" : "Right lateral tilt (finding)"
      },
      {
        "code" : "33586001",
        "display" : "Sitting position (finding)"
      },
      {
        "code" : "40199007",
        "display" : "Supine body position (finding)"
      },
      {
        "code" : "34106002",
        "display" : "Trendelenburg position (finding)"
      }]
    }]
  }
}

```
