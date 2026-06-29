# FR Core CodeSystem Patient Contact Relationship Category - Guide d'implémentation FR Core v2.2.0

## CodeSystem: FR Core CodeSystem Patient Contact Relationship Category 

 
Catégorie de la relation du contact patient : rôle ou type de relation 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* [FRCoreValueSetPatientContactRelationshipCategory](ValueSet-fr-core-vs-patient-contact-relationship-category.md)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-patient-contact-relationship-category",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-patient-contact-relationship-category",
  "version" : "2.2.0",
  "name" : "FRCoreCodeSystemPatientContactRelationshipCategory",
  "title" : "FR Core CodeSystem Patient Contact Relationship Category",
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
  "description" : "Catégorie de la relation du contact patient : rôle ou type de relation",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "role",
    "display" : "Rôle",
    "definition" : "Rôle du contact (ex : personne à prévenir, personne de confiance)"
  },
  {
    "code" : "relationType",
    "display" : "Type de relation",
    "definition" : "Type de relation familiale ou sociale (ex : mère, époux, enfant)"
  }]
}

```
