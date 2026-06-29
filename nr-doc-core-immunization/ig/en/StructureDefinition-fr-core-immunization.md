# FR Core Immunization Profile - Guide d'implémentation FR Core v2.2.0

## Resource Profile: FR Core Immunization Profile 

 
FRCoreImmunizationProfile permet de décrire l’administration d’un vaccin. Il permet également de décrire pourquoi un vaccin n’a pas été réalisé. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.core|current/StructureDefinition/StructureDefinition-fr-core-immunization.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-core-immunization.csv), [Excel](../StructureDefinition-fr-core-immunization.xlsx), [Schematron](../StructureDefinition-fr-core-immunization.sch) 



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
  "date" : "2026-06-29T10:03:57+00:00",
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
      "short" : "Vaccin. Code du produit de santé"
    },
    {
      "id" : "Immunization.vaccineCode.coding",
      "path" : "Immunization.vaccineCode.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Slice CIS et autres codifications",
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
      "id" : "Immunization.vaccineCode.coding:translation",
      "path" : "Immunization.vaccineCode.coding",
      "sliceName" : "translation",
      "min" : 0,
      "max" : "*",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-medication-translation|2.2.0"
      }
    },
    {
      "id" : "Immunization.vaccineCode.coding:translation.system",
      "path" : "Immunization.vaccineCode.coding.system",
      "min" : 1
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
