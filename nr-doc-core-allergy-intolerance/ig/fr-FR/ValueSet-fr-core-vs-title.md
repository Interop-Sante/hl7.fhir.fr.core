# FR Core ValueSet Title - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Title 

 
The Patient or person civility 

 **References** 

Ce jeu de valeurs n'est pas utilisé ici ; il peut être utilisé autre part (par exemple dans les spécifications et / ou implémentations qui utilisent ce contenu)

### Définition logique (CLD)

 

### 

-------

 . 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-title",
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
    "valueInteger" : 0
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
    "valueCode" : "fhir"
  }],
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-title",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetTitle",
  "title" : "FR Core ValueSet Title",
  "status" : "draft",
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
  "description" : "The Patient or person civility",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "immutable" : true,
  "compose" : {
    "include" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R11-CiviliteExercice/FHIR/TRE-R11-CiviliteExercice",
      "version" : "20231215120000"
    }]
  }
}

```
