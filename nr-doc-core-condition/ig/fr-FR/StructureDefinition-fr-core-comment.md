# FR Core Comment Extension - Guide d'implémentation FR Core v2.2.0

## : FR Core Comment Extension 

Ajout d’un commentaire sur un dataElement d’une ressource. Add a comment on a dataElement of a resource

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [FR Core Patient Profile](StructureDefinition-fr-core-patient.md)
* Exemples pour ce/t/te Extension: [Patient/FRCorePatientINSExample](Patient-FRCorePatientINSExample.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-comment)

### 

 . 

*   
*   
*   
*   

#### Contraintes

** Résumé **

Extension simple avec le type string : Ajout d'un commentaire sur un dataElement d'une ressource. Add a comment on a dataElement of a resource

**[Maturité](http://hl7.org/fhir/versions.html#maturity)**: 1

 **Differential View** 

#### Contraintes

** Résumé **

Extension simple avec le type string : Ajout d'un commentaire sur un dataElement d'une ressource. Add a comment on a dataElement of a resource

**[Maturité](http://hl7.org/fhir/versions.html#maturity)**: 1

 

 , ,  



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-comment",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
    "valueCode" : "fhir"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  }],
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-comment",
  "version" : "2.2.0",
  "name" : "FRCoreCommentExtension",
  "title" : "FR Core Comment Extension",
  "status" : "active",
  "date" : "2026-06-29T15:18:50+00:00",
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
  "description" : "Ajout d'un commentaire sur un dataElement d'une ressource.\r\nAdd a comment on a dataElement  of a resource",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Patient.contact"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Comment on element Patient.contact | Commentaire sur l'élément Patient.contact",
      "definition" : "Ajout d'un commentaire sur un dataElement d'une ressource.\r\nAdd a comment on a dataElement  of a resource"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-comment"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
