# FR Core ValueSet Condition Code - Allergie - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Condition Code - Allergie 

 
CIM-11 (Chapitre 04) : réactions allergiques ou d’hypersensibilité, terminologie absente de la CIM-10 

 **References** 

Ce jeu de valeurs n'est pas utilisé ici ; il peut être utilisé autre part (par exemple dans les spécifications et / ou implémentations qui utilisent ce contenu)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-condition-code-allergie",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-condition-code-allergie",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetConditionCodeAllergie",
  "title" : "FR Core ValueSet Condition Code - Allergie",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-14T12:47:40+00:00",
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
  "description" : "CIM-11 (Chapitre 04) : réactions allergiques ou d'hypersensibilité, terminologie absente de la CIM-10",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://smt.esante.gouv.fr/terminologie-cim11-mms",
      "version" : "2026-02",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "04"
      }]
    }]
  }
}

```
