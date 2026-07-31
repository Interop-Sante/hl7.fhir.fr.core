# FR Core Condition Profile - Guide d'implémentation FR Core v2.2.0

## Profil de ressource: FR Core Condition Profile 

 
FRCoreConditionProfile est un profil utilisé pour décrire un problème du patient (une pathologie par exemple). 

**Utilisations:**

* Exemples pour ce/t/te Profil: [Condition/FRCoreConditionExample](Condition-FRCoreConditionExample.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-condition)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [ConditionEuCore](http://hl7.eu/fhir/base/2.0.0/StructureDefinition-condition-eu-core.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [ConditionEuCore](http://hl7.eu/fhir/base/2.0.0/StructureDefinition-condition-eu-core.html) 

** Résumé **

Obligatoire : 2 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Patient INS Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins|2.2.0)](StructureDefinition-fr-core-patient-ins.md)
* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0)](StructureDefinition-fr-core-patient.md)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [ConditionEuCore](http://hl7.eu/fhir/base/2.0.0/StructureDefinition-condition-eu-core.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [ConditionEuCore](http://hl7.eu/fhir/base/2.0.0/StructureDefinition-condition-eu-core.html) 

** Résumé **

Obligatoire : 2 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Patient INS Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins|2.2.0)](StructureDefinition-fr-core-patient-ins.md)
* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0)](StructureDefinition-fr-core-patient.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-core-condition.csv), [Excel](../StructureDefinition-fr-core-condition.xlsx), [Schematron](../StructureDefinition-fr-core-condition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-condition",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-condition",
  "version" : "2.2.0",
  "name" : "FRCoreConditionProfile",
  "title" : "FR Core Condition Profile",
  "status" : "active",
  "date" : "2026-07-31T14:40:09+00:00",
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
  "description" : "FRCoreConditionProfile est un profil utilisé pour décrire un problème du patient (une pathologie par exemple).",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
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
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "http://hl7.eu/fhir/base/StructureDefinition/condition-eu-core|2.0.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition"
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "short" : "Statut clinique du problème",
      "min" : 1
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "short" : "Certitude"
    },
    {
      "id" : "Condition.category",
      "path" : "Condition.category",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-code-probleme-cisis|20260619134043"
      }
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "short" : "Identification de la condition, du problème ou du diagnostic",
      "definition" : "CIM-10 pour les pathologies et réactions à une vaccination : Si le problème observé n'est pas trouvé dans la terminologie CIM-10, utiliser le code='R69' display='Causes inconnues et non précisées de morbidité' system='https://smt.esante.gouv.fr/terminologie-cim-10' et décrire le problème sous forme de texte libre.\r\n\nRéaction allergique : CIM-11 / Chapitre 04 Maladies du système immunitaire / Bloc Affections allergiques ou d'hyper-sensibilité.\r\n\nSi pas de problème ou pas d'information : https://smt.esante.gouv.fr/fhir/ValueSet/jdv-absent-or-unknown-problem-cisis",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-condition-code|2.2.0"
      }
    },
    {
      "id" : "Condition.bodySite",
      "path" : "Condition.bodySite",
      "short" : "Localisation anatomique",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/body-site|4.0.1"
      }
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "short" : "Patient concerné",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins|2.2.0",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0"]
      }]
    },
    {
      "id" : "Condition.onset[x]",
      "path" : "Condition.onset[x]",
      "min" : 1
    },
    {
      "id" : "Condition.abatement[x]:abatementDateTime",
      "path" : "Condition.abatement[x]",
      "sliceName" : "abatementDateTime",
      "short" : "Date de fin du problème (si applicable)",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Condition.stage.summary",
      "path" : "Condition.stage.summary",
      "short" : "Statut clinique du patient",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-health-status-code-cisis|20260619134042"
      }
    }]
  }
}

```
