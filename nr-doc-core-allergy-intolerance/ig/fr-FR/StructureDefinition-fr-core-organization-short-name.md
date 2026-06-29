# FR Core Organization Short Name Extension - Guide d'implémentation FR Core v2.2.0

## : FR Core Organization Short Name Extension 

Libellé court de l’organisation

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [FR Core Organization Profile](StructureDefinition-fr-core-organization.md)
* Exemples pour ce/t/te Extension: [UAC 01 Dialyse](Organization-hopitaltest-uac-4420-uac-01.md), [UAC 02 Dialyse](Organization-hopitaltest-uac-4420-uac-02.md), [UF Dialyse](Organization-hopitaltest-uf-4420-dialyse.md), [UF Endocrino Diabeto](Organization-hopitaltest-uf-4701-endocrino-diab.md) and [UF Nutrition](Organization-hopitaltest-uf-4705-nutrition.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-organization-short-name)

### 

 . 

*   
*   
*   
*   

#### Contraintes

** Résumé **

Extension simple avec le type string : Libellé court de l'organisation

 **Differential View** 

#### Contraintes

** Résumé **

Extension simple avec le type string : Libellé court de l'organisation

 

 , ,  



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-organization-short-name",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-short-name",
  "version" : "2.2.0",
  "name" : "FRCoreOrganizationShortNameExtension",
  "title" : "FR Core Organization Short Name Extension",
  "status" : "active",
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
  "description" : "Libellé court de l'organisation",
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
      "short" : "FR Core Organization Short Name Extension",
      "definition" : "Libellé court de l'organisation"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-short-name"
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
