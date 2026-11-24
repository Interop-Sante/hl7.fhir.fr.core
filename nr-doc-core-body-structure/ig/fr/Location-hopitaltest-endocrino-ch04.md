# hopitaltest-endocrino-ch04 - Guide d'implémentation FR Core v2.2.0

## Exemple Location: hopitaltest-endocrino-ch04

-------

**French**

-------

Profil: [FR Core Location Profile](StructureDefinition-fr-core-location.md)

Chambre 04 (Chambre)

-------

| | |
| :--- | :--- |
| Status: | Active |
| Type: | Chambre |
| Managed By: | [UF Endocrino Diabeto (Unité fonctionnelle) (http://hopitalTest.fr/namingsystem/organization#4701 (use: official))](Organization-hopitaltest-uf-4701-endocrino-diab.md) |



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "hopitaltest-endocrino-ch04",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location"]
  },
  "status" : "active",
  "name" : "Chambre 04",
  "type" : [{
    "coding" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-type",
      "code" : "CHAMB",
      "display" : "Chambre"
    }],
    "text" : "Chambre"
  }],
  "managingOrganization" : {
    "reference" : "Organization/hopitaltest-uf-4701-endocrino-diab"
  }
}

```
