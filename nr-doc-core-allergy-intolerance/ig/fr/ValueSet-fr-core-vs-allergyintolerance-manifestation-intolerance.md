# FR Core ValueSet AllergyIntolerance Manifestation - Intolérance - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet AllergyIntolerance Manifestation - Intolérance 

 
Codes CIM-11 autorisés pour coder la manifestation d’une réaction lorsque AllergyIntolerance.type = intolérance : Chapitre 21 Symptômes, signes ou résultats d’examen clinique, non classés ailleurs. 

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
  "id" : "fr-core-vs-allergyintolerance-manifestation-intolerance",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-allergyintolerance-manifestation-intolerance",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetAllergyIntoleranceManifestationIntolerance",
  "title" : "FR Core ValueSet AllergyIntolerance Manifestation - Intolérance",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-16T15:48:58+00:00",
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
  "description" : "Codes CIM-11 autorisés pour coder la manifestation d'une réaction lorsque AllergyIntolerance.type = intolérance : Chapitre 21 Symptômes, signes ou résultats d'examen clinique, non classés ailleurs.",
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
        "value" : "21"
      }]
    }]
  }
}

```
