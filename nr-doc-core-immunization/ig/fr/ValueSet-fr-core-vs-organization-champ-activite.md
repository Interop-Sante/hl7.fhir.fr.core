# FR Core ValueSet Organization Champ Activite - Champ d'activité clinique de l'organisation type UF - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Organization Champ Activite - Champ d'activité clinique de l'organisation type UF 

 
Champ d’activité d’une organisation type UF. 

 **References** 

* [FR Core Organization Extension - Champ d'activité](StructureDefinition-fr-core-organization-champ-activite.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-organization-champ-activite",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-organization-champ-activite",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetOrganizationChampActivite",
  "title" : "FR Core ValueSet Organization Champ Activite - Champ d'activité clinique de l'organisation type UF",
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
  "description" : "Champ d'activité d'une organisation type UF.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "immutable" : true,
  "compose" : {
    "include" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-champ-activite",
      "version" : "2.2.0"
    }]
  }
}

```
