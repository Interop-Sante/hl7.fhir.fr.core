# FR Core ValueSet Encounter discharge disposition - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Encounter discharge disposition 

 
Circonstances de sortie de l’hôpital. This value set defines a set of codes that can be used to where the patient left the hospital 

 **References** 

* [FR Core Encounter Profile](StructureDefinition-fr-core-encounter.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-encounter-discharge-disposition",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/valueset-warning",
    "valueMarkdown" : "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.h     tml) for a list of common identifier systems"
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
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-encounter-discharge-disposition",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetEncounterDischargeDisposition",
  "title" : "FR Core ValueSet Encounter discharge disposition",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-29T09:30:52+00:00",
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
  "description" : "Circonstances de sortie de l'hôpital.\r\nThis value set defines a set of codes that can be used to where the patient left the hospital",
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
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-circonstances-sortie",
      "version" : "2.2.0"
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/discharge-disposition",
      "version" : "1.0.1"
    }]
  }
}

```
