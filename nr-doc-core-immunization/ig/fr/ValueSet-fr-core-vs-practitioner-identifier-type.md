# FR Core ValueSet Practitioner identifier type - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Practitioner identifier type 

 
A coded type for an identifier that can be used to determine which identifier to use for a specific purpose (providers identification) 

 **References** 

* [FR Core Practitioner Profile](StructureDefinition-fr-core-practitioner.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-practitioner-identifier-type",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/valueset-warning",
    "valueMarkdown" : "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.h     tml) for a list of common identifier systems"
  }],
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-practitioner-identifier-type",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetPractitionerIdentifierType",
  "title" : "FR Core ValueSet Practitioner identifier type",
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
  "description" : "A coded type for an identifier that can be used to determine which identifier to use for a specific purpose (providers identification)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
      "version" : "5.0.0",
      "concept" : [{
        "code" : "EI",
        "display" : "Identifiant d'employé"
      }]
    },
    {
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
      "version" : "2.2.0",
      "concept" : [{
        "code" : "ADELI",
        "display" : "N° ADELI"
      },
      {
        "code" : "RPPS",
        "display" : "N° RPPS"
      },
      {
        "code" : "IDNPS",
        "display" : "Identifiant National de Professionnel de Santé"
      },
      {
        "code" : "INTRN",
        "display" : "Identifiant interne"
      }]
    },
    {
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne",
      "version" : "20240329120000",
      "concept" : [{
        "code" : "1",
        "display" : "Id cabinet ADELI/n° registre"
      },
      {
        "code" : "3",
        "display" : "FINESS/n° de registre"
      },
      {
        "code" : "4",
        "display" : "SIREN/n° de registre"
      },
      {
        "code" : "5",
        "display" : "SIRET/n° de registre"
      },
      {
        "code" : "6",
        "display" : "Id cabinet RPPS/n° de registre"
      }]
    }]
  }
}

```
