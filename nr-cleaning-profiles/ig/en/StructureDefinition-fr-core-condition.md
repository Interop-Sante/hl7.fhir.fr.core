# FR Core Condition Profile - Guide d'implémentation FR Core v2.2.0

## Resource Profile: FR Core Condition Profile 

**Usages:**

* Refer to this Profile: [FR Core AdverseEvent Profile](StructureDefinition-fr-core-adverse-event.md), [FR Core Immunization Profile](StructureDefinition-fr-core-immunization.md), [FR Core MedicationAdministration Profile](StructureDefinition-fr-core-medication-administration.md), [FR Core MedicationRequest Profile](StructureDefinition-fr-core-medication-request.md)... Show 2 more, [FR Core MedicationStatement Profile](StructureDefinition-fr-core-medication-statement.md) and [FR Core Procedure Profile](StructureDefinition-fr-core-procedure.md)
* Examples for this Profile: [Condition/FRCoreConditionExample](Condition-FRCoreConditionExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.core|current/StructureDefinition/StructureDefinition-fr-core-condition.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-core-condition.csv), [Excel](../StructureDefinition-fr-core-condition.xlsx), [Schematron](../StructureDefinition-fr-core-condition.sch) 



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
  "date" : "2026-10-29T11:02:58+00:00",
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
      "id" : "Condition.meta.profile",
      "path" : "Condition.meta.profile",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this"
        }],
        "description" : "Slice based on the canonical url value",
        "rules" : "open"
      }
    },
    {
      "id" : "Condition.meta.profile:fr-canonical",
      "path" : "Condition.meta.profile",
      "sliceName" : "fr-canonical",
      "min" : 0,
      "max" : "1",
      "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-condition|2.2.0"
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
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-code-probleme-cisis|20260916095457"
      }
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "short" : "Identification de la condition, du problème ou du diagnostic",
      "definition" : "CIM-10 pour les pathologies et réactions à une vaccination : Si le problème observé n'est pas trouvé dans la terminologie CIM-10, utiliser le code='R69' display='Causes inconnues et non précisées de morbidité' system='https://smt.esante.gouv.fr/terminologie-cim-10' et décrire le problème sous forme de texte libre.\r\n\nAllergie, hypersensibilité non allergique, intolérance ou idiosyncrasie : ne pas utiliser Condition — utiliser la ressource AllergyIntolerance (FRCoreAllergyIntoleranceProfile).\r\n\nMaladie rare : ORPHAcode (Orphanet) - system='https://www.orpha.net'.\r\n\nSi pas de problème ou pas d'information : https://smt.esante.gouv.fr/fhir/ValueSet/jdv-absent-or-unknown-problem-cisis",
      "binding" : {
        "extension" : [{
          "extension" : [{
            "url" : "purpose",
            "valueCode" : "extensible"
          },
          {
            "url" : "valueSet",
            "valueCanonical" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-condition-code-medecine-ville|2.2.0"
          },
          {
            "url" : "documentation",
            "valueMarkdown" : "CISP-2 (ICPC-2), CISP-3 (ICPC-3) et DRC (SFMG) : code problème en médecine de ville."
          },
          {
            "url" : "shortDoco",
            "valueString" : "Code problème médecine de ville"
          }],
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
        },
        {
          "extension" : [{
            "url" : "purpose",
            "valueCode" : "extensible"
          },
          {
            "url" : "valueSet",
            "valueCanonical" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-condition-code-maladie-rare|2.2.0"
          },
          {
            "url" : "documentation",
            "valueMarkdown" : "ORPHAcode (Orphanet) : codage des maladies rares."
          },
          {
            "url" : "shortDoco",
            "valueString" : "Maladie rare"
          }],
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
        }],
        "strength" : "extensible",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-condition-code-defaut|2.2.0"
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
      "id" : "Condition.stage",
      "path" : "Condition.stage",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "type"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Condition.stage:clinicalStatus",
      "path" : "Condition.stage",
      "sliceName" : "clinicalStatus",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Condition.stage:clinicalStatus.summary",
      "path" : "Condition.stage.summary",
      "short" : "Statut clinique du patient",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-health-status-code-cisis|20260916095455"
      }
    },
    {
      "id" : "Condition.stage:clinicalStatus.type",
      "path" : "Condition.stage.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "260998006"
        }]
      }
    }]
  }
}

```
