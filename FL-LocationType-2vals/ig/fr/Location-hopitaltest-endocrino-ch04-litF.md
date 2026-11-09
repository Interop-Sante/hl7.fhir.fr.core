# hopitaltest-endocrino-ch04-litF - Guide d'implémentation FR Core v3.0.0-ballot

## Exemple Location: hopitaltest-endocrino-ch04-litF

-------

**French**

-------

Profil: [FR Core Location Profile](StructureDefinition-fr-core-location.md)

Lit Fenetre - chambre 04 (Lit)

-------

| | |
| :--- | :--- |
| Status: | Active |
| Type: | Lit |
| Coordonnées | ph: 84921 |
| Managed By: | [UF Endocrino Diabeto (Unité fonctionnelle) (http://hopitalTest.fr/namingsystem/organization#4701 (use: official))](Organization-hopitaltest-uf-4701-endocrino-diab.md) |
| Part Of: | [Chambre 04 (Chambre)](Location-hopitaltest-endocrino-ch04.md) |
| [FR Core Location Extension - Position du lit](StructureDefinition-fr-core-location-position-lit.md) | [FR Core CodeSystem Position du lit: FNTR](CodeSystem-fr-core-cs-location-position-lit.md#fr-core-cs-location-position-lit-FNTR)(Fenêtre) |



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
