# FR Core Human Name Profile - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Human Name Profile**

## Data Type Profile: FR Core Human Name Profile 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-human-name | *Version*:2.2.0-ballot |
| Active as of 2025-12-05 | *Computable Name*:FRCoreHumanNameProfile |

 
Profilage du type de données HumanName pour prise en compte de la civilté au niveau de l’élément prefix et du titre au niveau de l’élément suffix .French profile of datatype HumanName with constraints on prefix and suffix 

**Utilisations:**

* Utiliser ce Profil de type de données: [FR Core Patient Profile](StructureDefinition-fr-core-patient.md), [FR Core Practitioner Profile](StructureDefinition-fr-core-practitioner.md) and [FR Core Related Person Profile](StructureDefinition-fr-core-related-person.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-human-name)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-human-name.csv), [Excel](StructureDefinition-fr-core-human-name.xlsx), [Schematron](StructureDefinition-fr-core-human-name.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-human-name",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-human-name",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreHumanNameProfile",
  "title" : "FR Core Human Name Profile",
  "status" : "active",
  "date" : "2025-12-05T08:27:25+00:00",
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
  "description" : "Profilage du type de données HumanName pour prise en compte de la civilté au niveau de l'élément prefix et du titre au niveau de l'élément suffix\r\n.French profile of datatype HumanName with constraints on prefix and suffix",
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
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "HumanName",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/HumanName|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "HumanName",
        "path" : "HumanName"
      },
      {
        "id" : "HumanName.extension:assemblyOrder",
        "path" : "HumanName.extension",
        "sliceName" : "assemblyOrder",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/humanname-assembly-order|5.2.0"
            ]
          }
        ]
      },
      {
        "id" : "HumanName.prefix",
        "path" : "HumanName.prefix",
        "max" : "1",
        "binding" : {
          "strength" : "extensible",
          "description" : "Civilités des personnes physiques",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J245-Civilite-CISIS/FHIR/JDV-J245-Civilite-CISIS|20230331120000"
        }
      }
    ]
  }
}

```
