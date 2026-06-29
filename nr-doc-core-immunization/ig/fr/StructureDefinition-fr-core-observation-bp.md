# FR Core Observation Blood Pressure Profile - Guide d'implémentation FR Core v2.2.0

## Profil de ressource: FR Core Observation Blood Pressure Profile 

 
French profile for blood pressure. 
Profil français de la pression artérielle. Profil basé sur le profil bp d’HL7 

**Utilisations:**

* Exemples pour ce/t/te Profil: [Observation/FRCoreObservationBPExample](Observation-FRCoreObservationBPExample.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-observation-bp)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [observation-bp](http://hl7.org/fhir/R4/bp.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [observation-bp](http://hl7.org/fhir/R4/bp.html) 

** Résumé **

Obligatoire : 3 éléments(4 éléments obligatoire(s) imbriqué(s))
 Interdit : 1 élément

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Encounter Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-encounter|2.2.0)](StructureDefinition-fr-core-encounter.md)
* [CareTeam (http://hl7.org/fhir/StructureDefinition/CareTeam|4.0.1)](http://hl7.org/fhir/R4/careteam.html)
* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0)](StructureDefinition-fr-core-patient.md)
* [FR Core Practitioner Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0)](StructureDefinition-fr-core-practitioner.md)
* [PractitionerRole (http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1)](http://hl7.org/fhir/R4/practitionerrole.html)
* [FR Core Organization Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0)](StructureDefinition-fr-core-organization.md)
* [FR Core Related Person Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person|2.2.0)](StructureDefinition-fr-core-related-person.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo|5.3.0](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-workflow-supportingInfo.html)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Observation.meta.profile
* The element 1 is sliced based on the value of Observation.value[x]
* Il y a une slice sans discriminateur à Observation.component.value[x]
* The element 2 is sliced based on the values of Observation.component.code.coding

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [observation-bp](http://hl7.org/fhir/R4/bp.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [observation-bp](http://hl7.org/fhir/R4/bp.html) 

** Résumé **

Obligatoire : 3 éléments(4 éléments obligatoire(s) imbriqué(s))
 Interdit : 1 élément

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Encounter Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-encounter|2.2.0)](StructureDefinition-fr-core-encounter.md)
* [CareTeam (http://hl7.org/fhir/StructureDefinition/CareTeam|4.0.1)](http://hl7.org/fhir/R4/careteam.html)
* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0)](StructureDefinition-fr-core-patient.md)
* [FR Core Practitioner Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0)](StructureDefinition-fr-core-practitioner.md)
* [PractitionerRole (http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1)](http://hl7.org/fhir/R4/practitionerrole.html)
* [FR Core Organization Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0)](StructureDefinition-fr-core-organization.md)
* [FR Core Related Person Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person|2.2.0)](StructureDefinition-fr-core-related-person.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo|5.3.0](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-workflow-supportingInfo.html)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Observation.meta.profile
* The element 1 is sliced based on the value of Observation.value[x]
* Il y a une slice sans discriminateur à Observation.component.value[x]
* The element 2 is sliced based on the values of Observation.component.code.coding

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-core-observation-bp.csv), [Excel](../StructureDefinition-fr-core-observation-bp.xlsx), [Schematron](../StructureDefinition-fr-core-observation-bp.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-observation-bp",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-bp",
  "version" : "2.2.0",
  "name" : "FRCoreObservationBpProfile",
  "title" : "FR Core Observation Blood Pressure Profile",
  "status" : "active",
  "date" : "2026-06-29T10:25:23+00:00",
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
  "description" : "French profile for blood pressure.\r\n\nProfil français de la pression artérielle. Profil basé sur le profil bp d'HL7",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/bp|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
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
      "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-bp|2.2.0"
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
      "id" : "Observation.extension:supportingInfo",
      "path" : "Observation.extension",
      "sliceName" : "supportingInfo",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo|5.3.0"]
      }]
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "min" : 1
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-encounter|2.2.0"]
      }]
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "definition" : "Often just a dateTime for Vital Signs"
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/CareTeam|4.0.1",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person|2.2.0"]
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
      },
      "max" : "0"
    },
    {
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-spo2-body-location|2.2.0"
      }
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-bp-meas-method|2.2.0"
      }
    },
    {
      "id" : "Observation.component:SystolicBP",
      "path" : "Observation.component",
      "sliceName" : "SystolicBP"
    },
    {
      "id" : "Observation.component:SystolicBP.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1
    },
    {
      "id" : "Observation.component:SystolicBP.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:DiastolicBP",
      "path" : "Observation.component",
      "sliceName" : "DiastolicBP",
      "short" : "Used when reporting diastolic blood pressure.",
      "definition" : "Used when reporting diastolic blood pressure."
    },
    {
      "id" : "Observation.component:DiastolicBP.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1
    },
    {
      "id" : "Observation.component:DiastolicBP.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "description" : "Erroneous slicing wainting for R5 correction",
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:MeanBP",
      "path" : "Observation.component",
      "sliceName" : "MeanBP",
      "short" : "Mean blood pressure",
      "definition" : "Mean blood pressure",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:MeanBP.code.coding",
      "path" : "Observation.component.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code"
        },
        {
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Erroneous slicing wainting for R5 correction",
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Observation.component:MeanBP.code.coding:MBPCode",
      "path" : "Observation.component.code.coding",
      "sliceName" : "MBPCode",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:MeanBP.code.coding:MBPCode.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1,
      "patternUri" : "http://loinc.org"
    },
    {
      "id" : "Observation.component:MeanBP.code.coding:MBPCode.code",
      "path" : "Observation.component.code.coding.code",
      "short" : "Mean blood pressure",
      "definition" : "Mean blood pressure",
      "min" : 1,
      "patternCode" : "8478-0"
    }]
  }
}

```
