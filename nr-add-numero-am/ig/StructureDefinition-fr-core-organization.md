# FR Core Organization Profile - Guide d'implémentation FR Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Organization Profile**

## Resource Profile: FR Core Organization Profile 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization | *Version*:2.2.0-ballot |
| Active as of 2026-01-12 | *Computable Name*:FRCoreOrganizationProfile |

 
Profile of the Organization resource for France. This profile specifies the types of identifiers for organizations in France, and adds a number of French extensions. 
Profil de la ressource Organization pour la France. Ce profil spécifie les types d’identifiants pour l’organisation en France, et ajoute des extensions françaises. 

**Utilisations:**

* Référer à ce Profil: [FR Core Appointment Operator Extension](StructureDefinition-fr-core-appointment-operator.md), [FR Core Encounter Profile](StructureDefinition-fr-core-encounter.md), [FR Core Healthcare Service Profile](StructureDefinition-fr-core-healthcare-service.md), [FR Core Location Profile](StructureDefinition-fr-core-location.md)...Show 15 more,[FR Core Observation Bmi Profile](StructureDefinition-fr-core-observation-bmi.md),[FR Core Observation Body Height Profile](StructureDefinition-fr-core-observation-body-height.md),[FR Core Observation Body Temperature Profile](StructureDefinition-fr-core-observation-body-temperature.md),[FR Core Observation Body Weight Profile](StructureDefinition-fr-core-observation-body-weight.md),[FR Core Observation Blood Pressure Profile](StructureDefinition-fr-core-observation-bp.md),[FR Core Observation Head Circum Profile](StructureDefinition-fr-core-observation-head-circum.md),[FR Core Observation Heart Rate Profile](StructureDefinition-fr-core-observation-heartrate.md),[FR Core Observation Respiratory Rate Profile](StructureDefinition-fr-core-observation-resp-rate.md),[FR Core Observation Oxygen Saturation Profile](StructureDefinition-fr-core-observation-saturation-oxygen.md),[FR Core Organization Pole Profile](StructureDefinition-fr-core-organization-pole.md),[FR Core Organization UAC Profile](StructureDefinition-fr-core-organization-uac.md),[FR Core Organization UF Profile](StructureDefinition-fr-core-organization-uf.md),[FR Core Organization Profile](StructureDefinition-fr-core-organization.md),[FR Core Patient Profile](StructureDefinition-fr-core-patient.md)and[FR Core Practitioner Role](StructureDefinition-fr-core-practitioner-role.md)
* Exemples pour ce Profil: [HOPITAL INTERCOMMUNAL DE LA PRESQU'ILE G](Organization-FRCoreOrganizationExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-organization)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-organization.csv), [Excel](StructureDefinition-fr-core-organization.xlsx), [Schematron](StructureDefinition-fr-core-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-organization",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreOrganizationProfile",
  "title" : "FR Core Organization Profile",
  "status" : "active",
  "date" : "2026-01-12T10:01:59+00:00",
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
  "description" : "Profile of the Organization resource for France. This profile specifies the types of identifiers for organizations in France, and adds a number of French extensions. \r\n\nProfil de la ressource Organization pour la France. Ce profil spécifie les types d'identifiants pour l'organisation en France, et ajoute des extensions françaises.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Organization",
        "path" : "Organization"
      },
      {
        "id" : "Organization.meta.profile",
        "path" : "Organization.meta.profile",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "$this"
            }
          ],
          "description" : "Slice based on the canonical url value",
          "rules" : "open"
        }
      },
      {
        "id" : "Organization.meta.profile:fr-canonical",
        "path" : "Organization.meta.profile",
        "sliceName" : "fr-canonical",
        "min" : 0,
        "max" : "1",
        "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0-ballot"
      },
      {
        "id" : "Organization.extension",
        "path" : "Organization.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Organization.extension:shortName",
        "path" : "Organization.extension",
        "sliceName" : "shortName",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-short-name|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Organization.extension:description",
        "path" : "Organization.extension",
        "sliceName" : "description",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-description|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Organization.extension:usePeriod",
        "path" : "Organization.extension",
        "sliceName" : "usePeriod",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/organization-period|5.2.0"
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
              "type" : "value",
              "path" : "system"
            },
            {
              "type" : "value",
              "path" : "type"
            }
          ],
          "description" : "Slice based on the identifier.system #value",
          "rules" : "open"
        }
      },
      {
        "id" : "Organization.identifier.use",
        "path" : "Organization.identifier.use",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/identifier-use|4.0.1"
        }
      },
      {
        "id" : "Organization.identifier.type",
        "path" : "Organization.identifier.type",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-organization-identifier-type|2.2.0-ballot"
        }
      },
      {
        "id" : "Organization.identifier:idNatSt",
        "path" : "Organization.identifier",
        "sliceName" : "idNatSt",
        "short" : "Identifiant national de structure, à privilégier. L'idNatSt ne doit pas être construit, il peut être trouvé via l'API Annuaire Santé.",
        "definition" : "Identifiant national de structure unique délivré par une autorité d'enregistrement tel que défini dans l'Annexe Transverse Source des données métier pour les professionnels et les structures. L'idNatSt ne doit pas être construit, pour trouver l'identifiant d'une structure, il suffit de faire une requête via l'API Annuaire Santé. Il s'agit de l'identifiant national à privilégier.",
        "min" : 0,
        "max" : "1"
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
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "$this"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Organization.type:organizationType",
        "path" : "Organization.type",
        "sliceName" : "organizationType",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-organization-type|2.2.0-ballot"
        }
      },
      {
        "id" : "Organization.type:organizationType.coding",
        "path" : "Organization.type.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Organization.type:organizationType.coding.system",
        "path" : "Organization.type.coding.system",
        "min" : 1
      },
      {
        "id" : "Organization.type:secteurActiviteRASS",
        "path" : "Organization.type",
        "sliceName" : "secteurActiviteRASS",
        "short" : "Secteurs d'activité des établissements avec la même activité dans le RASS",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J101-SecteurActivite-RASS/FHIR/JDV-J101-SecteurActivite-RASS|20250828120000"
        }
      },
      {
        "id" : "Organization.type:secteurActiviteRASS.coding",
        "path" : "Organization.type.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Organization.type:secteurActiviteRASS.coding.system",
        "path" : "Organization.type.coding.system",
        "min" : 1
      },
      {
        "id" : "Organization.type:categorieEtablissementRASS",
        "path" : "Organization.type",
        "sliceName" : "categorieEtablissementRASS",
        "short" : "Catégorie d'établissement du RASS",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J129-CategorieEtablissement-RASS/FHIR/JDV-J129-CategorieEtablissement-RASS|20241025120000"
        }
      },
      {
        "id" : "Organization.type:categorieEtablissementRASS.coding",
        "path" : "Organization.type.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Organization.type:categorieEtablissementRASS.coding.system",
        "path" : "Organization.type.coding.system",
        "min" : 1
      },
      {
        "id" : "Organization.telecom",
        "path" : "Organization.telecom",
        "type" : [
          {
            "code" : "ContactPoint",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Organization.address",
        "path" : "Organization.address",
        "type" : [
          {
            "code" : "Address",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Organization.partOf",
        "path" : "Organization.partOf",
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
                "valueBoolean" : true
              }
            ],
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Organization.partOf.type",
        "path" : "Organization.partOf.type",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-organization-type|2.2.0-ballot"
        }
      },
      {
        "id" : "Organization.contact.telecom",
        "path" : "Organization.contact.telecom",
        "type" : [
          {
            "code" : "ContactPoint",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Organization.contact.address",
        "path" : "Organization.contact.address",
        "type" : [
          {
            "code" : "Address",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address|2.2.0-ballot"
            ]
          }
        ]
      }
    ]
  }
}

```
