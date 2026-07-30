# FR Core AdverseEvent Extension - Outcome (backport R5→R4) - Guide d'implémentation FR Core v2.2.0

## Extension: FR Core AdverseEvent Extension - Outcome (backport R5→R4) 

Mime AdverseEvent.outcome (R5, binding Example) — en R4 outcome a un binding Required qui interdit tout re-binding vers jdv-evolution-cisis. Non couvert par l’IG cross-version xver-r5.r4.

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [FR Core AdverseEvent Profile](StructureDefinition-fr-core-adverse-event.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/extension-AdverseEvent.outcome)

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

Extension simple avec le type CodeableConcept : Mime AdverseEvent.outcome (R5, binding Example) — en R4 outcome a un binding Required qui interdit tout re-binding vers jdv-evolution-cisis. Non couvert par l'IG cross-version xver-r5.r4.

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensemble** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension simple avec le type CodeableConcept : Mime AdverseEvent.outcome (R5, binding Example) — en R4 outcome a un binding Required qui interdit tout re-binding vers jdv-evolution-cisis. Non couvert par l'IG cross-version xver-r5.r4.

 

Autres représentations du profil : [CSV](../StructureDefinition-extension-AdverseEvent.outcome.csv), [Excel](../StructureDefinition-extension-AdverseEvent.outcome.xlsx), [Schematron](../StructureDefinition-extension-AdverseEvent.outcome.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "extension-AdverseEvent.outcome",
  "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-AdverseEvent.outcome",
  "version" : "2.2.0",
  "name" : "FRCoreAdverseEventOutcomeExtension",
  "title" : "FR Core AdverseEvent Extension - Outcome (backport R5→R4)",
  "status" : "active",
  "date" : "2026-07-30T14:49:16+00:00",
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
  "description" : "Mime AdverseEvent.outcome (R5, binding Example) — en R4 outcome a un binding Required qui interdit tout re-binding vers jdv-evolution-cisis. Non couvert par l'IG cross-version xver-r5.r4.",
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
    "expression" : "AdverseEvent"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "FR Core AdverseEvent Extension - Outcome (backport R5→R4)",
      "definition" : "Mime AdverseEvent.outcome (R5, binding Example) — en R4 outcome a un binding Required qui interdit tout re-binding vers jdv-evolution-cisis. Non couvert par l'IG cross-version xver-r5.r4."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-AdverseEvent.outcome"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Évolution de l'effet indésirable (backport outcome R5→R4)",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-evolution-cisis|20260619134042"
      }
    }]
  }
}

```
