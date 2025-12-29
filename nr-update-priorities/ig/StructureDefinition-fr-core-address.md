# FR Core Address Profile - Guide d'implémentation FR Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Address Profile**

## Data Type Profile: FR Core Address Profile 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address | *Version*:2.2.0-ballot |
| Active as of 2025-12-29 | *Computable Name*:FRCoreAddressProfile |

 
Profil du type de données Address pour la France, ce profil ajoute le code insee à l’adresse. Une cohérence entre code commune (COG), code postal et nom de commune doit être assurée. French profile of Address datatype 

**Utilisations:**

* Utiliser ce Profil de type de données: [FR Core Location Profile](StructureDefinition-fr-core-location.md), [FR Core Organization Profile](StructureDefinition-fr-core-organization.md), [FR Core Patient Profile](StructureDefinition-fr-core-patient.md), [FR Core Practitioner Profile](StructureDefinition-fr-core-practitioner.md) and [FR Core Related Person Profile](StructureDefinition-fr-core-related-person.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-address)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-address.csv), [Excel](StructureDefinition-fr-core-address.xlsx), [Schematron](StructureDefinition-fr-core-address.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-address",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreAddressProfile",
  "title" : "FR Core Address Profile",
  "status" : "active",
  "date" : "2025-12-29T10:57:12+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [
    {
      "name" : "Interop'Santé",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://interopsante.org/"
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
  "description" : "Profil du type de données Address pour la France, ce profil ajoute le code insee à l'adresse. Une cohérence entre code commune (COG), code postal et nom de commune doit être assurée.\r\nFrench profile of Address datatype",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "France"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "servd",
      "uri" : "http://www.omg.org/spec/ServD/1.0/",
      "name" : "ServD"
    },
    {
      "identity" : "vcard",
      "uri" : "http://w3.org/vcard",
      "name" : "vCard Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Address",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Address",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Address",
        "path" : "Address"
      },
      {
        "id" : "Address.extension:inseeCode",
        "path" : "Address.extension",
        "sliceName" : "inseeCode",
        "short" : "Code COG de la ville",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code"
            ]
          }
        ]
      },
      {
        "id" : "Address.city",
        "path" : "Address.city",
        "short" : "Les communes existantes sont définies ici : https://public.opendatasoft.com/explore/dataset/correspondance-code-insee-code-postal/table."
      },
      {
        "id" : "Address.country",
        "path" : "Address.country",
        "short" : "Country (will be ISO 3166 3 letter code; code=FRA for France)"
      }
    ]
  }
}

```
