# FR Core ValueSet Procedure code - Autre acte - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Procedure code - Autre acte 

 
Code CISIS à utiliser si l’acte n’est pas trouvé dans CCAM ni SNOMED CT. 

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
  "id" : "fr-core-vs-procedure-code-autre",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-procedure-code-autre",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetProcedureCodeAutre",
  "title" : "FR Core ValueSet Procedure code - Autre acte",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-16T15:06:55+00:00",
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
  "description" : "Code CISIS à utiliser si l'acte n'est pas trouvé dans CCAM ni SNOMED CT.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
      "version" : "202606190000",
      "concept" : [{
        "code" : "GEN-092.04.13",
        "display" : "Autre acte"
      }]
    }]
  }
}

```
