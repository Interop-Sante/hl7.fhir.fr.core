# FR Core Organization Extension - Catetgorie SAE - Guide d'implémentation FR Core v2.2.0

## Extension: FR Core Organization Extension - Catetgorie SAE 

Categorie d’établissement de santé, suivant les valeurs de la SAE (Structure d’Activité d’Etablissement)

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [FR Core Organization Etablissement Profile](StructureDefinition-fr-core-organization-etablissement.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-organization-sae-categorie)

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

Extension simple avec le type base64Binary, boolean, canonical, code, date, dateTime, decimal, id, instant, integer, markdown, oid, positiveInt, string, time, unsignedInt, uri, url, uuid, Address, Age, Annotation, Attachment, CodeableConcept, Coding, ContactPoint, Count, Distance, Duration, HumanName, Identifier, Money, Period, Quantity, Range, Ratio, Reference, SampledData, Signature, Timing, ContactDetail, Contributor, DataRequirement, Expression, ParameterDefinition, RelatedArtifact, TriggerDefinition, UsageContext, Dosage, Meta : Categorie d'établissement de santé, suivant les valeurs de la SAE (Structure d'Activité d'Etablissement)

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensemble** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension simple avec le type base64Binary, boolean, canonical, code, date, dateTime, decimal, id, instant, integer, markdown, oid, positiveInt, string, time, unsignedInt, uri, url, uuid, Address, Age, Annotation, Attachment, CodeableConcept, Coding, ContactPoint, Count, Distance, Duration, HumanName, Identifier, Money, Period, Quantity, Range, Ratio, Reference, SampledData, Signature, Timing, ContactDetail, Contributor, DataRequirement, Expression, ParameterDefinition, RelatedArtifact, TriggerDefinition, UsageContext, Dosage, Meta : Categorie d'établissement de santé, suivant les valeurs de la SAE (Structure d'Activité d'Etablissement)

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-core-organization-sae-categorie.csv), [Excel](../StructureDefinition-fr-core-organization-sae-categorie.xlsx), [Schematron](../StructureDefinition-fr-core-organization-sae-categorie.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-organization-sae-categorie",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-sae-categorie",
  "version" : "2.2.0",
  "name" : "FRCoreOrganizationSAECategorieExtension",
  "title" : "FR Core Organization Extension - Catetgorie SAE",
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
  "description" : "Categorie d'établissement de santé, suivant les valeurs de la SAE (Structure d'Activité d'Etablissement)",
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
      "short" : "FR Core Organization Extension - Catetgorie SAE",
      "definition" : "Categorie d'établissement de santé, suivant les valeurs de la SAE (Structure d'Activité d'Etablissement)"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-sae-categorie"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Extension.value[x]:valueCodeableConcept",
      "path" : "Extension.value[x]",
      "sliceName" : "valueCodeableConcept",
      "short" : "Catégorie de l'établissement de santé",
      "definition" : "Catégorie d'établissement de santé, suivant les valeurs de la SAE (Structure d'Activité d'Etablissement)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-categorie-sae-etablissement|2.2.0"
      }
    }]
  }
}

```
