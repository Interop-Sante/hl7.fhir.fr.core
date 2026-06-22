# FR Core CodeSystem Patient Contact Relationship Category - Guide d'implémentation FR Core v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem Patient Contact Relationship Category**

## CodeSystem: FR Core CodeSystem Patient Contact Relationship Category 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-patient-contact-relationship-category | *Version*:2.2.0 |
| Active as of 2026-06-22 | *Computable Name*:FRCoreCodeSystemPatientContactRelationshipCategory |

 
Catégorie de la relation du contact patient : rôle ou type de relation 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetPatientContactRelationshipCategory](ValueSet-fr-core-vs-patient-contact-relationship-category.md)



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
  "date" : "2026-06-22T14:28:00+00:00",
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
