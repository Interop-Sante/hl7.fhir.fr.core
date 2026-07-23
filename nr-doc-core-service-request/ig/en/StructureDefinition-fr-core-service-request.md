# FR Core ServiceRequest Profile - Guide d'implémentation FR Core v2.2.0

## Resource Profile: FR Core ServiceRequest Profile 

 
FRCoreServiceRequestProfile profil permet de porter des demandes d’examens (analyses biologiques, évaluations, étude d’imagerie, etc…) ou de suivis particuliers à programmer dans le cadre d’un plan de soins. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.core|current/StructureDefinition/StructureDefinition-fr-core-service-request.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-core-service-request.csv), [Excel](../StructureDefinition-fr-core-service-request.xlsx), [Schematron](../StructureDefinition-fr-core-service-request.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-service-request",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-service-request",
  "version" : "2.2.0",
  "name" : "FRCoreServiceRequestProfile",
  "title" : "FR Core ServiceRequest Profile",
  "status" : "active",
  "date" : "2026-07-23T09:36:51+00:00",
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
  "description" : "FRCoreServiceRequestProfile profil permet de porter des demandes d'examens (analyses biologiques, évaluations, étude d'imagerie, etc…) ou de suivis particuliers à programmer dans le cadre d'un plan de soins.",
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
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest"
    },
    {
      "id" : "ServiceRequest.extension",
      "path" : "ServiceRequest.extension",
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
      "id" : "ServiceRequest.extension:method",
      "path" : "ServiceRequest.extension",
      "sliceName" : "method",
      "short" : "Méthode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-method-extension|2.2.0"]
      }]
    },
    {
      "id" : "ServiceRequest.identifier",
      "path" : "ServiceRequest.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ServiceRequest.identifier:accessionNumber",
      "path" : "ServiceRequest.identifier",
      "sliceName" : "accessionNumber",
      "short" : "Accession Number de la demande d'examen d'imagerie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-accession-number-identifier|2.2.0"]
      }]
    },
    {
      "id" : "ServiceRequest.category",
      "path" : "ServiceRequest.category",
      "short" : "Catégorie de la demande"
    },
    {
      "id" : "ServiceRequest.code",
      "path" : "ServiceRequest.code",
      "short" : "Type de la demande : Si aucun code n'est trouvé dans des terminologies existantes, utiliser le code : GEN-092.04.20 'Autre demande d'examen ou de suivi'",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.orderDetail",
      "path" : "ServiceRequest.orderDetail",
      "max" : "1"
    },
    {
      "id" : "ServiceRequest.orderDetail.coding",
      "path" : "ServiceRequest.orderDetail.coding",
      "short" : "Résultat de la demande"
    },
    {
      "id" : "ServiceRequest.occurrence[x]",
      "path" : "ServiceRequest.occurrence[x]",
      "short" : "Date prévisionnelle de l'examen, du suivi, de l'objectif",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.bodySite",
      "path" : "ServiceRequest.bodySite",
      "short" : "Cible",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/body-site|4.0.1"
      }
    },
    {
      "id" : "ServiceRequest.note",
      "path" : "ServiceRequest.note",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "text"
        }],
        "rules" : "open"
      },
      "short" : "Justification de la demande d'examen / Finalité de l'examen",
      "min" : 2
    },
    {
      "id" : "ServiceRequest.note:finaliteExamen",
      "path" : "ServiceRequest.note",
      "sliceName" : "finaliteExamen",
      "short" : "Finalité de l'examen demandé",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "ServiceRequest.note:justificationDemande",
      "path" : "ServiceRequest.note",
      "sliceName" : "justificationDemande",
      "short" : "Justification de la demande d'examen",
      "min" : 1,
      "max" : "1"
    }]
  }
}

```
