# FR Core Organization Etablissement Profile - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Organization Etablissement Profile**

## Resource Profile: FR Core Organization Etablissement Profile 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-etablissement | *Version*:2.2.0-ballot |
| Active as of 2026-01-22 | *Computable Name*:FRCoreOrganizationEtablissementProfile |

 
Profil de la ressource Organization permettant de représenter des établissements sanitaires et sociaux. 

### Usage

Le profil Etablissement permet de représenter un établissement qu’il soit géographique ou juridique. Un établissement juridique (ou entité juridique) correspond à l’entité institutionnelle dotée de la personnalité morale. Un établissement géographique (ou entité géographique) désigne un site de production de soins, c’est-à-dire un lieu physique où sont réalisées les activités sanitaires ou médico-sociales. Une même entité juridique peut regrouper plusieurs établissements géographiques si elle possède plusieurs implantations ou budgets distincts.

Les établissements sont référencés au Fichier National des Etablissements Sanitaires et Sociaux (FINESS) et possède un numéro FINESS, présent dans de nombreux échanges.

### Ajout du profil FR

Ce profil ajoute par rapport au profil FR Organization, dont il hérite :

* le numéro d’identification de l’établissement dans les registres Français
* la raison sociale
* la catégorie de l’établissement

Informations à positionner en fonction des types d’établissement

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Entité juridique | **✔** | **✔** | **✘** | **✘** |
| Entité géographique | **✔** | **✘** | **✔** | **✘** |
| Cabinet individuel sans SIRET | **✘** | **✘** | **✘** | **✔** |

**Utilisations:**

* Référer à ce Profil: [FR Core Organization Profile](StructureDefinition-fr-core-organization.md)
* Exemples pour ce Profil: [CHRU CENTRE VILLE](Organization-hopitaltest-eg-4-members.md) and [CHRU RENNES](Organization-hopitaltest-ej-350005179.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-organization-etablissement)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-organization-etablissement.csv), [Excel](StructureDefinition-fr-core-organization-etablissement.xlsx), [Schematron](StructureDefinition-fr-core-organization-etablissement.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-organization-etablissement",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-etablissement",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreOrganizationEtablissementProfile",
  "title" : "FR Core Organization Etablissement Profile",
  "status" : "active",
  "date" : "2026-01-22T11:51:24+00:00",
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
  "description" : "Profil de la ressource Organization permettant de représenter des établissements sanitaires et sociaux.",
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
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Organization",
        "path" : "Organization"
      },
      {
        "id" : "Organization.extension:sae",
        "path" : "Organization.extension",
        "sliceName" : "sae",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-sae-category"
            ]
          }
        ]
      },
      {
        "id" : "Organization.extension:raisonSociale",
        "path" : "Organization.extension",
        "sliceName" : "raisonSociale",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-raison-sociale"
            ]
          }
        ]
      },
      {
        "id" : "Organization.identifier",
        "path" : "Organization.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "system"
            },
            {
              "type" : "pattern",
              "path" : "type"
            }
          ],
          "description" : "Slice based on the identifier.system pattern",
          "rules" : "open"
        }
      },
      {
        "id" : "Organization.identifier.use",
        "path" : "Organization.identifier.use",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/identifier-use"
        }
      },
      {
        "id" : "Organization.identifier.type",
        "path" : "Organization.identifier.type",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-organization-identifier-type"
        }
      },
      {
        "id" : "Organization.identifier:idNatSt",
        "path" : "Organization.identifier",
        "sliceName" : "idNatSt",
        "short" : "Identifiant national de structure unique délivré par une autorité d'enregistrement tel que défini dans l'Annexe Transverse Source des données métier pour les professionnels et les structures.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Organization.identifier:idNatSt.use",
        "path" : "Organization.identifier.use",
        "min" : 1,
        "patternCode" : "official"
      },
      {
        "id" : "Organization.identifier:idNatSt.type",
        "path" : "Organization.identifier.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
              "code" : "IDNST"
            }
          ]
        }
      },
      {
        "id" : "Organization.identifier:idNatSt.system",
        "path" : "Organization.identifier.system",
        "min" : 1,
        "patternUri" : "urn:oid:1.2.250.1.71.4.2.2"
      },
      {
        "id" : "Organization.identifier:idNatSt.value",
        "path" : "Organization.identifier.value",
        "short" : "Identifiant national de la structure. Cet identifiant ne doit pas être construit ni interprété, la donnée peut être trouvée dans l'annuaire santé.",
        "definition" : "L'idNatStruct est construit, selon le cas, de cette manière : 0 + ADELI rang, 1 + Numéro FINESS Etablissement, 2 + Numéro SIREN, 3 + Numéro SIRET, 4 + RPPS rang ou identifiant technique de la structure",
        "min" : 1
      },
      {
        "id" : "Organization.identifier:siren",
        "path" : "Organization.identifier",
        "sliceName" : "siren",
        "short" : "Identifiant SIREN (9 chiffres)",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Organization.identifier:siren.type",
        "path" : "Organization.identifier.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
              "code" : "SIREN"
            }
          ]
        }
      },
      {
        "id" : "Organization.identifier:siren.system",
        "path" : "Organization.identifier.system",
        "min" : 1,
        "patternUri" : "https://sirene.fr"
      },
      {
        "id" : "Organization.identifier:siret",
        "path" : "Organization.identifier",
        "sliceName" : "siret",
        "short" : "Identifiant SIRET (14 chiffres)",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Organization.identifier:siret.type",
        "path" : "Organization.identifier.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
              "code" : "SIRET"
            }
          ]
        }
      },
      {
        "id" : "Organization.identifier:siret.system",
        "path" : "Organization.identifier.system",
        "min" : 1,
        "patternUri" : "https://sirene.fr"
      },
      {
        "id" : "Organization.identifier:finess",
        "path" : "Organization.identifier",
        "sliceName" : "finess",
        "short" : "Identifiant FINESS Entité Géographique (EG) ou Entité Juridique (EJ)",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Organization.identifier:finess.type.coding.system",
        "path" : "Organization.identifier.type.coding.system",
        "patternUri" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
      },
      {
        "id" : "Organization.identifier:finess.type.coding.code",
        "path" : "Organization.identifier.type.coding.code",
        "short" : "FINEJ | FINEG"
      },
      {
        "id" : "Organization.identifier:finess.system",
        "path" : "Organization.identifier.system",
        "min" : 1,
        "patternUri" : "https://finess.esante.gouv.fr"
      },
      {
        "id" : "Organization.identifier:rppsRang",
        "path" : "Organization.identifier",
        "sliceName" : "rppsRang",
        "short" : "RPPS rang (11 chiffres RPPS + 2 chiffres RANG)",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Organization.identifier:rppsRang.type",
        "path" : "Organization.identifier.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
              "code" : "INTRN"
            }
          ]
        }
      },
      {
        "id" : "Organization.identifier:rppsRang.system",
        "path" : "Organization.identifier.system",
        "min" : 1,
        "patternUri" : "https://rppsrang.esante.gouv.fr"
      },
      {
        "id" : "Organization.type",
        "path" : "Organization.type",
        "binding" : {
          "strength" : "example",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-organization-etablissement-type"
        }
      },
      {
        "id" : "Organization.name",
        "path" : "Organization.name",
        "short" : "Raison sociale de la structure",
        "mustSupport" : true
      }
    ]
  }
}

```
