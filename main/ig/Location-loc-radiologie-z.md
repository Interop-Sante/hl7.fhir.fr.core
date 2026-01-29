# FRCoreLocationExample - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FRCoreLocationExample**

## Example Location: FRCoreLocationExample

**identifier**: `urn:oid:1.2.250.1.1.1.2`/HOSPZ-RADIO (utilisation : official, )

**status**: Active

**name**: Centre de radiologie Hôpital Z

**description**: Imagerie médicale, radiographies, scanners, IRM

**mode**: Instance

**telecom**: [radiologie@hosp-z.fr](mailto:radiologie@hosp-z.fr)

**address**: 10 rue de la Santé Paris 75014 FRA 

**physicalType**: Bâtiment

### Positions

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Longitude** | **Latitude** | **Altitude** |
| * | 2.3333 | 48.8333 | 35 |

**managingOrganization**: [Organization HOPITAL INTERCOMMUNAL DE LA PRESQU'ILE G](Organization-FRCoreOrganizationExample.md)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "loc-radiologie-z",
  "identifier" : [
    {
      "use" : "official",
      "system" : "urn:oid:1.2.250.1.1.1.2",
      "value" : "HOSPZ-RADIO"
    }
  ],
  "status" : "active",
  "name" : "Centre de radiologie Hôpital Z",
  "description" : "Imagerie médicale, radiographies, scanners, IRM",
  "mode" : "instance",
  "telecom" : [
    {
      "system" : "email",
      "value" : "radiologie@hosp-z.fr"
    }
  ],
  "address" : {
    "line" : ["10 rue de la Santé"],
    "city" : "Paris",
    "district" : "14e arrondissement",
    "postalCode" : "75014",
    "country" : "FRA"
  },
  "physicalType" : {
    "coding" : [
      {
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-physical-type",
        "code" : "BTMNT",
        "display" : "Bâtiment"
      }
    ]
  },
  "position" : {
    "longitude" : 2.3333,
    "latitude" : 48.8333,
    "altitude" : 35
  },
  "managingOrganization" : {
    "reference" : "Organization/FRCoreOrganizationExample"
  }
}

```
