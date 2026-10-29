# hopitaltest-salle-examen-01 - Guide d'implémentation FR Core v3.0.0-ballot

## Example Location: hopitaltest-salle-examen-01

-------

**English**

-------

Profile: [FR Core Location Profile](StructureDefinition-fr-core-location.md)

Salle d'examen 01 (Salle d'examen)

-------

| | |
| :--- | :--- |
| Status: | Active |
| Type: | Salle d'examen |
| Contact Detail | ph: 84900 |
| Managed By: | [UF Endocrino Diabeto (Unité fonctionnelle) (http://hopitalTest.fr/namingsystem/organization#4701 (use: official))](Organization-hopitaltest-uf-4701-endocrino-diab.md) |



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "hopitaltest-salle-examen-01",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location"]
  },
  "status" : "active",
  "name" : "Salle d'examen 01",
  "type" : [{
    "coding" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-type",
      "code" : "SL_EXM",
      "display" : "Salle d'examen"
    }],
    "text" : "Salle d'examen"
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "84900"
  }],
  "managingOrganization" : {
    "reference" : "Organization/hopitaltest-uf-4701-endocrino-diab"
  }
}

```
