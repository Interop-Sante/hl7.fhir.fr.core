# FR Core Medication Administration Inhaled Oxygen Profile - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Medication Administration Inhaled Oxygen Profile**

## Resource Profile: FR Core Medication Administration Inhaled Oxygen Profile 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-administration-inhaled-oxygen | *Version*:2.2.0-ballot |
| Active as of 2025-12-02 | *Computable Name*:FRCoreMedicationAdministrationInhaledOxygenProfile |

 
Profile based on the MedicationAdministration resource to indicate inhaled oxygen. This profile makes it possible to complement the information from the Oxygen Saturation Observation resource with oxygen intake provided through mechanical ventilation. 
Profil se basant sur la ressource Medication Administration pour indiquer l’oxygène inhalé. Ce profil permet de compléter les informations de la ressource Observation saturation en oxygène avec les apports d’oxygène via une ventilation mécanique. 

**Utilisations:**

* Référer à ce Profil: [FR Core Observation Oxygen Saturation Profile](StructureDefinition-fr-core-observation-saturation-oxygen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-medication-administration-inhaled-oxygen)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-medication-administration-inhaled-oxygen.csv), [Excel](StructureDefinition-fr-core-medication-administration-inhaled-oxygen.xlsx), [Schematron](StructureDefinition-fr-core-medication-administration-inhaled-oxygen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-medication-administration-inhaled-oxygen",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-administration-inhaled-oxygen",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreMedicationAdministrationInhaledOxygenProfile",
  "title" : "FR Core Medication Administration Inhaled Oxygen Profile",
  "status" : "active",
  "date" : "2025-12-02T20:49:48+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [
    {
      "name" : "Interop'Santé",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://interopsante.org/"
        }
      ]
    },
    {
      "name" : "InteropSanté",
      "telecom" : [
        {
          "system" : "email",
          "value" : "fhir@interopsante.org",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Profile based on the MedicationAdministration resource to indicate inhaled oxygen. This profile makes it possible to complement the information from the Oxygen Saturation Observation resource with oxygen intake provided through mechanical ventilation.\r\n\nProfil se basant sur la ressource Medication Administration pour indiquer l'oxygène inhalé. Ce profil permet de compléter les informations de la ressource Observation saturation en oxygène avec les apports d'oxygène via une ventilation mécanique.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "France"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
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
    },
    {
      "identity" : "w3c.prov",
      "uri" : "http://www.w3.org/ns/prov",
      "name" : "W3C PROV"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationAdministration",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationAdministration",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationAdministration",
        "path" : "MedicationAdministration"
      },
      {
        "id" : "MedicationAdministration.meta.profile",
        "path" : "MedicationAdministration.meta.profile",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "$this"
            }
          ],
          "description" : "Slice based on the canonical url value",
          "rules" : "open"
        }
      },
      {
        "id" : "MedicationAdministration.meta.profile:fr-canonical",
        "path" : "MedicationAdministration.meta.profile",
        "sliceName" : "fr-canonical",
        "min" : 0,
        "max" : "1",
        "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-administration-inhaled-oxygen"
      },
      {
        "id" : "MedicationAdministration.medication[x]",
        "path" : "MedicationAdministration.medication[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "MedicationAdministration.medication[x].coding",
        "path" : "MedicationAdministration.medication[x].coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "MedicationAdministration.medication[x].coding.system",
        "path" : "MedicationAdministration.medication[x].coding.system",
        "min" : 1,
        "fixedUri" : "http://snomed.info/sct"
      },
      {
        "id" : "MedicationAdministration.medication[x].coding.code",
        "path" : "MedicationAdministration.medication[x].coding.code",
        "short" : "Product containing oxygen (medicinal product) | Administration d'oxygène",
        "min" : 1,
        "fixedCode" : "767111007"
      },
      {
        "id" : "MedicationAdministration.subject",
        "path" : "MedicationAdministration.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.performer.actor",
        "path" : "MedicationAdministration.performer.actor",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
              "http://hl7.org/fhir/StructureDefinition/Device",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner",
              "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient"
            ]
          }
        ]
      }
    ]
  }
}

```
