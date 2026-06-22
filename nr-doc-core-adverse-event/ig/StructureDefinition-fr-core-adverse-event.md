# FR Core AdverseEvent Profile - Guide d'implémentation FR Core v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core AdverseEvent Profile**

## Resource Profile: FR Core AdverseEvent Profile 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-adverse-event | *Version*:2.2.0 |
| Active as of 2026-06-22 | *Computable Name*:FRCoreAdverseEventProfile |

 
FRCoreAdverseEventProfile permet de décrire un effet indésirable prévisible lié à un médicament 

**Utilisations:**

* Ce Profil n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-adverse-event)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-adverse-event.csv), [Excel](StructureDefinition-fr-core-adverse-event.xlsx), [Schematron](StructureDefinition-fr-core-adverse-event.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-adverse-event",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-adverse-event",
  "version" : "2.2.0",
  "name" : "FRCoreAdverseEventProfile",
  "title" : "FR Core AdverseEvent Profile",
  "status" : "active",
  "date" : "2026-06-22T12:19:58+00:00",
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
  "description" : "FRCoreAdverseEventProfile permet de décrire un effet indésirable prévisible lié à un médicament",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AdverseEvent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AdverseEvent|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "AdverseEvent",
      "path" : "AdverseEvent"
    },
    {
      "id" : "AdverseEvent.category",
      "path" : "AdverseEvent.category",
      "short" : "Type d'effet indésirable",
      "min" : 1,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-origine-effet-indesirable-cisis|20260420150249"
      }
    },
    {
      "id" : "AdverseEvent.date",
      "path" : "AdverseEvent.date",
      "short" : "Date de début de l'effet indésirable",
      "min" : 1
    },
    {
      "id" : "AdverseEvent.detected",
      "path" : "AdverseEvent.detected",
      "short" : "Date de détection de l'effet indésirable",
      "min" : 1
    },
    {
      "id" : "AdverseEvent.resultingCondition",
      "path" : "AdverseEvent.resultingCondition",
      "short" : "Réaction observée"
    },
    {
      "id" : "AdverseEvent.seriousness",
      "path" : "AdverseEvent.seriousness",
      "short" : "Gravité de l'effet indésirable",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-gravite-cisis|20260420150249"
      }
    },
    {
      "id" : "AdverseEvent.outcome",
      "path" : "AdverseEvent.outcome",
      "short" : "Évolution de l'effet indésirable",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-evolution-cisis|20260420150249"
      }
    },
    {
      "id" : "AdverseEvent.suspectEntity",
      "path" : "AdverseEvent.suspectEntity",
      "short" : "Agent soupçonné d'être à l'origine de l'événement indésirable",
      "min" : 1
    },
    {
      "id" : "AdverseEvent.suspectEntity.instance",
      "path" : "AdverseEvent.suspectEntity.instance",
      "short" : "Médicament, substance incriminée, posologie",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/MedicationAdministration|4.0.1"]
      }]
    },
    {
      "id" : "AdverseEvent.suspectEntity.causality",
      "path" : "AdverseEvent.suspectEntity.causality",
      "short" : "Imputabilité",
      "max" : "1"
    },
    {
      "id" : "AdverseEvent.suspectEntity.causality.assessment",
      "path" : "AdverseEvent.suspectEntity.causality.assessment",
      "short" : "Niveau d'imputabilité",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-imputabilite-cisis|20260420150249"
      }
    }]
  }
}

```
