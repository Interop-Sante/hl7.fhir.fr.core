# FR Core ValueSet Organization Etablisement type - Guide d'implémentation FR Core v3.0.0-ballot

## ValueSet: FR Core ValueSet Organization Etablisement type 

 **References** 

* [FR Core Organization Etablissement Profile](StructureDefinition-fr-core-organization-etablissement.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-organization-etablissement-type",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-organization-etablissement-type",
  "version" : "3.0.0-ballot",
  "name" : "FRCoreValueSetOrganizationEtablissementType",
  "title" : "FR Core ValueSet Organization Etablisement type",
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
  "description" : "Types d'organisation représentant des établissements.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307",
      "version" : "3.0.0-ballot",
      "concept" : [{
        "code" : "LEGAL-ENTITY",
        "display" : "Entité légale"
      },
      {
        "code" : "GEOGRAPHICAL-ENTITY",
        "display" : "Entité géographique"
      }]
    }]
  }
}

```
