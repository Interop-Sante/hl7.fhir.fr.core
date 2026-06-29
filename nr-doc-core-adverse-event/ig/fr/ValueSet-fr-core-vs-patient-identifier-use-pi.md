# FR Core ValueSet Patient identifier use PI - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Patient identifier use PI 

 
Use autorisés pour les identifiants patients attribués par les hôpitaux (IPP). Authorized use for PI identifier. 

 **References** 

* [FR Core Patient Profile](StructureDefinition-fr-core-patient.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-patient-identifier-use-pi",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-identifier-use-pi",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetPatientIdentifierUsePI",
  "title" : "FR Core ValueSet Patient identifier use PI",
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
  "description" : "Use autorisés pour les identifiants patients attribués par les hôpitaux (IPP).\r\nAuthorized use for PI identifier.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "valueSet" : ["http://hl7.org/fhir/ValueSet/identifier-use|4.0.1"]
    }],
    "exclude" : [{
      "system" : "http://hl7.org/fhir/identifier-use",
      "version" : "4.0.1",
      "concept" : [{
        "code" : "official"
      }]
    }]
  }
}

```
