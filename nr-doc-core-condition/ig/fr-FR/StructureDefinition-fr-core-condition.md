# FR Core Condition Profile - Guide d'implémentation FR Core v2.2.0

## : FR Core Condition Profile 

 
FRCoreConditionProfile est un profil utilisé pour décrire un problème du patient (une pathologie par exemple). 

**Utilisations:**

* Ce Profil n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-condition)

### 

 . 

*   
*   
*   
*   

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

** Résumé **

Obligatoire : 2 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Patient INS Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins|2.2.0)](StructureDefinition-fr-core-patient-ins.md)
* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0)](StructureDefinition-fr-core-patient.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Condition.category

#### Bindings terminologiques (différentiel)

 **View** 

#### Bindings terminologiques

#### Contraintes

** Résumé **

Obligatoire : 2 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Patient INS Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins|2.2.0)](StructureDefinition-fr-core-patient-ins.md)
* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0)](StructureDefinition-fr-core-patient.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Condition.category

 

 ,  



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
  "date" : "2026-06-29T15:18:50+00:00",
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
      "short" : "Statut du problème",
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
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "coding.system"
        }],
        "rules" : "open"
      },
      "short" : "Type d'observation"
    },
    {
      "id" : "Condition.category:problemeCisis",
      "path" : "Condition.category",
      "sliceName" : "problemeCisis",
      "short" : "Problème (jdv-code-probleme-cisis)",
      "min" : 0,
      "max" : "*",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-code-probleme-cisis|20260420150251"
      }
    },
    {
      "id" : "Condition.severity",
      "path" : "Condition.severity",
      "short" : "Sévérité",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-severite-observation-cisis|20260420150250"
      }
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "short" : "Identification de la condition, du problème ou du diagnostic :\nCIM-10 pour les pathologie  et réactions à une vaccination : Si le problème observé n'est pas trouvé dans la terminologie CIM-10, utiliser le code='R69' display='Causes inconnues et non précisées de morbidité' system='https://smt.esante.gouv.fr/terminologie-cim-10' et décrire le problème sous forme de texte libre\nRéaction allergique : CIM-11 (2.16.840.1.113883.6.347) / Chapitre 04 Maladies du système immunitaire / Bloc Affections allergiques ou d'hyper-sensibilité\nSi pas de problème ou pas d'information : https://smt.esante.gouv.fr/fhir/ValueSet/jdv-absent-or-unknown-problem-cisis"
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
      "id" : "Condition.onset[x]:onsetDateTime",
      "path" : "Condition.onset[x]",
      "sliceName" : "onsetDateTime",
      "short" : "Date de début du problème",
      "type" : [{
        "code" : "dateTime"
      }]
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
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-health-status-code-cisis|20260420150250"
      }
    },
    {
      "id" : "Condition.note",
      "path" : "Condition.note",
      "short" : "Commentaire",
      "max" : "1"
    }]
  }
}

```
