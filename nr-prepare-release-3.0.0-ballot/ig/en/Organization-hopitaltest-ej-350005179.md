# hopitaltest-ej-350005179 - Guide d'implémentation FR Core v3.0.0-ballot

## Example Organization: hopitaltest-ej-350005179

-------

**English**

-------

Profile: [FR Core Organization Etablissement Profile](StructureDefinition-fr-core-organization-etablissement.md)

CHRU RENNES (Etablissement Juridique) (FINESS d'entité juridique: 350005179 (use: official))

-------

| | |
| :--- | :--- |
| Type: | Etablissement Juridique |
| Other Id: | Identification de l'organisation au SIREN/263500076 (use: official) |
| [FR Core Organization Raison Sociale Extension](StructureDefinition-fr-core-organization-raison-sociale.md) | CHRU RENNES |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "hopitaltest-ej-350005179",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-etablissement"]
  },
  "extension" : [{
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-raison-sociale",
    "valueString" : "CHRU RENNES"
  }],
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
        "code" : "FINEJ",
        "display" : "FINESS d'entité juridique"
      }]
    },
    "system" : "https://finess.esante.gouv.fr",
    "value" : "350005179"
  },
  {
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
        "code" : "SIREN",
        "display" : "Identification de l'organisation au SIREN"
      }]
    },
    "system" : "https://sirene.fr",
    "value" : "263500076"
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307",
      "code" : "LEGAL-ENTITY",
      "display" : "Entité légale"
    }],
    "text" : "Etablissement Juridique"
  }],
  "name" : "CHRU RENNES"
}

```
