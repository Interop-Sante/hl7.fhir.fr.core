# FRCoreEncounterExample - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FRCoreEncounterExample**

## Example Encounter: FRCoreEncounterExample

Profil: [FR Core Encounter Profile](StructureDefinition-fr-core-encounter.md)

**FR Core Encounter Estimated Discharge Date Extension**: 2019-01-02

**identifier**: Visit Number/123

**status**: In Progress

**class**: [ActCode: AMB](http://terminology.hl7.org/7.0.1/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**period**: 2019-01-02 --> 2019-02-02



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "FRCoreEncounterExample",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-encounter"
    ]
  },
  "extension" : [
    {
      "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-estimated-discharge-date",
      "valueDate" : "2019-01-02"
    }
  ],
  "identifier" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-identifier-type",
            "code" : "VN"
          }
        ]
      },
      "system" : "http://encounter-identifier-system.org",
      "value" : "123"
    }
  ],
  "status" : "in-progress",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB"
  },
  "period" : {
    "start" : "2019-01-02",
    "end" : "2019-02-02"
  }
}

```
