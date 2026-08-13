# FR Core MedicationRequest Profile - Guide d'implémentation FR Core v2.2.0

## Profil de ressource: FR Core MedicationRequest Profile 

 
FRCoreMedicationRequestProfile permet de décrire un traitement prescrit avec notamment le médicament, le mode d’administration, la quantité, la durée et la fréquence d’administration. 

**Utilisations:**

* Référence ce Profil: [FR Core MedicationAdministration Profile](StructureDefinition-fr-core-medication-administration.md), [FR Core MedicationDispense Profile](StructureDefinition-fr-core-medication-dispense.md), [FR Core MedicationRequest Profile](StructureDefinition-fr-core-medication-request.md) and [FR Core MedicationStatement Profile](StructureDefinition-fr-core-medication-statement.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-medication-request)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [MedicationRequestEuCore](http://hl7.eu/fhir/base/2.0.0/StructureDefinition-medicationRequest-eu-core.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [MedicationRequestEuCore](http://hl7.eu/fhir/base/2.0.0/StructureDefinition-medicationRequest-eu-core.html) 

** Résumé **

Obligatoire : 1 élément(7 éléments obligatoire(s) imbriqué(s))
 Interdit : 1 élément

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Medication Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication|2.2.0)](StructureDefinition-fr-core-medication.md)
* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0)](StructureDefinition-fr-core-patient.md)
* [FR Core Patient INS Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins|2.2.0)](StructureDefinition-fr-core-patient-ins.md)
* [FR Core Practitioner Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0)](StructureDefinition-fr-core-practitioner.md)
* [FR Core Practitioner Role (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role|2.2.0)](StructureDefinition-fr-core-practitioner-role.md)
* [FR Core Organization Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0)](StructureDefinition-fr-core-organization.md)
* [RelatedPerson (http://hl7.org/fhir/StructureDefinition/RelatedPerson|4.0.1)](http://hl7.org/fhir/R4/relatedperson.html)
* [Observation (http://hl7.org/fhir/StructureDefinition/Observation|4.0.1)](http://hl7.org/fhir/R4/observation.html)
* [Condition (http://hl7.org/fhir/StructureDefinition/Condition|4.0.1)](http://hl7.org/fhir/R4/condition.html)
* [FR Core Observation Prevention (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-prevention|2.2.0)](StructureDefinition-fr-core-observation-prevention.md)
* [FR Core Observation ALD (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-ald|2.2.0)](StructureDefinition-fr-core-observation-ald.md)
* [Observation - FR Core Observation Work Related Accident (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-work-related-accident|2.2.0)](StructureDefinition-fr-core-observation-work-related-accident.md)
* [FR Core MedicationRequest Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-request|2.2.0)](StructureDefinition-fr-core-medication-request.md)
* [CarePlan (http://hl7.org/fhir/StructureDefinition/CarePlan|4.0.1)](http://hl7.org/fhir/R4/careplan.html)
* [ServiceRequest (http://hl7.org/fhir/StructureDefinition/ServiceRequest|4.0.1)](http://hl7.org/fhir/R4/servicerequest.html)
* [ImmunizationRecommendation (http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation|4.0.1)](http://hl7.org/fhir/R4/immunizationrecommendation.html)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-treatment-intent|2.2.0](StructureDefinition-fr-core-treatment-intent.md)
* [https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-offLabel|1.0.0-comment-2](https://profiles.ihe.net/PHARM/MPD/1.0.0-comment-2/StructureDefinition-ihe-ext-offLabel.html)
* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-not-covered|2.2.0](StructureDefinition-fr-core-not-covered.md)
* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-additional-when-values|2.2.0](StructureDefinition-fr-core-additional-when-values.md)
* [http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.dispenseRequest.dispenserInstruction|0.1.0](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-ext-R5-MedicationRequest.dis.dispenserInstruction.html)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of MedicationRequest.dosageInstruction.timing.repeat.bounds[x]
* The element 1 is sliced based on the value of MedicationRequest.dosageInstruction.doseAndRate.rate[x]
* The element 1 is sliced based on the value of MedicationRequest.substitution.allowed[x]

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [MedicationRequestEuCore](http://hl7.eu/fhir/base/2.0.0/StructureDefinition-medicationRequest-eu-core.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [MedicationRequestEuCore](http://hl7.eu/fhir/base/2.0.0/StructureDefinition-medicationRequest-eu-core.html) 

** Résumé **

Obligatoire : 1 élément(7 éléments obligatoire(s) imbriqué(s))
 Interdit : 1 élément

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Medication Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication|2.2.0)](StructureDefinition-fr-core-medication.md)
* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0)](StructureDefinition-fr-core-patient.md)
* [FR Core Patient INS Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins|2.2.0)](StructureDefinition-fr-core-patient-ins.md)
* [FR Core Practitioner Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0)](StructureDefinition-fr-core-practitioner.md)
* [FR Core Practitioner Role (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role|2.2.0)](StructureDefinition-fr-core-practitioner-role.md)
* [FR Core Organization Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0)](StructureDefinition-fr-core-organization.md)
* [RelatedPerson (http://hl7.org/fhir/StructureDefinition/RelatedPerson|4.0.1)](http://hl7.org/fhir/R4/relatedperson.html)
* [Observation (http://hl7.org/fhir/StructureDefinition/Observation|4.0.1)](http://hl7.org/fhir/R4/observation.html)
* [Condition (http://hl7.org/fhir/StructureDefinition/Condition|4.0.1)](http://hl7.org/fhir/R4/condition.html)
* [FR Core Observation Prevention (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-prevention|2.2.0)](StructureDefinition-fr-core-observation-prevention.md)
* [FR Core Observation ALD (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-ald|2.2.0)](StructureDefinition-fr-core-observation-ald.md)
* [Observation - FR Core Observation Work Related Accident (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-work-related-accident|2.2.0)](StructureDefinition-fr-core-observation-work-related-accident.md)
* [FR Core MedicationRequest Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-request|2.2.0)](StructureDefinition-fr-core-medication-request.md)
* [CarePlan (http://hl7.org/fhir/StructureDefinition/CarePlan|4.0.1)](http://hl7.org/fhir/R4/careplan.html)
* [ServiceRequest (http://hl7.org/fhir/StructureDefinition/ServiceRequest|4.0.1)](http://hl7.org/fhir/R4/servicerequest.html)
* [ImmunizationRecommendation (http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation|4.0.1)](http://hl7.org/fhir/R4/immunizationrecommendation.html)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-treatment-intent|2.2.0](StructureDefinition-fr-core-treatment-intent.md)
* [https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-offLabel|1.0.0-comment-2](https://profiles.ihe.net/PHARM/MPD/1.0.0-comment-2/StructureDefinition-ihe-ext-offLabel.html)
* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-not-covered|2.2.0](StructureDefinition-fr-core-not-covered.md)
* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-additional-when-values|2.2.0](StructureDefinition-fr-core-additional-when-values.md)
* [http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.dispenseRequest.dispenserInstruction|0.1.0](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-ext-R5-MedicationRequest.dis.dispenserInstruction.html)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of MedicationRequest.dosageInstruction.timing.repeat.bounds[x]
* The element 1 is sliced based on the value of MedicationRequest.dosageInstruction.doseAndRate.rate[x]
* The element 1 is sliced based on the value of MedicationRequest.substitution.allowed[x]

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-core-medication-request.csv), [Excel](../StructureDefinition-fr-core-medication-request.xlsx), [Schematron](../StructureDefinition-fr-core-medication-request.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-medication-request",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-request",
  "version" : "2.2.0",
  "name" : "FRCoreMedicationRequestProfile",
  "title" : "FR Core MedicationRequest Profile",
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
  "description" : "FRCoreMedicationRequestProfile permet de décrire un traitement prescrit avec notamment le médicament, le mode d'administration, la quantité, la durée et la fréquence d'administration.",
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
  "type" : "MedicationRequest",
  "baseDefinition" : "http://hl7.eu/fhir/base/StructureDefinition/medicationRequest-eu-core|2.0.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationRequest",
      "path" : "MedicationRequest"
    },
    {
      "id" : "MedicationRequest.extension:renderedDosageInstruction",
      "path" : "MedicationRequest.extension",
      "sliceName" : "renderedDosageInstruction",
      "short" : "Représentation lisible de la posologie"
    },
    {
      "id" : "MedicationRequest.extension:treatmentIntent",
      "path" : "MedicationRequest.extension",
      "sliceName" : "treatmentIntent",
      "short" : "Intention globale du traitement",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-treatment-intent|2.2.0"]
      }]
    },
    {
      "id" : "MedicationRequest.extension:offLabelUse",
      "path" : "MedicationRequest.extension",
      "sliceName" : "offLabelUse",
      "short" : "Usage hors Autorisation de Mise sur le Marché (hors AMM)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-offLabel|1.0.0-comment-2"]
      }]
    },
    {
      "id" : "MedicationRequest.extension:offLabelUse.extension:isOffLabelUse",
      "path" : "MedicationRequest.extension.extension",
      "sliceName" : "isOffLabelUse"
    },
    {
      "id" : "MedicationRequest.extension:offLabelUse.extension:isOffLabelUse.value[x]",
      "path" : "MedicationRequest.extension.extension.value[x]",
      "short" : "Indicateur hors AMM (doit être renseigné si l'extension est présente)"
    },
    {
      "id" : "MedicationRequest.extension:offLabelUse.extension:reason",
      "path" : "MedicationRequest.extension.extension",
      "sliceName" : "reason"
    },
    {
      "id" : "MedicationRequest.extension:offLabelUse.extension:reason.value[x]",
      "path" : "MedicationRequest.extension.extension.value[x]",
      "short" : "Motif du hors AMM"
    },
    {
      "id" : "MedicationRequest.extension:notCovered",
      "path" : "MedicationRequest.extension",
      "sliceName" : "notCovered",
      "short" : "Traitement non remboursable",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-not-covered|2.2.0"]
      }]
    },
    {
      "id" : "MedicationRequest.status",
      "path" : "MedicationRequest.status",
      "short" : "Statut"
    },
    {
      "id" : "MedicationRequest.medication[x]",
      "path" : "MedicationRequest.medication[x]",
      "short" : "Produit de santé",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication|2.2.0"]
      }]
    },
    {
      "id" : "MedicationRequest.subject",
      "path" : "MedicationRequest.subject",
      "short" : "Patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins|2.2.0"]
      }]
    },
    {
      "id" : "MedicationRequest.encounter",
      "path" : "MedicationRequest.encounter",
      "short" : "Contexte de soin"
    },
    {
      "id" : "MedicationRequest.authoredOn",
      "path" : "MedicationRequest.authoredOn",
      "short" : "Date de prescription"
    },
    {
      "id" : "MedicationRequest.requester",
      "path" : "MedicationRequest.requester",
      "short" : "Prescripteur",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role|2.2.0",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson|4.0.1"]
      }]
    },
    {
      "id" : "MedicationRequest.reasonReference",
      "path" : "MedicationRequest.reasonReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation|4.0.1",
        "http://hl7.org/fhir/StructureDefinition/Condition|4.0.1",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-prevention|2.2.0",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-ald|2.2.0",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-work-related-accident|2.2.0"]
      }]
    },
    {
      "id" : "MedicationRequest.instantiatesUri",
      "path" : "MedicationRequest.instantiatesUri",
      "short" : "Référence de la prescription"
    },
    {
      "id" : "MedicationRequest.basedOn",
      "path" : "MedicationRequest.basedOn",
      "short" : "Référence à un item du plan de traitement.",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-request|2.2.0",
        "http://hl7.org/fhir/StructureDefinition/CarePlan|4.0.1",
        "http://hl7.org/fhir/StructureDefinition/ServiceRequest|4.0.1",
        "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation|4.0.1"]
      }]
    },
    {
      "id" : "MedicationRequest.dosageInstruction",
      "path" : "MedicationRequest.dosageInstruction",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.dosageInstruction.sequence",
      "path" : "MedicationRequest.dosageInstruction.sequence",
      "short" : "Séquence (dosages progressifs/fractionnés)"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.additionalInstruction",
      "path" : "MedicationRequest.dosageInstruction.additionalInstruction",
      "short" : "Informations supplémentaires utilisables pour instructions au Patien ou pércondition préalables à l'utilisation du médicament"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing",
      "path" : "MedicationRequest.dosageInstruction.timing",
      "short" : "Durée du traitement et fréquence d'administration."
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.extension:AdditionalWhenValues",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.extension",
      "sliceName" : "AdditionalWhenValues",
      "short" : "Codes additionnels pour l'occurrence, issus de PN13",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-additional-when-values|2.2.0"]
      }]
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]",
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
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsPeriod",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]",
      "sliceName" : "boundsPeriod",
      "short" : "Durée du traitement",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsPeriod.start",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x].start",
      "short" : "Date de début du traitement"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsPeriod.end",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x].end",
      "short" : "Date de fin du traitement"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.asNeeded[x]",
      "path" : "MedicationRequest.dosageInstruction.asNeeded[x]",
      "short" : "Dosage conditionnel"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.site",
      "path" : "MedicationRequest.dosageInstruction.site",
      "short" : "Région anatomique d'administration",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-human-substance-administration-site-cisis|20260619134041"
      }
    },
    {
      "id" : "MedicationRequest.dosageInstruction.route",
      "path" : "MedicationRequest.dosageInstruction.route",
      "short" : "Voie d'administration",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-edqm|2.2.0"
      }
    },
    {
      "id" : "MedicationRequest.dosageInstruction.method",
      "path" : "MedicationRequest.dosageInstruction.method",
      "short" : "Méthode d'administration"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseRange",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]",
      "sliceName" : "doseRange",
      "short" : "Dose à administrer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }]
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseRange.low",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x].low",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseRange.high",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x].high",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]",
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
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRange",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]",
      "sliceName" : "rateRange",
      "short" : "Rythme d'administration",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }]
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRange.low",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x].low",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRange.high",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x].high",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.dosageInstruction.maxDosePerPeriod",
      "path" : "MedicationRequest.dosageInstruction.maxDosePerPeriod",
      "short" : "Dose maximale"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.numerator",
      "path" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.numerator",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.denominator",
      "path" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.denominator",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.dispenseRequest.extension:dispenserInstructionR5",
      "path" : "MedicationRequest.dispenseRequest.extension",
      "sliceName" : "dispenserInstructionR5",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.dispenseRequest.dispenserInstruction|0.1.0"]
      }]
    },
    {
      "id" : "MedicationRequest.dispenseRequest.extension:dispenserInstructionR5.extension",
      "path" : "MedicationRequest.dispenseRequest.extension.extension",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.dispenseRequest.extension:dispenserInstructionR5.value[x]",
      "path" : "MedicationRequest.dispenseRequest.extension.value[x]",
      "short" : "Instructions au dispensateur",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.dispenseRequest.validityPeriod",
      "path" : "MedicationRequest.dispenseRequest.validityPeriod",
      "short" : "Période de validité"
    },
    {
      "id" : "MedicationRequest.dispenseRequest.numberOfRepeatsAllowed",
      "path" : "MedicationRequest.dispenseRequest.numberOfRepeatsAllowed",
      "short" : "Nombre de renouvellement(s) possible(s)"
    },
    {
      "id" : "MedicationRequest.dispenseRequest.quantity",
      "path" : "MedicationRequest.dispenseRequest.quantity",
      "short" : "Quantité à dispenser"
    },
    {
      "id" : "MedicationRequest.substitution",
      "path" : "MedicationRequest.substitution",
      "short" : "Autorisation de substitution"
    },
    {
      "id" : "MedicationRequest.substitution.allowed[x]",
      "path" : "MedicationRequest.substitution.allowed[x]",
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
      "id" : "MedicationRequest.substitution.allowed[x]:allowedCodeableConcept",
      "path" : "MedicationRequest.substitution.allowed[x]",
      "sliceName" : "allowedCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActSubstanceAdminSubstitutionCode-cisis|20260619134042"
      }
    },
    {
      "id" : "MedicationRequest.substitution.reason.text",
      "path" : "MedicationRequest.substitution.reason.text",
      "short" : "Motif de non substitution (Marge thérapeutique étroite, Enfant forme galénique, Contre-indication formelle)."
    }]
  }
}

```
