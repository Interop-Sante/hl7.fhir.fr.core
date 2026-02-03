# hopitaltest-service-11007-dietetique - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **hopitaltest-service-11007-dietetique**

## Example Organization: hopitaltest-service-11007-dietetique

Profil: [FR Core Organization Profile](StructureDefinition-fr-core-organization.md)

**identifier**: `http://hopitalTest.fr/namingsystem/organization`/11007 (utilisation : official, )

**type**: SERVICE

**name**: Service Dietetique



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "hopitaltest-service-11007-dietetique",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"
    ]
  },
  "identifier" : [
    {
      "use" : "official",
      "system" : "http://hopitalTest.fr/namingsystem/organization",
      "value" : "11007"
    }
  ],
  "type" : [
    {
      "coding" : [
        {
          "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307",
          "code" : "SERVICE",
          "display" : "Service"
        }
      ],
      "text" : "SERVICE"
    }
  ],
  "name" : "Service Dietetique"
}

```
