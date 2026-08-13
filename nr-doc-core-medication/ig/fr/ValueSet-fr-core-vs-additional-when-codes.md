# FR Core ValueSet Additional When Codes - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Additional When Codes 

 
Jeu de valeurs à utiliser pour coder des périodes d’occurrence qui ne sont pas dans le jeu de valeurs http://hl7.org/fhir/ValueSet/event-timing. 

 **References** 

* [FR Core Additional When Values Extension](StructureDefinition-fr-core-additional-when-values.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-additional-when-codes",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-additional-when-codes",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetAdditionalWhenCodes",
  "title" : "FR Core ValueSet Additional When Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-13T08:58:16+00:00",
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
  "description" : "Jeu de valeurs à utiliser pour coder des périodes d'occurrence qui ne sont pas dans le jeu de valeurs http://hl7.org/fhir/ValueSet/event-timing.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-additional-when-codes",
      "version" : "2.2.0"
    }]
  }
}

```
