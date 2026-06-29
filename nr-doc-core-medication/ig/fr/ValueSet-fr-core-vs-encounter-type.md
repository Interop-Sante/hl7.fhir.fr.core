# FR Core ValueSet Encounter type - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Encounter type 

 
Jeu de valeurs des types de rencontre. A coded type for an encounter 

 **References** 

* [FR Core Encounter Profile](StructureDefinition-fr-core-encounter.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-encounter-type",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/valueset-warning",
    "valueMarkdown" : "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.html) for a list of common identifier systems"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "informative"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
    "valueCode" : "fhir"
  }],
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-encounter-type",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetEncounterType",
  "title" : "FR Core ValueSet Encounter type",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Jeu de valeurs des types de rencontre.\r\nA coded type for an encounter",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0007",
      "version" : "3.0.0",
      "concept" : [{
        "code" : "C",
        "display" : "Elective/Confort|Confort"
      },
      {
        "code" : "L",
        "display" : "Labor and delivery|Accouchement maternité"
      },
      {
        "code" : "N",
        "display" : "Newborn (Birth in healthcare facility)|Nouveau né"
      },
      {
        "code" : "R",
        "display" : "Routine|Séance"
      },
      {
        "code" : "U",
        "display" : "Emergency|Caractère d’urgence aigue du problème quel que soit le service d’entrée"
      }]
    },
    {
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-type-admission",
      "version" : "2.2.0",
      "concept" : [{
        "code" : "RM",
        "display" : "Rétrocession de médicament"
      },
      {
        "code" : "IE",
        "display" : "Prestation inter-établissements"
      }]
    }]
  }
}

```
