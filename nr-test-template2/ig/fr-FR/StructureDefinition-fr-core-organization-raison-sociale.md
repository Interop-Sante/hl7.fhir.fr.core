# FR Core Organization Raison Sociale Extension - Guide d'implémentation FR Core v2.2.0

## : FR Core Organization Raison Sociale Extension 

Raison Sociale l’organisation

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [FR Core Organization Etablissement Profile](StructureDefinition-fr-core-organization-etablissement.md)
* Exemples pour ce/t/te Extension: [CHRU CENTRE VILLE](Organization-hopitaltest-eg-4-members.md) and [CHRU RENNES](Organization-hopitaltest-ej-350005179.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-organization-raison-sociale)

### 

 . 

*   
*   
*   
*   

#### Contraintes

** Résumé **

Extension simple avec le type string : Raison Sociale l'organisation

 **Differential View** 

#### Contraintes

** Résumé **

Extension simple avec le type string : Raison Sociale l'organisation

 

 , ,  



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-organization-raison-sociale",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-raison-sociale",
  "version" : "2.2.0",
  "name" : "FRCoreOrganizationRaisonSocialeExtension",
  "title" : "FR Core Organization Raison Sociale Extension",
  "status" : "active",
  "date" : "2026-06-04T15:08:19+00:00",
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
  "description" : "Raison Sociale l'organisation",
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
    "expression" : "Organization"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "FR Core Organization Raison Sociale Extension",
      "definition" : "Raison Sociale l'organisation"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-raison-sociale"
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
