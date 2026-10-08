# FR Core ValueSet Patient Contact Relationship Category - Guide d'implémentation FR Core v3.0.0-ballot

## ValueSet: FR Core ValueSet Patient Contact Relationship Category 

 **References** 

* [FR Core Patient Contact Relationship Category Extension](StructureDefinition-fr-core-patient-contact-relationship-category.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "version" : "3.0.0-ballot",
  "name" : "FRCoreValueSetPatientContactRelationshipCategory",
  "title" : "FR Core ValueSet Patient Contact Relationship Category",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-08T19:08:49+00:00",
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
      "version" : "3.0.0-ballot"
    }]
  }
}

```
