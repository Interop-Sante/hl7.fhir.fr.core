# Oxygen Saturation Body Location value set - Guide d'implémentation FR Core v3.0.0-ballot

## ValueSet: Oxygen Saturation Body Location value set 

 **References** 

* [FR Core Observation Blood Pressure Profile](StructureDefinition-fr-core-observation-bp.md)
* [FR Core Observation Oxygen Saturation Profile](StructureDefinition-fr-core-observation-saturation-oxygen.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-spo2-body-location",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-spo2-body-location",
  "version" : "3.0.0-ballot",
  "name" : "FRCoreValueSetSPO2BodyLocation",
  "title" : "Oxygen Saturation Body Location value set",
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
  "description" : "Select SNOMED CT codes. An set of codes for the location at which oxygen saturation was assessed.",
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
        "code" : "48800003",
        "display" : "Ear lobule structure (body structure)"
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
        "code" : "29707007",
        "display" : "Toe structure (body structure)"
      }]
    }]
  }
}

```
