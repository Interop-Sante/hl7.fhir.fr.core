# FR Core ValueSet Patient identifier type - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Patient identifier type 

 
A coded type for an identifier that can be used to determine which identifier to use for a specific purpose (identification of a patient). 

 **References** 

* [FR Core Patient Profile](StructureDefinition-fr-core-patient.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-patient-identifier-type",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-identifier-type",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetPatientIdentifierType",
  "title" : "FR Core ValueSet Patient identifier type",
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
  "description" : "A coded type for an identifier that can be used to determine which identifier to use for a specific purpose (identification of a patient).",
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
        "code" : "PPN",
        "display" : "Passport Number"
      },
      {
        "code" : "PN",
        "display" : "Person Number"
      },
      {
        "code" : "PI",
        "display" : "Patient Identifier"
      },
      {
        "code" : "RRI",
        "display" : "Regional Registry ID"
      },
      {
        "code" : "NH",
        "display" : "Numéro de sécurité sociale"
      }]
    },
    {
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
      "version" : "2.2.0",
      "concept" : [{
        "code" : "NNFRA",
        "display" : "National Person Identifier where the FRA is the ISO table 3166 3-character (alphabetic) country code"
      },
      {
        "code" : "NDP",
        "display" : "Identifiant du patient au Dossier Pharmaceutique"
      },
      {
        "code" : "INS-C",
        "display" : "Identifiant National de Santé Calculé"
      },
      {
        "code" : "INS-NIA",
        "display" : "NIR temporaire"
      },
      {
        "code" : "INS-NIR",
        "display" : "NIR définitif"
      }]
    }]
  }
}

```
