# FR Core Encounter Estimated Discharge Date Extension - Guide d'implémentation FR Core v2.2.0

## Extension: FR Core Encounter Estimated Discharge Date Extension 

This extension is used to specify the estimated discharge date of the patient

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [FR Core Encounter Profile](StructureDefinition-fr-core-encounter.md)
* Exemples pour ce/t/te Extension: [Encounter/FRCoreEncounterExample](Encounter-FRCoreEncounterExample.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-estimated-discharge-date)

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

Extension simple avec le type date : This extension is used to specify the estimated discharge date of the patient

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Vue d'ensemble** 

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension simple avec le type date : This extension is used to specify the estimated discharge date of the patient

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-core-estimated-discharge-date.csv), [Excel](../StructureDefinition-fr-core-estimated-discharge-date.xlsx), [Schematron](../StructureDefinition-fr-core-estimated-discharge-date.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-estimated-discharge-date",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-estimated-discharge-date",
  "version" : "2.2.0",
  "name" : "FRCoreEncounterEstimatedDischargeDateExtension",
  "title" : "FR Core Encounter Estimated Discharge Date Extension",
  "status" : "active",
  "date" : "2026-06-29T12:39:39+00:00",
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
  "description" : "This extension is used to specify the estimated discharge date of the patient",
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
    "expression" : "Encounter"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Estimated discharge date | Date de sortie estimée",
      "definition" : "This extension is used to specify the estimated discharge date of the patient"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-estimated-discharge-date"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "date"
      }]
    }]
  }
}

```
