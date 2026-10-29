# FR Core ValueSet EDQM Route - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet EDQM Route 

 **References** 

* [FR Core MedicationAdministration Profile](StructureDefinition-fr-core-medication-administration.md)
* [FR Core MedicationRequest Profile](StructureDefinition-fr-core-medication-request.md)
* [FR Core MedicationStatement Profile](StructureDefinition-fr-core-medication-statement.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-edqm-route",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-edqm-route",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetEDQMRoute",
  "title" : "FR Core ValueSet EDQM Route",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-29T13:53:52+00:00",
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
  "description" : "Voies d'administration (EDQM Standard Terms, classe ROA) utilisées pour coder la voie d'administration d'un médicament (dosage.route).",
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
      "version" : "2026-01-30",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "ROA"
      }]
    }]
  }
}

```
