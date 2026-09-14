# FR Core ValueSet Condition Code - Médecine de ville - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Condition Code - Médecine de ville 

 
CISP-2 (ICPC-2), CISP-3 (ICPC-3), DRC (SFMG) : code problème en médecine de ville 

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
  "id" : "fr-core-vs-condition-code-medecine-ville",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-condition-code-medecine-ville",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetConditionCodeMedecineVille",
  "title" : "FR Core ValueSet Condition Code - Médecine de ville",
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
  "description" : "CISP-2 (ICPC-2), CISP-3 (ICPC-3), DRC (SFMG) : code problème en médecine de ville",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/sid/icpc-2"
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/ICPC-3"
    },
    {
      "system" : "https://www.sfmg.fr"
    }]
  }
}

```
