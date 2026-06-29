# Body Temperature Measurement Body Location value set - Guide d'implémentation FR Core v2.2.0

## ValueSet: Body Temperature Measurement Body Location value set 

 
SELECT SNOMED CT code system values that describe where on the body the temperature was measured. 

 **References** 

* [FR Core Observation Body Temperature Profile](StructureDefinition-fr-core-observation-body-temperature.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vsbody-temp-meas-body-location",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vsbody-temp-meas-body-location",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetBodyTemperatureMeasurementBodyLocation",
  "title" : "Body Temperature Measurement Body Location value set",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-29T12:39:39+00:00",
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
  "description" : "SELECT SNOMED CT code system values that describe where on the body the temperature was measured.",
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
        "code" : "117590005",
        "display" : "Ear structure (body structure)"
      },
      {
        "code" : "7569003",
        "display" : "Finger structure (body structure)"
      },
      {
        "code" : "52795006",
        "display" : "Forehead structure (body structure)"
      },
      {
        "code" : "279549004",
        "display" : "Nasal cavity structure (body structure)"
      },
      {
        "code" : "71836000",
        "display" : "Nasopharyngeal structure (body structure)"
      },
      {
        "code" : "74262004",
        "display" : "Oral cavity structure (body structure)"
      },
      {
        "code" : "34402009",
        "display" : "Rectum structure (body structure)"
      },
      {
        "code" : "422543003",
        "display" : "Structure of axillary fossa (body structure)"
      },
      {
        "code" : "29707007",
        "display" : "Toe structure (body structure)"
      },
      {
        "code" : "42859004",
        "display" : "Tympanic membrane structure (body structure)"
      },
      {
        "code" : "89837001",
        "display" : "Urinary bladder structure (body structure)"
      }]
    }]
  }
}

```
