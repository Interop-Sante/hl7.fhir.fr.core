# FR Core ValueSet Availability Schedule - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Availability Schedule 

 
Spécifications des périodes récurrentes. Specification of the recurrent periods 

 **References** 

* [FR Core Schedule availability time Extension](StructureDefinition-fr-core-schedule-availability-time.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-availability-time-rule",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/valueset-warning",
    "valueMarkdown" : "Availability Time Rule"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "informative"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
    "valueCode" : "fhir"
  }],
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-availability-time-rule",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetAvailabilityTimeRule",
  "title" : "FR Core ValueSet Availability Schedule",
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
  "description" : "Spécifications des périodes récurrentes.\r\nSpecification of the recurrent periods ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.ietf.org/rfc/rfc2445",
      "concept" : [{
        "code" : "SECONDLY",
        "display" : "Par seconde"
      },
      {
        "code" : "MINUTELY",
        "display" : "Par minute"
      },
      {
        "code" : "HOURLY",
        "display" : "Par heure"
      },
      {
        "code" : "DAILY",
        "display" : "Par jour"
      },
      {
        "code" : "WEEKLY",
        "display" : "Par semaine"
      },
      {
        "code" : "MONTHLY",
        "display" : "Par mois"
      },
      {
        "code" : "YEARLY",
        "display" : "Par an"
      }]
    }]
  }
}

```
