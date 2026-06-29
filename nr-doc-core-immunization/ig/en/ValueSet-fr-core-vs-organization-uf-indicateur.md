# FR Core ValueSet Organization UF Indicateur - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Organization UF Indicateur 

 
Indicateur d’une unité fonctionnelle. 

 **References** 

* [FR Core Organization Extension - Indicateur d'une unité fonctionnelle](StructureDefinition-fr-core-organization-uf-indicateur.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-organization-uf-indicateur",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-organization-uf-indicateur",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetOrganizationUFIndicateur",
  "title" : "FR Core ValueSet Organization UF Indicateur",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-29T10:25:23+00:00",
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
  "description" : "Indicateur d'une unité fonctionnelle.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-uf-indicateur",
      "version" : "2.2.0"
    }]
  }
}

```
