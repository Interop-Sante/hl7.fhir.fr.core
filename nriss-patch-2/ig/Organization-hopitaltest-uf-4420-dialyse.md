# hopitaltest-uf-4420-dialyse - Guide d'implémentation FR Core v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **hopitaltest-uf-4420-dialyse**

## Example Organization: hopitaltest-uf-4420-dialyse

Profil: [FR Core Organization UF Profile](StructureDefinition-fr-core-organization-uf.md)

**FR Core Organization Short Name Extension**: UF Dialyse

**Organization Period**: 2023-01-01 00:00:00+0100 --> (en cours)

**FR Core Organization Extension - Indicateur d'une unité fonctionnelle**: Hébergement

**FR Core Organization Extension - Discipline d'équipement**: [FR Core CodeSystem Discipline d'Equipement - nomenclature SAE: 797](CodeSystem-fr-core-cs-discipline-equipement.md#fr-core-cs-discipline-equipement-797) (Hémodialyse en centre pour adulte)

**FR Core Organization Extension - Champ d'activité**: [FR Core CodeSystem Champ Activite - Codes du champ d'activité: MCO](CodeSystem-fr-core-cs-champ-activite.md#fr-core-cs-champ-activite-MCO) (MCO)

**FR Core Organization Extension - UF Externe**: false

**FR Core Organization Extension - Nombre total de places d'hébergement théoriques**: 10

**FR Core Organization Extension - Demandeuse d'acte**: false

**FR Core Organization Extension - Exécutante d'acte**: true

**FR Core Organization Extension - quelles sont les entités qui font partie de l'organisation**: [UAC 01 Dialyse](Organization-hopitaltest-uac-4420-uac-01.md)

**FR Core Organization Extension - quelles sont les entités qui font partie de l'organisation**: [UAC 02 Dialyse](Organization-hopitaltest-uac-4420-uac-02.md)

**identifier**: `http://hopitalTest.fr/namingsystem/organization`/4220 (utilisation : official, )

**type**: Unité fonctionnelle

**name**: UF Dialyse

### Contacts

| | |
| :--- | :--- |
| - | **Telecom** |
| * | ph: 84220(Work) |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "hopitaltest-uf-4420-dialyse",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf"]
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
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf-indicateur",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-uf-indicateur",
        "code" : "HEB"
      },
      {
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-uf-indicateur",
        "code" : "MED"
      }]
    }
  },
  {
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-discipline-equipement",
    "valueCoding" : {
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-discipline-equipement",
      "code" : "797",
      "display" : "Hémodialyse en centre pour adulte"
    }
  },
  {
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-champ-activite",
    "valueCoding" : {
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-champ-activite",
      "code" : "MCO",
      "display" : "MCO"
    }
  },
  {
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf-externe",
    "valueBoolean" : false
  },
  {
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-place-hebergement-theorique",
    "valueInteger" : 10
  },
  {
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-demandeuse-acte",
    "valueBoolean" : false
  },
  {
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-executante-acte",
    "valueBoolean" : true
  },
  {
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member",
    "valueReference" : {
      "reference" : "Organization/hopitaltest-uac-4420-uac-01",
      "display" : "UAC 01 Dialyse"
    }
  },
  {
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member",
    "valueReference" : {
      "reference" : "Organization/hopitaltest-uac-4420-uac-02",
      "display" : "UAC 02 Dialyse"
    }
  }],
  "identifier" : [{
    "use" : "official",
    "system" : "http://hopitalTest.fr/namingsystem/organization",
    "value" : "4220"
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307",
      "code" : "UF"
    }]
  }],
  "name" : "UF Dialyse",
  "contact" : [{
    "telecom" : [{
      "system" : "phone",
      "value" : "84220",
      "use" : "work"
    }]
  }]
}

```
