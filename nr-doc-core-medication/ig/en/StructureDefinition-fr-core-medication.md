# FR Core Medication Profile - Guide d'implémentation FR Core v2.2.0

## Resource Profile: FR Core Medication Profile 

 
FRCoreMedicationProfile permet de décrire un médicament ou un vaccin. 

**Usages:**

* Refer to this Profile: [FR Core MedicationAdministration Profile](StructureDefinition-fr-core-medication-administration.md), [FR Core MedicationDispense Profile](StructureDefinition-fr-core-medication-dispense.md), [FR Core MedicationRequest Profile](StructureDefinition-fr-core-medication-request.md), [FR Core MedicationStatement Profile](StructureDefinition-fr-core-medication-statement.md) and [FR Core Medication Profile](StructureDefinition-fr-core-medication.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.core|current/StructureDefinition/StructureDefinition-fr-core-medication.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-core-medication.csv), [Excel](../StructureDefinition-fr-core-medication.xlsx), [Schematron](../StructureDefinition-fr-core-medication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-medication",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication",
  "version" : "2.2.0",
  "name" : "FRCoreMedicationProfile",
  "title" : "FR Core Medication Profile",
  "status" : "active",
  "date" : "2026-08-13T09:41:50+00:00",
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
  "description" : "FRCoreMedicationProfile permet de décrire un médicament ou un vaccin.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "script10.6",
    "uri" : "http://ncpdp.org/SCRIPT10_6",
    "name" : "Mapping to NCPDP SCRIPT 10.6"
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
  "type" : "Medication",
  "baseDefinition" : "http://hl7.eu/fhir/base/StructureDefinition/medication-eu-core|2.0.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Medication",
      "path" : "Medication"
    },
    {
      "id" : "Medication.extension",
      "path" : "Medication.extension",
      "min" : 1
    },
    {
      "id" : "Medication.extension:productName",
      "path" : "Medication.extension",
      "sliceName" : "productName",
      "short" : "Nom de marque du produit.",
      "min" : 1
    },
    {
      "id" : "Medication.extension:classification",
      "path" : "Medication.extension",
      "sliceName" : "classification",
      "short" : "Classification ATC."
    },
    {
      "id" : "Medication.extension:characteristic",
      "path" : "Medication.extension",
      "sliceName" : "characteristic",
      "short" : "Présentation / conditionnement."
    },
    {
      "id" : "Medication.code",
      "path" : "Medication.code",
      "short" : "Code du produit de santé",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-medication-translation|2.2.0"
      }
    },
    {
      "id" : "Medication.form",
      "path" : "Medication.form",
      "short" : "Forme pharmaceutique (EDQM)",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-edqm|2.2.0"
      }
    },
    {
      "id" : "Medication.ingredient.item[x]:itemReference",
      "path" : "Medication.ingredient.item[x]",
      "sliceName" : "itemReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication|2.2.0"]
      }]
    },
    {
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept",
      "path" : "Medication.ingredient.item[x]",
      "sliceName" : "itemCodeableConcept",
      "short" : "Code SMS de la substance active",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/terminologie-sms?vs|20241114120000"
      }
    },
    {
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept.text",
      "path" : "Medication.ingredient.item[x].text",
      "short" : "Nom de la substance"
    },
    {
      "id" : "Medication.ingredient.strength",
      "path" : "Medication.ingredient.strength",
      "short" : "Quantité de substance présente dans le médicament"
    },
    {
      "id" : "Medication.batch.lotNumber",
      "path" : "Medication.batch.lotNumber",
      "short" : "Numéro de lot"
    },
    {
      "id" : "Medication.batch.expirationDate",
      "path" : "Medication.batch.expirationDate",
      "short" : "Date d'expiration du produit"
    }]
  }
}

```
