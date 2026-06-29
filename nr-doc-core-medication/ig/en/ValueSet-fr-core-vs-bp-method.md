# FR Core ValueSet BP measurement method - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet BP measurement method 

 
A coded type for the blood pressure measurement method 

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
  "id" : "fr-core-vs-bp-method",
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
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
    "valueCode" : "pa"
  }],
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-bp-method",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetBPMeasurementMethod",
  "title" : "FR Core ValueSet BP measurement method",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-29T12:42:10+00:00",
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
  "description" : "A coded type for the blood pressure measurement method",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "37931006",
        "display" : "Auscultation (procedure)"
      },
      {
        "code" : "113011001",
        "display" : "Palpation (procedure)"
      },
      {
        "code" : "61284002",
        "display" : "Machine, device (physical object)"
      },
      {
        "code" : "10179008",
        "display" : "Invasive (qualifier value)"
      }]
    }]
  }
}

```
