# FR Core ValueSet Vaccine code CIS - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Vaccine code CIS 

 
Codes issus de la Base de Données Publique des Médicaments (BDPM) pour identifier les vaccins par leur code CIS (Code Identifiant de Spécialité). 

 **References** 

* [FR Core Immunization Profile](StructureDefinition-fr-core-immunization.md)

### Définition logique (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-vaccine-code-cis",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-vaccine-code-cis",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetVaccineCodeCIS",
  "title" : "FR Core ValueSet Vaccine code CIS",
  "status" : "active",
  "date" : "2026-06-29T15:19:05+00:00",
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
  "description" : "Codes issus de la Base de Données Publique des Médicaments (BDPM) pour identifier les vaccins par leur code CIS (Code Identifiant de Spécialité).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://smt.esante.gouv.fr/terminologie-bdpm",
      "version" : "2026-05-05"
    }]
  }
}

```
