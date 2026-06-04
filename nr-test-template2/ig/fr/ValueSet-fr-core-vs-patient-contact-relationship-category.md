# FR Core ValueSet Patient Contact Relationship Category - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Patient Contact Relationship Category 

 
Catégorie de la relation du contact patient : rôle ou type de relation 

 **References** 

* [FR Core Patient Contact Relationship Category Extension](StructureDefinition-fr-core-patient-contact-relationship-category.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-patient-contact-relationship-category",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-contact-relationship-category",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetPatientContactRelationshipCategory",
  "title" : "FR Core ValueSet Patient Contact Relationship Category",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-04T15:45:54+00:00",
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
  "compose" : {
    "include" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-patient-contact-relationship-category",
      "version" : "2.2.0"
    }]
  }
}

```
