# FR Core Procedure Profile - Guide d'implémentation FR Core v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Procedure Profile**

## Resource Profile: FR Core Procedure Profile 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-procedure | *Version*:2.2.0 |
| Active as of 2026-06-22 | *Computable Name*:FRCoreProcedureProfile |

 
FRCoreProcedureProfile est un profil utilisé pour décrire un acte planifié ou réalisé. 

**Utilisations:**

* Ce Profil n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-procedure)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-procedure.csv), [Excel](StructureDefinition-fr-core-procedure.xlsx), [Schematron](StructureDefinition-fr-core-procedure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-procedure",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-procedure",
  "version" : "2.2.0",
  "name" : "FRCoreProcedureProfile",
  "title" : "FR Core Procedure Profile",
  "status" : "active",
  "date" : "2026-06-22T07:36:35+00:00",
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
  "description" : "FRCoreProcedureProfile est un profil utilisé pour décrire un acte planifié ou réalisé.",
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
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.extension",
      "path" : "Procedure.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Procedure.extension:priority",
      "path" : "Procedure.extension",
      "sliceName" : "priority",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-procedure-priority-extension|2.2.0"]
      }]
    },
    {
      "id" : "Procedure.extension:approachBodySite",
      "path" : "Procedure.extension",
      "sliceName" : "approachBodySite",
      "short" : "Voie d'abord",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/procedure-approachBodyStructure|5.3.0"]
      }]
    },
    {
      "id" : "Procedure.extension:difficulte",
      "path" : "Procedure.extension",
      "sliceName" : "difficulte",
      "short" : "Difficulté de l'acte",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-procedure-difficulty-extension|2.2.0"]
      }]
    },
    {
      "id" : "Procedure.identifier",
      "path" : "Procedure.identifier",
      "short" : "Identifiant"
    },
    {
      "id" : "Procedure.partOf",
      "path" : "Procedure.partOf",
      "short" : "Événement associé : score (Cormack ou ASA), administration de médicament ou procédure associée à l'acte (ex. produit administré lors d'un acte d'imagerie)."
    },
    {
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "short" : "Statut de l'acte"
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "short" : "Code d'acte",
      "comment" : "Aussi utilisé pour indiquer qu'il n'y a pas d'acte ou qu'on ne sait pas s'il y en a.\nSi l'acte n'est pas trouvé dans CCAM, utiliser le code NCIT 'C25218' (Intervention)\net décrire l'acte en texte libre dans la partie narrative.\nPour les actes chirurgicaux inconnus, utiliser jdv-absent-or-unknown-procedure-cisis.",
      "min" : 1,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-procedure-code|2.2.0"
      }
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "short" : "Patient concerné",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins|2.2.0",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0"]
      }]
    },
    {
      "id" : "Procedure.encounter",
      "path" : "Procedure.encounter",
      "short" : "Rencontre associée à l'acte"
    },
    {
      "id" : "Procedure.performed[x]",
      "path" : "Procedure.performed[x]",
      "short" : "Date de l'acte"
    },
    {
      "id" : "Procedure.reasonReference",
      "path" : "Procedure.reasonReference",
      "short" : "Motif de l'acte / Justification de la réalisation de l'acte",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Condition|4.0.1",
        "http://hl7.org/fhir/StructureDefinition/DiagnosticReport|4.0.1"]
      }]
    },
    {
      "id" : "Procedure.bodySite",
      "path" : "Procedure.bodySite",
      "short" : "Localisation anatomique",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/body-site|4.0.1"
      }
    }]
  }
}

```
