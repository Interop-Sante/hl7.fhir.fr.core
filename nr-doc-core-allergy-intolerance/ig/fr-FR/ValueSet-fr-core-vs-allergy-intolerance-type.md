# FR Core ValueSet Allergy Intolerance Type - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Allergy Intolerance Type 

 
Jeu de valeurs contenant les codes autorisés pour les types d’allergies et d’intolérances. 

 **References** 

* [FR Core AllergyIntolerance Profile](StructureDefinition-fr-core-allergy-intolerance.md)

### Définition logique (CLD)

 

### 

-------

 . 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-allergy-intolerance-type",
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
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-allergy-intolerance-type",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetAllergyIntoleranceType",
  "title" : "FR Core ValueSet Allergy Intolerance Type",
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
  "description" : "Jeu de valeurs contenant les codes autorisés pour les types d'allergies et d'intolérances.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/allergy-intolerance-type",
      "version" : "4.0.1",
      "concept" : [{
        "code" : "allergy",
        "display" : "allergie"
      },
      {
        "code" : "intolerance",
        "display" : "intolerance"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "56840009",
        "display" : "idiosyncrasie"
      },
      {
        "code" : "609396006",
        "display" : "hypersensibilité non allergique"
      }]
    }]
  }
}

```
