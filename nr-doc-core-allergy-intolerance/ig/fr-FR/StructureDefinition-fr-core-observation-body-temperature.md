# FR Core Observation Body Temperature Profile - Guide d'implémentation FR Core v2.2.0

## : FR Core Observation Body Temperature Profile 

 
French profile for body temperature. 
Profil français de la mesure de la température. Profil basé sur le profil Vital Sign BodyTemperature d’HL7 

**Utilisations:**

* Exemples pour ce/t/te Profil: [Observation/FRCoreObservationBodyTemperatureExample](Observation-FRCoreObservationBodyTemperatureExample.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-observation-body-temperature)

### 

 . 

*   
*   
*   
*   

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

** Résumé **

Obligatoire : 1 élément
 Must-Support : 1 élément

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0)](StructureDefinition-fr-core-patient.md)
* [FR Core Encounter Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-encounter|2.2.0)](StructureDefinition-fr-core-encounter.md)
* [CareTeam (http://hl7.org/fhir/StructureDefinition/CareTeam|4.0.1)](http://hl7.org/fhir/R4/careteam.html)
* [RelatedPerson (http://hl7.org/fhir/StructureDefinition/RelatedPerson|4.0.1)](http://hl7.org/fhir/R4/relatedperson.html)
* [FR Core Practitioner Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0)](StructureDefinition-fr-core-practitioner.md)
* [FR Core Organization Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0)](StructureDefinition-fr-core-organization.md)
* [PractitionerRole (http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1)](http://hl7.org/fhir/R4/practitionerrole.html)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-level-of-exertion|2.2.0](StructureDefinition-fr-core-observation-level-of-exertion.md)
* [http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo|5.3.0](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-workflow-supportingInfo.html)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Observation.meta.profile
* The element 1 is sliced based on the value of Observation.value[x]

#### Bindings terminologiques (différentiel)

 **View** 

#### Bindings terminologiques

#### Contraintes

** Résumé **

Obligatoire : 1 élément
 Must-Support : 1 élément

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0)](StructureDefinition-fr-core-patient.md)
* [FR Core Encounter Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-encounter|2.2.0)](StructureDefinition-fr-core-encounter.md)
* [CareTeam (http://hl7.org/fhir/StructureDefinition/CareTeam|4.0.1)](http://hl7.org/fhir/R4/careteam.html)
* [RelatedPerson (http://hl7.org/fhir/StructureDefinition/RelatedPerson|4.0.1)](http://hl7.org/fhir/R4/relatedperson.html)
* [FR Core Practitioner Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0)](StructureDefinition-fr-core-practitioner.md)
* [FR Core Organization Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0)](StructureDefinition-fr-core-organization.md)
* [PractitionerRole (http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1)](http://hl7.org/fhir/R4/practitionerrole.html)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-level-of-exertion|2.2.0](StructureDefinition-fr-core-observation-level-of-exertion.md)
* [http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo|5.3.0](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-workflow-supportingInfo.html)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Observation.meta.profile
* The element 1 is sliced based on the value of Observation.value[x]

 

 ,  



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-observation-body-temperature",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-temperature",
  "version" : "2.2.0",
  "name" : "FRCoreObservationBodyTemperatureProfile",
  "title" : "FR Core Observation Body Temperature Profile",
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
  "description" : "French profile for body temperature.\r\n\nProfil français de la mesure de la température. Profil basé sur le profil Vital Sign BodyTemperature d'HL7",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/bodytemp|4.0.1",
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
      "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-temperature|2.2.0"
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
      "id" : "Observation.extension:levelOfExertion",
      "path" : "Observation.extension",
      "sliceName" : "levelOfExertion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-level-of-exertion|2.2.0"]
      }]
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
      }],
      "mustSupport" : true
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
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0"]
      }]
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
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/CareTeam|4.0.1",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson|4.0.1",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1"]
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
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vsbody-temp-meas-body-location|2.2.0"
      }
    }]
  }
}

```
