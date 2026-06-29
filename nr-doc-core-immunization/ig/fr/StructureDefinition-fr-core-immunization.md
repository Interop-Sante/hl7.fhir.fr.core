# FR Core Immunization Profile - Guide d'implémentation FR Core v2.2.0

## Profil de ressource: FR Core Immunization Profile 

 
FRCoreImmunizationProfile permet de décrire l’administration d’un vaccin. Il permet également de décrire pourquoi un vaccin n’a pas été réalisé. 

**Utilisations:**

* Ce Profil n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-immunization)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [ImmunizationEuCore](http://hl7.eu/fhir/base/2.0.0/StructureDefinition-immunization-eu-core.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [ImmunizationEuCore](http://hl7.eu/fhir/base/2.0.0/StructureDefinition-immunization-eu-core.html) 

** Résumé **

Obligatoire : 2 éléments(1 élément obligatoire(s) imbriqué(s))
 Interdit : 1 élément

**Structures**

Cette structure fait référence à ces autres structures:

* [MedicationRequest (http://hl7.org/fhir/StructureDefinition/MedicationRequest|4.0.1)](http://hl7.org/fhir/R4/medicationrequest.html)
* [Condition (http://hl7.org/fhir/StructureDefinition/Condition|4.0.1)](http://hl7.org/fhir/R4/condition.html)

**Extensions**

Cette structure fait référence à ces extensions:

* [http://hl7.org/fhir/5.0/StructureDefinition/extension-Immunization.basedOn|0.1.0](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-ext-R5-Immunization.basedOn.html)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Immunization.vaccineCode.coding
* The element 1 is sliced based on the value of Immunization.protocolApplied.doseNumber[x]

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [ImmunizationEuCore](http://hl7.eu/fhir/base/2.0.0/StructureDefinition-immunization-eu-core.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [ImmunizationEuCore](http://hl7.eu/fhir/base/2.0.0/StructureDefinition-immunization-eu-core.html) 

** Résumé **

Obligatoire : 2 éléments(1 élément obligatoire(s) imbriqué(s))
 Interdit : 1 élément

**Structures**

Cette structure fait référence à ces autres structures:

* [MedicationRequest (http://hl7.org/fhir/StructureDefinition/MedicationRequest|4.0.1)](http://hl7.org/fhir/R4/medicationrequest.html)
* [Condition (http://hl7.org/fhir/StructureDefinition/Condition|4.0.1)](http://hl7.org/fhir/R4/condition.html)

**Extensions**

Cette structure fait référence à ces extensions:

* [http://hl7.org/fhir/5.0/StructureDefinition/extension-Immunization.basedOn|0.1.0](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-ext-R5-Immunization.basedOn.html)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Immunization.vaccineCode.coding
* The element 1 is sliced based on the value of Immunization.protocolApplied.doseNumber[x]

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-core-immunization.csv), [Excel](../StructureDefinition-fr-core-immunization.xlsx), [Schematron](../StructureDefinition-fr-core-immunization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-immunization",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-immunization",
  "version" : "2.2.0",
  "name" : "FRCoreImmunizationProfile",
  "title" : "FR Core Immunization Profile",
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
  "description" : "FRCoreImmunizationProfile permet de décrire l'administration d'un vaccin. Il permet également de décrire pourquoi un vaccin n'a pas été réalisé.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Immunization",
  "baseDefinition" : "http://hl7.eu/fhir/base/StructureDefinition/immunization-eu-core|2.0.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Immunization",
      "path" : "Immunization"
    },
    {
      "id" : "Immunization.extension:basedOnRequestR5",
      "path" : "Immunization.extension",
      "sliceName" : "basedOnRequestR5",
      "short" : "Prescription",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-Immunization.basedOn|0.1.0"]
      }]
    },
    {
      "id" : "Immunization.extension:basedOnRequestR5.extension",
      "path" : "Immunization.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Immunization.extension:basedOnRequestR5.value[x]",
      "path" : "Immunization.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/MedicationRequest|4.0.1"]
      }]
    },
    {
      "id" : "Immunization.vaccineCode",
      "path" : "Immunization.vaccineCode",
      "short" : "Vaccin. Code du produit de santé",
      "binding" : {
        "extension" : [{
          "extension" : [{
            "url" : "key",
            "valueCode" : "preferred"
          },
          {
            "url" : "purpose",
            "valueCode" : "extensible"
          },
          {
            "url" : "valueSet",
            "valueCanonical" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-medication-translation|2.2.0"
          },
          {
            "url" : "shortDoco",
            "valueString" : "For when WHO ATC code system is preferred"
          }],
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
        },
        {
          "extension" : [{
            "url" : "purpose",
            "valueCode" : "preferred"
          },
          {
            "url" : "valueSet",
            "valueCanonical" : "http://terminology.ehdsi.eu/ValueSet/eHDSIVaccine"
          },
          {
            "url" : "documentation",
            "valueMarkdown" : "Additional conformance binding to the cross-border vaccines value set."
          },
          {
            "url" : "shortDoco",
            "valueString" : "For EU cross-border use"
          }],
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
        }],
        "strength" : "preferred",
        "description" : "The type of vaccine for particular disease or diseases against which the patient has been immunised, or a code for absent/unknown immunization.",
        "valueSet" : "http://hl7.org/fhir/uv/ips/ValueSet/vaccines-uv-ips|1.1.0"
      }
    },
    {
      "id" : "Immunization.vaccineCode.coding",
      "path" : "Immunization.vaccineCode.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Immunization.vaccineCode.coding:cis",
      "path" : "Immunization.vaccineCode.coding",
      "sliceName" : "cis",
      "min" : 1,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-vaccine-code-cis|2.2.0"
      }
    },
    {
      "id" : "Immunization.occurrence[x]",
      "path" : "Immunization.occurrence[x]",
      "short" : "Date de la vaccination",
      "definition" : "Si la date de la vaccination est inconnue, utiliser l'extension data-absent-reason précisant pourquoi elle n'est pas connue.",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Immunization.lotNumber",
      "path" : "Immunization.lotNumber",
      "short" : "Numéro de lot."
    },
    {
      "id" : "Immunization.expirationDate",
      "path" : "Immunization.expirationDate",
      "short" : "Date d'expiration du produit"
    },
    {
      "id" : "Immunization.site",
      "path" : "Immunization.site",
      "short" : "Région anatomique d'administration",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-immunization-approach-site-code-cisis|20260420150249"
      }
    },
    {
      "id" : "Immunization.route",
      "path" : "Immunization.route",
      "short" : "Voie d'administration",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-immunization-route-code-cisis|20260420150250"
      }
    },
    {
      "id" : "Immunization.doseQuantity",
      "path" : "Immunization.doseQuantity",
      "short" : "Dose administrée"
    },
    {
      "id" : "Immunization.note",
      "path" : "Immunization.note",
      "short" : "Commentaire",
      "max" : "1"
    },
    {
      "id" : "Immunization.reasonReference",
      "path" : "Immunization.reasonReference",
      "short" : "Réaction observée suite au vaccin",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Condition|4.0.1"]
      }]
    },
    {
      "id" : "Immunization.protocolApplied.series",
      "path" : "Immunization.protocolApplied.series",
      "short" : "Type de vaccination : BOOSTER (Rappel de vaccin) | IMMUNIZ (Vaccination sans autre précision) | INITIMMUNIZ (1ère série vaccinante)",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActSubstanceAdministrationImmunizationCode-cisis|20260420150251"
      }
    },
    {
      "id" : "Immunization.protocolApplied.doseNumber[x]",
      "path" : "Immunization.protocolApplied.doseNumber[x]",
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
      "id" : "Immunization.protocolApplied.doseNumber[x]:doseNumberPositiveInt",
      "path" : "Immunization.protocolApplied.doseNumber[x]",
      "sliceName" : "doseNumberPositiveInt",
      "short" : "Rang de la vaccination",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }]
    }]
  }
}

```
