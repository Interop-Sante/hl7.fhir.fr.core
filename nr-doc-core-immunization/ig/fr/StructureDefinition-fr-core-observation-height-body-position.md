# FR Core Observation Height Body Position Extension - Guide d'implémentation FR Core v2.2.0

## Extension: FR Core Observation Height Body Position Extension 

Extension utilisée par le profil FrObservationBodyHeight permettant de préciser la position du corps durant la mesure de la taille (le jeu de valeur associé est limité aux 2 valeurs lying et standing). Extension on the FrObservationBodyHeight to specify the position of the body during the measure of the height.

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [FR Core Observation Body Height Profile](StructureDefinition-fr-core-observation-body-height.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-observation-height-body-position)

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

Extension simple avec le type CodeableConcept : Extension utilisée par le profil FrObservationBodyHeight permettant de préciser la position du corps durant la mesure de la taille (le jeu de valeur associé est limité aux 2 valeurs lying et standing). Extension on the FrObservationBodyHeight to specify the position of the body during the measure of the height.

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensemble** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension simple avec le type CodeableConcept : Extension utilisée par le profil FrObservationBodyHeight permettant de préciser la position du corps durant la mesure de la taille (le jeu de valeur associé est limité aux 2 valeurs lying et standing). Extension on the FrObservationBodyHeight to specify the position of the body during the measure of the height.

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-core-observation-height-body-position.csv), [Excel](../StructureDefinition-fr-core-observation-height-body-position.xlsx), [Schematron](../StructureDefinition-fr-core-observation-height-body-position.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-observation-height-body-position",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-height-body-position",
  "version" : "2.2.0",
  "name" : "FRCoreObservationHeightBodyPositionExtension",
  "title" : "FR Core Observation Height Body Position Extension",
  "status" : "active",
  "date" : "2026-06-29T10:03:57+00:00",
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
  "description" : "Extension utilisée par le profil FrObservationBodyHeight permettant de préciser la position du corps durant la mesure de la taille (le jeu de valeur associé est limité aux 2 valeurs lying et standing).\r\nExtension on the FrObservationBodyHeight to specify the position of the body during the measure of the height.",
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
    "expression" : "Observation"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "FR Core Observation Height Body Position Extension",
      "definition" : "Extension utilisée par le profil FrObservationBodyHeight permettant de préciser la position du corps durant la mesure de la taille (le jeu de valeur associé est limité aux 2 valeurs lying et standing).\r\nExtension on the FrObservationBodyHeight to specify the position of the body during the measure of the height."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-height-body-position"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-height-body-position|2.2.0"
      }
    }]
  }
}

```
