# FR Core ValueSet Allergy Substance - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Allergy Substance 

 
Jeu de valeurs permettant de coder la substance responsable d’une allergie. 

 **References** 

* [FR Core AllergyIntolerance Profile](StructureDefinition-fr-core-allergy-intolerance.md)

### Définition logique (CLD)

 

### 

No Expansion for this valueset (Unknown Code System)

-------

 . 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-allergy-substance",
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
  }],
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-allergy-substance",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetAllergySubstance",
  "title" : "FR Core ValueSet Allergy Substance",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-29T09:28:38+00:00",
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
  "description" : "Jeu de valeurs permettant de coder la substance responsable d'une allergie.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://smt.esante.gouv.fr/terminologie-sms",
      "version" : "2026-05"
    }]
  }
}

```
