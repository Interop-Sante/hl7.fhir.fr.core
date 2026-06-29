# FR Core Organization Short Name Extension - Guide d'implémentation FR Core v2.2.0

## Extension: FR Core Organization Short Name Extension 

Libellé court de l’organisation

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [FR Core Organization Profile](StructureDefinition-fr-core-organization.md)
* Exemples pour ce/t/te Extension: [UAC 01 Dialyse](Organization-hopitaltest-uac-4420-uac-01.md), [UAC 02 Dialyse](Organization-hopitaltest-uac-4420-uac-02.md), [UF Dialyse](Organization-hopitaltest-uf-4420-dialyse.md), [UF Endocrino Diabeto](Organization-hopitaltest-uf-4701-endocrino-diab.md) and [UF Nutrition](Organization-hopitaltest-uf-4705-nutrition.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-organization-short-name)

### Vues formelles du contenu de l'extension

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension simple avec le type string : Libellé court de l'organisation

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Vue d'ensemble** 

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension simple avec le type string : Libellé court de l'organisation

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-core-organization-short-name.csv), [Excel](../StructureDefinition-fr-core-organization-short-name.xlsx), [Schematron](../StructureDefinition-fr-core-organization-short-name.sch) 



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
  "date" : "2026-06-29T10:25:23+00:00",
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
