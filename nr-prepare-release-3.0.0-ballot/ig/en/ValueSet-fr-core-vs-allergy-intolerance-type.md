# FR Core ValueSet Allergy Intolerance Type - Guide d'implémentation FR Core v3.0.0-ballot

## ValueSet: FR Core ValueSet Allergy Intolerance Type 

 **References** 

* [FR Core AllergyIntolerance Profile](StructureDefinition-fr-core-allergy-intolerance.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-allergy-intolerance-type",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-allergy-intolerance-type",
  "version" : "3.0.0-ballot",
  "name" : "FRCoreValueSetAllergyIntoleranceType",
  "title" : "FR Core ValueSet Allergy Intolerance Type",
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
