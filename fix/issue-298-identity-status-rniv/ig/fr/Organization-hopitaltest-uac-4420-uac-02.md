# hopitaltest-uac-4420-uac-02 - Guide d'implémentation FR Core v3.0.0-ballot

## Exemple Organization: hopitaltest-uac-4420-uac-02

-------

**French**

-------

Profil: [FR Core Organization UAC Profile](StructureDefinition-fr-core-organization-uac.md)

UAC 02 Dialyse (Unité d'activité) (http://hopitalTest.fr/namingsystem/organization#4220-02 (use: official))

-------

| | |
| :--- | :--- |
| Type: | Unité d'activité |
| Part Of: | [UF Dialyse (Unité fonctionnelle) (http://hopitalTest.fr/namingsystem/organization#4220 (use: official))](Organization-hopitaltest-uf-4420-dialyse.md) |
| [FR Core Organization Extension - Discipline Prestation](StructureDefinition-fr-core-organization-discipline-prestation.md) | [FR Core CodeSystem Discipline d'Equipement - nomenclature SAE: 798](CodeSystem-fr-core-cs-discipline-equipement.md#fr-core-cs-discipline-equipement-798)(Hémodialyse en centre pour enfant) |
| [Organization Period](http://hl7.org/fhir/extensions/5.4.0/StructureDefinition-organization-period.html) | 2023-01-01 00:00:00+0100 --> (en cours) |
| [FR Core Organization Short Name Extension](StructureDefinition-fr-core-organization-short-name.md) | UF Dialyse |



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
