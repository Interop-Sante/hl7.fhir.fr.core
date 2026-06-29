# FR Core Assembly Order Extension - Guide d'implémentation FR Core v2.2.0

## Extension: FR Core Assembly Order Extension 

A code that represents the preferred display order of the components of this human name.

**Context of Use**

**Usage info**

**Utilisations:**

* Ce Extension n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-human-name-assembly-order)

### Vues formelles du contenu de l'extension

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension simple avec le type code : A code that represents the preferred display order of the components of this human name.

**[Maturité](http://hl7.org/fhir/versions.html#maturity)**: 1

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensemble** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension simple avec le type code : A code that represents the preferred display order of the components of this human name.

**[Maturité](http://hl7.org/fhir/versions.html#maturity)**: 1

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-core-human-name-assembly-order.csv), [Excel](../StructureDefinition-fr-core-human-name-assembly-order.xlsx), [Schematron](../StructureDefinition-fr-core-human-name-assembly-order.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-human-name-assembly-order",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
    "valueCode" : "fhir"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  }],
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-human-name-assembly-order",
  "version" : "2.2.0",
  "name" : "FRCoreAssemblyOrderExtension",
  "title" : "FR Core Assembly Order Extension",
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
  "description" : "A code that represents the preferred display order of the components of this human name.",
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
    "expression" : "HumanName"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Preferred display order of name parts",
      "definition" : "A code that represents the preferred display order of the components of this human name."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-human-name-assembly-order"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "A code that represents the preferred display order of the components of a human name.",
        "valueSet" : "http://hl7.org/fhir/ValueSet/name-assembly-order|4.0.1"
      }
    }]
  }
}

```
