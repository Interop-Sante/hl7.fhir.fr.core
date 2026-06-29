# FR Core ValueSet Organization identifier type - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Organization identifier type 

 
A coded type for an identifier that can be used to determine which identifier to use for a specific purpose (Organizations). 

 **References** 

* [FR Core Organization Etablissement Profile](StructureDefinition-fr-core-organization-etablissement.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-organization-identifier-type",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/valueset-warning",
    "valueMarkdown" : "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.h     tml) for a list of common identifier systems"
  }],
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-organization-identifier-type",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetOrganizationIdentifierType",
  "title" : "FR Core ValueSet Organization identifier type",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-29T10:03:57+00:00",
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
  "description" : "A coded type for an identifier that can be used to determine which identifier to use for a specific purpose (Organizations).",
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
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
      "version" : "2.2.0",
      "concept" : [{
        "code" : "FINEJ",
        "display" : "FINESS d'entité juridique"
      },
      {
        "code" : "FINEG",
        "display" : "FINESS d'entité géographique"
      },
      {
        "code" : "SIREN",
        "display" : "Identification de l'organisation au SIREN"
      },
      {
        "code" : "SIRET",
        "display" : "Identification de l'organisation au SIRET"
      },
      {
        "code" : "IDNST",
        "display" : "Identification nationale de structure définie par l’ANS dans le CI_SIS"
      },
      {
        "code" : "INTRN",
        "display" : "Identifiant interne"
      },
      {
        "code" : "EXTRN",
        "display" : "Identifiant externe"
      },
      {
        "code" : "RPPSRG",
        "display" : "N° RPPS Rang"
      }]
    }]
  }
}

```
