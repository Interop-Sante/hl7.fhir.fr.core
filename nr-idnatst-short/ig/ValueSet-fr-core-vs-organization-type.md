# FR Core ValueSet Organization type - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core ValueSet Organization type**

## ValueSet: FR Core ValueSet Organization type 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-organization-type | *Version*:2.2.0-ballot |
| Active as of 2026-01-08 | *Computable Name*:FRCoreValueSetOrganizationType |

 
Types de structures. Organization types 

 **References** 

* [FR Core Organization Profile](StructureDefinition-fr-core-organization.md)
* [FR Core Organization Pole Profile](StructureDefinition-fr-core-organization-pole.md)
* [FR Core Organization UAC Profile](StructureDefinition-fr-core-organization-uac.md)
* [FR Core Organization UF Profile](StructureDefinition-fr-core-organization-uf.md)

### Définition logique (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-organization-type",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-organization-type",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreValueSetOrganizationType",
  "title" : "FR Core ValueSet Organization type",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-01-08T13:27:28+00:00",
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
  "description" : "Types de structures.\r\nOrganization types",
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
  "compose" : {
    "include" : [
      {
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307",
        "concept" : [
          {
            "code" : "GHT",
            "display" : "Groupement hospitalier de territoire"
          },
          {
            "code" : "LEGAL-ENTITY",
            "display" : "Entité juridique"
          },
          {
            "code" : "GEOGRAPHICAL-ENTITY",
            "display" : "Entité géographique"
          },
          {
            "code" : "GROUP",
            "display" : "Groupe privé / hospitalier"
          },
          {
            "code" : "HEBERGEMENT",
            "display" : "Hébergement"
          },
          {
            "code" : "SOIN",
            "display" : "Soin"
          },
          {
            "code" : "ADMINISTRATIF",
            "display" : "Administration"
          },
          {
            "code" : "MEDICAL",
            "display" : "Médical"
          },
          {
            "code" : "TECHNIQUE",
            "display" : "Technique"
          },
          {
            "code" : "MEDICOTEC",
            "display" : "medico technique (radio, scanner …)"
          },
          {
            "code" : "UF",
            "display" : "Unité fonctionnelle"
          },
          {
            "code" : "SERVICE",
            "display" : "Service"
          },
          {
            "code" : "UM",
            "display" : "Unité médicale"
          },
          {
            "code" : "UAC",
            "display" : "Unité d'activité"
          },
          {
            "code" : "POLE",
            "display" : "Pole"
          },
          {
            "code" : "CENTRE-RESP",
            "display" : "Centre de responsabilité"
          },
          {
            "code" : "CENTRE-ACTIVITE",
            "display" : "Centre d'activité"
          }
        ]
      }
    ]
  }
}

```
