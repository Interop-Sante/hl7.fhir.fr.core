# FR Core ValueSet Location Type Chambre - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Location Type Chambre 

 
Type de chambre 

 **References** 

* [FR Core Location Extension - Type de chambre](StructureDefinition-fr-core-location-type-chambre.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-location-type-chambre",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-location-type-chambre",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetLocationTypeChambre",
  "title" : "FR Core ValueSet Location Type Chambre",
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
  "description" : "Type de chambre",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-type-chambre",
      "version" : "2.2.0"
    }]
  }
}

```
