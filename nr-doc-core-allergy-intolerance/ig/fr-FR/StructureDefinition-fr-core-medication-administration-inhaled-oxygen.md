# FR Core Medication Administration Inhaled Oxygen Profile - Guide d'implémentation FR Core v2.2.0

## : FR Core Medication Administration Inhaled Oxygen Profile 

 
Profile based on the MedicationAdministration resource to indicate inhaled oxygen. This profile makes it possible to complement the information from the Oxygen Saturation Observation resource with oxygen intake provided through mechanical ventilation. 
Profil se basant sur la ressource Medication Administration pour indiquer l’oxygène inhalé. Ce profil permet de compléter les informations de la ressource Observation saturation en oxygène avec les apports d’oxygène via une ventilation mécanique. 

**Utilisations:**

* Référence ce Profil: [FR Core Observation Oxygen Saturation Profile](StructureDefinition-fr-core-observation-saturation-oxygen.md)
* Exemples pour ce/t/te Profil: [MedicationAdministration/FRCoreMedicationAdministrationInhaledOxygenExample](MedicationAdministration-FRCoreMedicationAdministrationInhaledOxygenExample.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-medication-administration-inhaled-oxygen)

### 

 . 

*   
*   
*   
*   

#### Bindings terminologiques

#### Contraintes

** Résumé **

Obligatoire : 3 éléments
 Fixe : 2 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0)](StructureDefinition-fr-core-patient.md)
* [RelatedPerson (http://hl7.org/fhir/StructureDefinition/RelatedPerson|4.0.1)](http://hl7.org/fhir/R4/relatedperson.html)
* [Device (http://hl7.org/fhir/StructureDefinition/Device|4.0.1)](http://hl7.org/fhir/R4/device.html)
* [FR Core Practitioner Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0)](StructureDefinition-fr-core-practitioner.md)
* [PractitionerRole (http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1)](http://hl7.org/fhir/R4/practitionerrole.html)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of MedicationAdministration.meta.profile

 **View** 

#### Bindings terminologiques

#### Contraintes

** Résumé **

Obligatoire : 3 éléments
 Fixe : 2 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0)](StructureDefinition-fr-core-patient.md)
* [RelatedPerson (http://hl7.org/fhir/StructureDefinition/RelatedPerson|4.0.1)](http://hl7.org/fhir/R4/relatedperson.html)
* [Device (http://hl7.org/fhir/StructureDefinition/Device|4.0.1)](http://hl7.org/fhir/R4/device.html)
* [FR Core Practitioner Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0)](StructureDefinition-fr-core-practitioner.md)
* [PractitionerRole (http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1)](http://hl7.org/fhir/R4/practitionerrole.html)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of MedicationAdministration.meta.profile

 

 ,  



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-medication-administration-inhaled-oxygen",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-administration-inhaled-oxygen",
  "version" : "2.2.0",
  "name" : "FRCoreMedicationAdministrationInhaledOxygenProfile",
  "title" : "FR Core Medication Administration Inhaled Oxygen Profile",
  "status" : "active",
  "date" : "2026-06-29T09:28:38+00:00",
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
  "description" : "Profile based on the MedicationAdministration resource to indicate inhaled oxygen. This profile makes it possible to complement the information from the Oxygen Saturation Observation resource with oxygen intake provided through mechanical ventilation.\r\n\nProfil se basant sur la ressource Medication Administration pour indiquer l'oxygène inhalé. Ce profil permet de compléter les informations de la ressource Observation saturation en oxygène avec les apports d'oxygène via une ventilation mécanique.",
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
  },
  {
    "identity" : "w3c.prov",
    "uri" : "http://www.w3.org/ns/prov",
    "name" : "W3C PROV"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationAdministration",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationAdministration|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationAdministration",
      "path" : "MedicationAdministration"
    },
    {
      "id" : "MedicationAdministration.meta.profile",
      "path" : "MedicationAdministration.meta.profile",
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
      "id" : "MedicationAdministration.meta.profile:fr-canonical",
      "path" : "MedicationAdministration.meta.profile",
      "sliceName" : "fr-canonical",
      "min" : 0,
      "max" : "1",
      "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-administration-inhaled-oxygen|2.2.0"
    },
    {
      "id" : "MedicationAdministration.medication[x]",
      "path" : "MedicationAdministration.medication[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
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
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0"]
      }]
    },
    {
      "id" : "MedicationAdministration.performer.actor",
      "path" : "MedicationAdministration.performer.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/RelatedPerson|4.0.1",
        "http://hl7.org/fhir/StructureDefinition/Device|4.0.1",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0"]
      }]
    }]
  }
}

```
