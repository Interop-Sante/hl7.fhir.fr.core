# FR Core Observation ALD - Guide d'implémentation FR Core v2.2.0

## Resource Profile: FR Core Observation ALD 

 
French profile for ALD observation. 
Profil français pour l’observation ALD 

**Usages:**

* Refer to this Profile: [FR Core MedicationRequest Profile](StructureDefinition-fr-core-medication-request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.core|current/StructureDefinition/StructureDefinition-fr-core-observation-ald.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-core-observation-ald.csv), [Excel](../StructureDefinition-fr-core-observation-ald.xlsx), [Schematron](../StructureDefinition-fr-core-observation-ald.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-observation-ald",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-ald",
  "version" : "2.2.0",
  "name" : "FRCoreObservationALD",
  "title" : "FR Core Observation ALD",
  "status" : "active",
  "date" : "2026-08-13T08:58:16+00:00",
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
  "description" : "French profile for ALD observation.\r\n\nProfil français pour l'observation ALD",
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
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Type de l'observation",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
          "code" : "MED-574",
          "display" : "En rapport avec une ALD"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "Résultat de l'observation : pourra prendre l'une des deux valeurs suivantes :\nvalue='true' : le traitement est prescrit dans le cadre d'une affection longue durée (ALD)\nvalue='false' : le traitement n'est pas prescrit dans le cadre d'une affection longue durée (ALD)",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }],
      "mustSupport" : true
    }]
  }
}

```
