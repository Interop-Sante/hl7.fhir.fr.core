# FR Core ValueSet Encounter class - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Encounter class 

 
A set of codes that can be used to indicate the class of the encounter. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-encounter-class",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "informative"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 2
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
    "valueCode" : "pa"
  }],
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-encounter-class",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetEncounterClass",
  "title" : "FR Core ValueSet Encounter class",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-29T12:41:53+00:00",
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
  "description" : "A set of codes that can be used to indicate the class of the encounter.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "version" : "10.0.0",
      "concept" : [{
        "code" : "ACUTE",
        "display" : "Inpatient acute"
      },
      {
        "code" : "NONAC",
        "display" : "inpatient non-acute"
      },
      {
        "code" : "PRENC",
        "display" : "Pre-admission"
      },
      {
        "code" : "SS",
        "display" : "Short stay"
      },
      {
        "code" : "VR",
        "display" : "Virtual"
      }]
    }]
  }
}

```
