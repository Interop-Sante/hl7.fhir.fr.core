# hopitaltest-endocrino-ch04-litF - Guide d'implémentation FR Core v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **hopitaltest-endocrino-ch04-litF**

## Example Location: hopitaltest-endocrino-ch04-litF

Profil: [FR Core Location Profile](StructureDefinition-fr-core-location.md)

**FR Core Location Extension - Position du lit**: [FR Core CodeSystem Position du lit: FNTR](CodeSystem-fr-core-cs-location-position-lit.md#fr-core-cs-location-position-lit-FNTR) (Fenêtre)

**status**: Active

**name**: Lit Fenetre - chambre 04

**type**: Lit

**telecom**: ph: 84921

**managingOrganization**: [Organization UF Endocrino Diabeto](Organization-hopitaltest-uf-4701-endocrino-diab.md)

**partOf**: [Location Chambre 04](Location-hopitaltest-endocrino-ch04.md)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "hopitaltest-endocrino-ch04-litF",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location"]
  },
  "extension" : [{
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location-position-lit",
    "valueCoding" : {
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-position-lit",
      "code" : "FNTR",
      "display" : "Fenêtre"
    }
  }],
  "status" : "active",
  "name" : "Lit Fenetre - chambre 04",
  "type" : [{
    "coding" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-type",
      "code" : "LIT",
      "display" : "Lit"
    }],
    "text" : "Lit"
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "84921"
  }],
  "managingOrganization" : {
    "reference" : "Organization/hopitaltest-uf-4701-endocrino-diab"
  },
  "partOf" : {
    "reference" : "Location/hopitaltest-endocrino-ch04"
  }
}

```
