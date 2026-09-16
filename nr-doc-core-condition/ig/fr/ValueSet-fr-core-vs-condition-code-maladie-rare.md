# FR Core ValueSet Condition Code - Maladie rare - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Condition Code - Maladie rare 

 
ORPHAcode (Orphanet) : codage des maladies rares 

 **References** 

Ce jeu de valeurs n'est pas utilisé ici ; il peut être utilisé autre part (par exemple dans les spécifications et / ou implémentations qui utilisent ce contenu)

### Définition logique (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-condition-code-maladie-rare",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-condition-code-maladie-rare",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetConditionCodeMaladieRare",
  "title" : "FR Core ValueSet Condition Code - Maladie rare",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-16T08:14:25+00:00",
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
  "description" : "ORPHAcode (Orphanet) : codage des maladies rares",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.orpha.net"
    }]
  }
}

```
