# FR Core Procedure Profile - Guide d'implémentation FR Core v2.2.0

## Resource Profile: FR Core Procedure Profile 

 
FRCoreProcedureProfile est un profil utilisé pour décrire un acte planifié ou réalisé. 

**Usages:**

* Examples for this Profile: [Procedure/FRCoreProcedureExample](Procedure-FRCoreProcedureExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.core|current/StructureDefinition/StructureDefinition-fr-core-procedure.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-core-procedure.csv), [Excel](../StructureDefinition-fr-core-procedure.xlsx), [Schematron](../StructureDefinition-fr-core-procedure.sch) 



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
  "date" : "2026-08-03T08:32:23+00:00",
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
  "baseDefinition" : "http://hl7.eu/fhir/base/StructureDefinition/procedure-eu-core|2.0.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
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
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-procedure-code|2.2.0"
      }
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins|2.2.0",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0"]
      }]
    },
    {
      "id" : "Procedure.encounter",
      "path" : "Procedure.encounter",
      "short" : "Rencontre associée à l'acte",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-encounter|2.2.0"]
      }]
    },
    {
      "id" : "Procedure.performed[x]",
      "path" : "Procedure.performed[x]",
      "short" : "Date de l'acte"
    },
    {
      "id" : "Procedure.performer.actor",
      "path" : "Procedure.performer.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role|2.2.0",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0",
        "http://hl7.org/fhir/StructureDefinition/Device|4.0.1",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson|4.0.1",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0"]
      }]
    },
    {
      "id" : "Procedure.performer.onBehalfOf",
      "path" : "Procedure.performer.onBehalfOf",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0"]
      }]
    },
    {
      "id" : "Procedure.reasonReference",
      "path" : "Procedure.reasonReference",
      "short" : "Motif de l'acte / Justification de la réalisation de l'acte"
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
