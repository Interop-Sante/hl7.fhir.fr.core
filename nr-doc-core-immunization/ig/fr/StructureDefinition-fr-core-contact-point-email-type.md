# FR Core Contact Point Email Type Extension - Guide d'implémentation FR Core v2.2.0

## Extension: FR Core Contact Point Email Type Extension 

Extension permettant d’indiquer le type d’adresse email d’un ContactPoint.

This extension allows to specify the type of mail used to contact the person.

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [FR Core Contact Point Profile](StructureDefinition-fr-core-contact-point.md)
* Exemples pour ce/t/te Extension: [Practitioner/FRCorePractitionerExample](Practitioner-FRCorePractitionerExample.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-contact-point-email-type)

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

Extension simple avec le type Coding : Extension permettant d'indiquer le type d'adresse email d'un ContactPoint.

This extension allows to specify the type of mail used to contact the person.

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensemble** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension simple avec le type Coding : Extension permettant d'indiquer le type d'adresse email d'un ContactPoint.

This extension allows to specify the type of mail used to contact the person.

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-core-contact-point-email-type.csv), [Excel](../StructureDefinition-fr-core-contact-point-email-type.xlsx), [Schematron](../StructureDefinition-fr-core-contact-point-email-type.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-contact-point-email-type",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point-email-type",
  "version" : "2.2.0",
  "name" : "FRCoreContactPointEmailTypeExtension",
  "title" : "FR Core Contact Point Email Type Extension",
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
  "description" : "Extension permettant d'indiquer le type d'adresse email d'un ContactPoint.\n\r This extension allows to specify the type of mail used to contact the person.",
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
    "expression" : "ContactPoint"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Type of email | type de messagerie électronique",
      "definition" : "Extension permettant d'indiquer le type d'adresse email d'un ContactPoint.\n\r This extension allows to specify the type of mail used to contact the person.",
      "max" : "1"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point-email-type"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-email-type|2.2.0"
      }
    }]
  }
}

```
