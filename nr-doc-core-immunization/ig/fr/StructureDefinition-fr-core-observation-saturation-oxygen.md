# FR Core Observation Oxygen Saturation Profile - Guide d'implémentation FR Core v2.2.0

## Profil de ressource: FR Core Observation Oxygen Saturation Profile 

 
French profile for Oxygen saturation in Arterial blood. 
Profil de la saturation en oxygène du sang artériel. 

**Utilisations:**

* Exemples pour ce/t/te Profil: [Observation/FRCoreObservationOxygenSaturationExample](Observation-FRCoreObservationOxygenSaturationExample.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-observation-saturation-oxygen)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [observation-oxygensat](http://hl7.org/fhir/R4/oxygensat.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [observation-oxygensat](http://hl7.org/fhir/R4/oxygensat.html) 

** Résumé **

Obligatoire : 1 élément
 Must-Support : 1 élément

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Medication Administration Inhaled Oxygen Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-administration-inhaled-oxygen|2.2.0)](StructureDefinition-fr-core-medication-administration-inhaled-oxygen.md)
* [Patient (http://hl7.org/fhir/StructureDefinition/Patient|4.0.1)](http://hl7.org/fhir/R4/patient.html)
* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0)](StructureDefinition-fr-core-patient.md)
* [Encounter (http://hl7.org/fhir/StructureDefinition/Encounter|4.0.1)](http://hl7.org/fhir/R4/encounter.html)
* [FR Core Encounter Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-encounter|2.2.0)](StructureDefinition-fr-core-encounter.md)
* [CareTeam (http://hl7.org/fhir/StructureDefinition/CareTeam|4.0.1)](http://hl7.org/fhir/R4/careteam.html)
* [RelatedPerson (http://hl7.org/fhir/StructureDefinition/RelatedPerson|4.0.1)](http://hl7.org/fhir/R4/relatedperson.html)
* [FR Core Practitioner Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0)](StructureDefinition-fr-core-practitioner.md)
* [PractitionerRole (http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1)](http://hl7.org/fhir/R4/practitionerrole.html)
* [FR Core Organization Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0)](StructureDefinition-fr-core-organization.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo|5.3.0](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-workflow-supportingInfo.html)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Observation.meta.profile
* The element 1 is sliced based on the value of Observation.value[x]

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [observation-oxygensat](http://hl7.org/fhir/R4/oxygensat.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [observation-oxygensat](http://hl7.org/fhir/R4/oxygensat.html) 

** Résumé **

Obligatoire : 1 élément
 Must-Support : 1 élément

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Medication Administration Inhaled Oxygen Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-administration-inhaled-oxygen|2.2.0)](StructureDefinition-fr-core-medication-administration-inhaled-oxygen.md)
* [Patient (http://hl7.org/fhir/StructureDefinition/Patient|4.0.1)](http://hl7.org/fhir/R4/patient.html)
* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0)](StructureDefinition-fr-core-patient.md)
* [Encounter (http://hl7.org/fhir/StructureDefinition/Encounter|4.0.1)](http://hl7.org/fhir/R4/encounter.html)
* [FR Core Encounter Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-encounter|2.2.0)](StructureDefinition-fr-core-encounter.md)
* [CareTeam (http://hl7.org/fhir/StructureDefinition/CareTeam|4.0.1)](http://hl7.org/fhir/R4/careteam.html)
* [RelatedPerson (http://hl7.org/fhir/StructureDefinition/RelatedPerson|4.0.1)](http://hl7.org/fhir/R4/relatedperson.html)
* [FR Core Practitioner Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0)](StructureDefinition-fr-core-practitioner.md)
* [PractitionerRole (http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1)](http://hl7.org/fhir/R4/practitionerrole.html)
* [FR Core Organization Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0)](StructureDefinition-fr-core-organization.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo|5.3.0](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-workflow-supportingInfo.html)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Observation.meta.profile
* The element 1 is sliced based on the value of Observation.value[x]

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-core-observation-saturation-oxygen.csv), [Excel](../StructureDefinition-fr-core-observation-saturation-oxygen.xlsx), [Schematron](../StructureDefinition-fr-core-observation-saturation-oxygen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-observation-saturation-oxygen",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-saturation-oxygen",
  "version" : "2.2.0",
  "name" : "FRCoreObservationOxygenSaturationProfile",
  "title" : "FR Core Observation Oxygen Saturation Profile",
  "status" : "active",
  "date" : "2026-06-29T15:19:05+00:00",
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
  "description" : "French profile for Oxygen saturation in Arterial blood.\r\n\nProfil de la saturation en oxygène du sang artériel.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "purpose" : "Measurement of the oxygen saturation in the arterial blood | Mesure de la saturation en oxygène du sang artériel",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/oxygensat|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation",
      "short" : "French FHIR Oxygen Saturation Profile",
      "definition" : "This french profile defines  how to represent Oxygen Saturation observations in FHIR using a standard LOINC code and UCUM units of measure | Ce profil français définit comment représenter la mesure de la saturation en oxygène au niveau su sang artériel, en utilisant LOINC et UCUM"
    },
    {
      "id" : "Observation.meta.profile",
      "path" : "Observation.meta.profile",
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
      "id" : "Observation.meta.profile:fr-canonical",
      "path" : "Observation.meta.profile",
      "sliceName" : "fr-canonical",
      "min" : 0,
      "max" : "1",
      "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-saturation-oxygen|2.2.0"
    },
    {
      "id" : "Observation.extension",
      "path" : "Observation.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.extension:supportingInfoAdministrationOxygen",
      "path" : "Observation.extension",
      "sliceName" : "supportingInfoAdministrationOxygen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo|5.3.0"]
      }]
    },
    {
      "id" : "Observation.partOf",
      "path" : "Observation.partOf",
      "definition" : "A larger event of which this particular Observation is a component or step.  For example,  an observation as part of a MedicationAdministration. This observation can be related to a inhaled oxygen administration. The mesaurement of the oxygen satuation can't be done without knowing the administration of oxygen. [ Dans le cas où la mesure de la saturation en oxygène intervient en même temps que l'administration d'oxygène, cette mesure est liée dans un évènement plus large qui est l'administration de l'oxygène, via la relation partOf. Cet élément partOf doit être supporté par les implémentations.",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-medication-administration-inhaled-oxygen|2.2.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.partOf.reference",
      "path" : "Observation.partOf.reference",
      "mustSupport" : false
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "min" : 1
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient|4.0.1",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0"]
      }]
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Encounter|4.0.1",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-encounter|2.2.0"]
      }]
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/CareTeam|4.0.1",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson|4.0.1",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0"]
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
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
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-spo2-body-location|2.2.0"
      }
    }]
  }
}

```
