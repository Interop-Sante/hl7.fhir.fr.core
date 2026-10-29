# FR Core ValueSet EDQM Form - Guide d'implémentation FR Core v3.0.0-ballot

## ValueSet: FR Core ValueSet EDQM Form 

 **References** 

* [FR Core Medication Profile](StructureDefinition-fr-core-medication.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-edqm-form",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-edqm-form",
  "version" : "3.0.0-ballot",
  "name" : "FRCoreValueSetEDQMForm",
  "title" : "FR Core ValueSet EDQM Form",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-29T12:51:27+00:00",
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
  "description" : "Formes pharmaceutiques (EDQM Standard Terms, classes PDF, BDF et CDF) utilisées pour coder la forme galénique d'un médicament (Medication.form).",
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
        "value" : "PDF"
      }]
    },
    {
      "system" : "https://smt.esante.gouv.fr/terminologie-standardterms",
      "version" : "2026-01-30",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "BDF"
      }]
    },
    {
      "system" : "https://smt.esante.gouv.fr/terminologie-standardterms",
      "version" : "2026-01-30",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "CDF"
      }]
    }]
  }
}

```
