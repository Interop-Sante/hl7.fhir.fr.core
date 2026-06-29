# FR Core Medication Profile - Guide d'implémentation FR Core v2.2.0

## Profil de ressource: FR Core Medication Profile 

 
FRCoreMedicationProfile permet de décrire un médicament ou un vaccin. 

**Utilisations:**

* Référence ce Profil: [FR Core MedicationAdministration Profile](StructureDefinition-fr-core-medication-administration.md), [FR Core MedicationDispense Profile](StructureDefinition-fr-core-medication-dispense.md), [FR Core MedicationRequest Profile](StructureDefinition-fr-core-medication-request.md), [FR Core MedicationStatement Profile](StructureDefinition-fr-core-medication-statement.md) and [FR Core Medication Profile](StructureDefinition-fr-core-medication.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-medication)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Medication](http://hl7.org/fhir/R4/medication.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Medication](http://hl7.org/fhir/R4/medication.html) 

** Résumé **

Obligatoire : 3 éléments(2 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Medication Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication|2.2.0)](StructureDefinition-fr-core-medication.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-productname|1.0.0-comment-2](https://profiles.ihe.net/PHARM/MPD/1.0.0-comment-2/StructureDefinition-ihe-ext-medication-productname.html)
* [https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-classification|1.0.0-comment-2](https://profiles.ihe.net/PHARM/MPD/1.0.0-comment-2/StructureDefinition-ihe-ext-medication-classification.html)
* [https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-characteristic|1.0.0-comment-2](https://profiles.ihe.net/PHARM/MPD/1.0.0-comment-2/StructureDefinition-ihe-ext-medication-characteristic.html)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Medication.ingredient.item[x]

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [Medication](http://hl7.org/fhir/R4/medication.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Medication](http://hl7.org/fhir/R4/medication.html) 

** Résumé **

Obligatoire : 3 éléments(2 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Medication Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication|2.2.0)](StructureDefinition-fr-core-medication.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-productname|1.0.0-comment-2](https://profiles.ihe.net/PHARM/MPD/1.0.0-comment-2/StructureDefinition-ihe-ext-medication-productname.html)
* [https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-classification|1.0.0-comment-2](https://profiles.ihe.net/PHARM/MPD/1.0.0-comment-2/StructureDefinition-ihe-ext-medication-classification.html)
* [https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-characteristic|1.0.0-comment-2](https://profiles.ihe.net/PHARM/MPD/1.0.0-comment-2/StructureDefinition-ihe-ext-medication-characteristic.html)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Medication.ingredient.item[x]

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-core-medication.csv), [Excel](../StructureDefinition-fr-core-medication.xlsx), [Schematron](../StructureDefinition-fr-core-medication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-medication",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication",
  "version" : "2.2.0",
  "name" : "FRCoreMedicationProfile",
  "title" : "FR Core Medication Profile",
  "status" : "active",
  "date" : "2026-06-29T12:42:10+00:00",
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
  "description" : "FRCoreMedicationProfile permet de décrire un médicament ou un vaccin.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "script10.6",
    "uri" : "http://ncpdp.org/SCRIPT10_6",
    "name" : "Mapping to NCPDP SCRIPT 10.6"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Medication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Medication|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Medication",
      "path" : "Medication"
    },
    {
      "id" : "Medication.extension",
      "path" : "Medication.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Medication.extension:productName",
      "path" : "Medication.extension",
      "sliceName" : "productName",
      "short" : "Nom de marque du produit.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-productname|1.0.0-comment-2"]
      }]
    },
    {
      "id" : "Medication.extension:classification",
      "path" : "Medication.extension",
      "sliceName" : "classification",
      "short" : "Classification ATC.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-classification|1.0.0-comment-2"]
      }]
    },
    {
      "id" : "Medication.extension:conditionnement",
      "path" : "Medication.extension",
      "sliceName" : "conditionnement",
      "short" : "Présentation / conditionnement.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-characteristic|1.0.0-comment-2"]
      }]
    },
    {
      "id" : "Medication.code",
      "path" : "Medication.code",
      "short" : "Code du produit de santé",
      "min" : 1
    },
    {
      "id" : "Medication.code.coding",
      "path" : "Medication.code.coding",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-medication-translation|2.2.0"
      }
    },
    {
      "id" : "Medication.form",
      "path" : "Medication.form",
      "short" : "Forme pharmaceutique (EDQM)",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-edqm|2.2.0"
      }
    },
    {
      "id" : "Medication.ingredient.item[x]",
      "path" : "Medication.ingredient.item[x]",
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
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept",
      "path" : "Medication.ingredient.item[x]",
      "sliceName" : "itemCodeableConcept",
      "short" : "Code SMS de la substance active",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/terminologie-sms?vs|20241114120000"
      }
    },
    {
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept.text",
      "path" : "Medication.ingredient.item[x].text",
      "short" : "Nom de la substance"
    },
    {
      "id" : "Medication.ingredient.item[x]:itemReference",
      "path" : "Medication.ingredient.item[x]",
      "sliceName" : "itemReference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication|2.2.0"]
      }]
    },
    {
      "id" : "Medication.ingredient.strength",
      "path" : "Medication.ingredient.strength",
      "short" : "Quantité de substance présente dans le médicament"
    },
    {
      "id" : "Medication.ingredient.strength.numerator",
      "path" : "Medication.ingredient.strength.numerator",
      "min" : 1
    },
    {
      "id" : "Medication.ingredient.strength.denominator",
      "path" : "Medication.ingredient.strength.denominator",
      "min" : 1
    },
    {
      "id" : "Medication.batch.lotNumber",
      "path" : "Medication.batch.lotNumber",
      "short" : "Numéro de lot"
    },
    {
      "id" : "Medication.batch.expirationDate",
      "path" : "Medication.batch.expirationDate",
      "short" : "Date d'expiration du produit"
    }]
  }
}

```
