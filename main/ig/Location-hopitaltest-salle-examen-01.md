# hopitaltest-salle-examen-01 - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **hopitaltest-salle-examen-01**

## Example Location: hopitaltest-salle-examen-01

Profil: [FR Core Location Profile](StructureDefinition-fr-core-location.md)

**status**: Active

**name**: Salle d'examen 01

**type**: Salle d'examen

**telecom**: ph: 84900

**partOf**: [Organization UF Endocrino Diabeto](Organization-hopitaltest-uf-4701-endocrino-diab.md)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "hopitaltest-salle-examen-01",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location"
    ]
  },
  "status" : "active",
  "name" : "Salle d'examen 01",
  "type" : [
    {
      "coding" : [
        {
          "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-type",
          "code" : "SL_EXM",
          "display" : "Salle d'examen"
        }
      ],
      "text" : "Salle d'examen"
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "84900"
    }
  ],
  "partOf" : {
    "reference" : "Organization/hopitaltest-uf-4701-endocrino-diab"
  }
}

```
