# FR Core Organization Extension - Nombre total de places d'hébergement théoriques - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Organization Extension - Nombre total de places d'hébergement théoriques**

## Extension: FR Core Organization Extension - Nombre total de places d'hébergement théoriques 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-place-hebergement-theorique | *Version*:2.2.0-ballot-2 |
| Active as of 2026-01-29 | *Computable Name*:FRCoreOrganizationPlaceHebergementTheoriqueExtension |

Nombre total de places d’hébergement théoriques

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [FR Core Organization UF Profile](StructureDefinition-fr-core-organization-uf.md)
* Exemples pour ce Extension: [UF Dialyse](Organization-hopitaltest-uf-4420-dialyse.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-organization-place-hebergement-theorique)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-organization-place-hebergement-theorique.csv), [Excel](StructureDefinition-fr-core-organization-place-hebergement-theorique.xlsx), [Schematron](StructureDefinition-fr-core-organization-place-hebergement-theorique.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-organization-place-hebergement-theorique",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-place-hebergement-theorique",
  "version" : "2.2.0-ballot-2",
  "name" : "FRCoreOrganizationPlaceHebergementTheoriqueExtension",
  "title" : "FR Core Organization Extension - Nombre total de places d'hébergement théoriques",
  "status" : "active",
  "date" : "2026-01-29T08:34:51+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [
    {
      "name" : "Interop'Santé",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://interopsante.org"
        }
      ]
    },
    {
      "name" : "InteropSanté",
      "telecom" : [
        {
          "system" : "email",
          "value" : "fhir@interopsante.org",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Nombre total de places d'hébergement théoriques",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FRA",
          "display" : "France"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf#Organization"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "FR Core Organization Extension - Nombre total de places d'hébergement théoriques",
        "definition" : "Nombre total de places d'hébergement théoriques"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-place-hebergement-theorique"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      }
    ]
  }
}

```
