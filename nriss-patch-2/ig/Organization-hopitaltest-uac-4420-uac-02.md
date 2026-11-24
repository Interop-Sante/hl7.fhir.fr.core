# hopitaltest-uac-4420-uac-02 - Guide d'implémentation FR Core v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **hopitaltest-uac-4420-uac-02**

## Example Organization: hopitaltest-uac-4420-uac-02

Profil: [FR Core Organization UAC Profile](StructureDefinition-fr-core-organization-uac.md)

**FR Core Organization Short Name Extension**: UF Dialyse

**Organization Period**: 2023-01-01 00:00:00+0100 --> (en cours)

**FR Core Organization Extension - Discipline Prestation**: [FR Core CodeSystem Discipline d'Equipement - nomenclature SAE: 798](CodeSystem-fr-core-cs-discipline-equipement.md#fr-core-cs-discipline-equipement-798) (Hémodialyse en centre pour enfant)

**identifier**: `http://hopitalTest.fr/namingsystem/organization`/4220-02 (utilisation : official, )

**type**: Unité d'activité

**name**: UAC 02 Dialyse

**partOf**: [Organization UF Dialyse](Organization-hopitaltest-uf-4420-dialyse.md)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "hopitaltest-uac-4420-uac-02",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uac"]
  },
  "extension" : [{
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-short-name",
    "valueString" : "UF Dialyse"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/organization-period",
    "valuePeriod" : {
      "start" : "2023-01-01T00:00:00+01:00"
    }
  },
  {
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-discipline-prestation",
    "valueCoding" : {
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-discipline-equipement",
      "code" : "798"
    }
  }],
  "identifier" : [{
    "use" : "official",
    "system" : "http://hopitalTest.fr/namingsystem/organization",
    "value" : "4220-02"
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307",
      "code" : "UAC"
    }]
  }],
  "name" : "UAC 02 Dialyse",
  "partOf" : {
    "reference" : "Organization/hopitaltest-uf-4420-dialyse"
  }
}

```
