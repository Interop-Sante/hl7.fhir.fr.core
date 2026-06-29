# FR Core ValueSet Location type - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Location type 

 
Jeu de valeurs du rôle joué par un lieu. 
A role for a location 

 **References** 

* [FR Core Encounter Profile](StructureDefinition-fr-core-encounter.md)
* [FR Core Location Profile](StructureDefinition-fr-core-location.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-location-type",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-location-type",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetLocationType",
  "title" : "FR Core ValueSet Location type",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-29T09:30:52+00:00",
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
  "description" : "Jeu de valeurs du rôle joué par un lieu.\n\rA role for a location",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-type",
      "version" : "2.2.0"
    }]
  }
}

```
