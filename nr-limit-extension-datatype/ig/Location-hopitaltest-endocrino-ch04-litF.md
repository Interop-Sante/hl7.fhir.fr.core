# hopitaltest-endocrino-ch04-litF - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **hopitaltest-endocrino-ch04-litF**

## Example Location: hopitaltest-endocrino-ch04-litF

Profil: [FR Core Location Profile](StructureDefinition-fr-core-location.md)

**fr/ig/fhir/core/StructureDefinition/fr-core-location-position-lit**: [FR Core CodeSystem Position du lit: FNTR](CodeSystem-fr-core-cs-location-position-lit.md#fr-core-cs-location-position-lit-FNTR) (Fenêtre)

**status**: Active

**name**: Lit Fenetre - chambre 04

**type**: Lit

**telecom**: ph: 84921

**partOf**: [Organization/hopitaltest-endocrino-ch04](Organization/hopitaltest-endocrino-ch04)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "hopitaltest-endocrino-ch04-litF",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location-position-lit",
      "valueCoding" : {
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-position-lit",
        "code" : "FNTR",
        "display" : "Fenêtre"
      }
    }
  ],
  "status" : "active",
  "name" : "Lit Fenetre - chambre 04",
  "type" : [
    {
      "coding" : [
        {
          "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-type",
          "code" : "LIT",
          "display" : "Lit"
        }
      ],
      "text" : "Lit"
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "84921"
    }
  ],
  "partOf" : {
    "reference" : "Organization/hopitaltest-endocrino-ch04"
  }
}

```
