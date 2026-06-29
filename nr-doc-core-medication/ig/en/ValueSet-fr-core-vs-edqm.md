# FR Core ValueSet EDQM - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet EDQM 

 
Formes galéniques issues du CodeSystem EDQM fourni par le SMT (classe PDF). 

 **References** 

* [FR Core Medication Profile](StructureDefinition-fr-core-medication.md)
* [FR Core MedicationAdministration Profile](StructureDefinition-fr-core-medication-administration.md)
* [FR Core MedicationDispense Profile](StructureDefinition-fr-core-medication-dispense.md)
* [FR Core MedicationRequest Profile](StructureDefinition-fr-core-medication-request.md)
* [FR Core MedicationStatement Profile](StructureDefinition-fr-core-medication-statement.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-edqm",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-edqm",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetEDQM",
  "title" : "FR Core ValueSet EDQM",
  "status" : "active",
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
  "description" : "Formes galéniques issues du CodeSystem EDQM fourni par le SMT (classe PDF).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://smt.esante.gouv.fr/terminologie-standardterms",
      "version" : "2025-03-19",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "PDF"
      }]
    }]
  }
}

```
