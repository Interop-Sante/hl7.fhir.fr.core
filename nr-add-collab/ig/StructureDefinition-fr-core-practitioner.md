# FR Core Practitioner Profile - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Practitioner Profile**

## Resource Profile: FR Core Practitioner Profile 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner | *Version*:2.2.0-ballot |
| Active as of 2025-11-14 | *Computable Name*:FRCorePractitionerProfile |

 
Profil de la ressource Practitionner pour la France. 

### Usage

French profile of the Practitioner resource. This profile specifies the types of identifiers for practitioners in France. Profil de la ressource Practitionner pour la France. Ce profil contraint les types d’identifiants du professionnel de santé en France.

Ce profil représente le professionel ainsi que son exercice professionel.

Pour une même personne au sens civil, il peut y avoir plusieurs ressources Practitionner pour chacun de ces exercice professionnel (ex : un médecin qui est également pharmacien aura deux ressources Practitioner). La reconciliation peut se faire au niveau de l’identifier (même numéro RPPS) ou bien en utilisant la ressource Person pour décrire l’identité civile du practicien.

**Usages:**

* Refer to this Profile: [FR Core Appointment Operator Extension](StructureDefinition-fr-core-appointment-operator.md), [FR Core Appointment Profile](StructureDefinition-fr-core-appointment.md), [FR Core Encounter Profile](StructureDefinition-fr-core-encounter.md), [FR Core Medication Administration Inhaled Oxygen Profile](StructureDefinition-fr-core-medication-administration-inhaled-oxygen.md)...Show 12 more,[FR Core Observation Bmi Profile](StructureDefinition-fr-core-observation-bmi.md),[FR Core Observation Body Height Profile](StructureDefinition-fr-core-observation-body-height.md),[FR Core Observation Body Temperature Profile](StructureDefinition-fr-core-observation-body-temperature.md),[FR Core Observation Body Weight Profile](StructureDefinition-fr-core-observation-body-weight.md),[FR Core Observation Blood Pressure Profile](StructureDefinition-fr-core-observation-bp.md),[FR Core Observation Head Circum Profile](StructureDefinition-fr-core-observation-head-circum.md),[FR Core Observation Heart Rate Profile](StructureDefinition-fr-core-observation-heartrate.md),[FR Core Observation Respiratory Rate Profile](StructureDefinition-fr-core-observation-resp-rate.md),[FR Core Observation Oxygen Saturation Profile](StructureDefinition-fr-core-observation-saturation-oxygen.md),[FR Core Patient Profile](StructureDefinition-fr-core-patient.md),[FR Core Practitioner Role](StructureDefinition-fr-core-practitioner-role.md)and[FR Core Schedule Profile](StructureDefinition-fr-core-schedule.md)
* Examples for this Profile: [Practitioner/FRCorePractitionerExample](Practitioner-FRCorePractitionerExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-practitioner)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-practitioner.csv), [Excel](StructureDefinition-fr-core-practitioner.xlsx), [Schematron](StructureDefinition-fr-core-practitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-practitioner",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner",
  "version" : "2.2.0-ballot",
  "name" : "FRCorePractitionerProfile",
  "title" : "FR Core Practitioner Profile",
  "status" : "active",
  "date" : "2025-11-14T07:22:57+00:00",
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
  "description" : "Profil de la ressource Practitionner pour la France.",
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
  "type" : "Practitioner",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Practitioner",
        "path" : "Practitioner"
      },
      {
        "id" : "Practitioner.meta.profile",
        "path" : "Practitioner.meta.profile",
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
        "id" : "Practitioner.meta.profile:fr-canonical",
        "path" : "Practitioner.meta.profile",
        "sliceName" : "fr-canonical",
        "min" : 0,
        "max" : "1",
        "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner"
      },
      {
        "id" : "Practitioner.extension",
        "path" : "Practitioner.extension",
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
        "id" : "Practitioner.extension:specialty",
        "path" : "Practitioner.extension",
        "sliceName" : "specialty",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-specialty"
            ]
          }
        ]
      },
      {
        "id" : "Practitioner.identifier",
        "path" : "Practitioner.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "description" : "Slice based on the identifier.system value",
          "rules" : "open"
        }
      },
      {
        "id" : "Practitioner.identifier.type",
        "path" : "Practitioner.identifier.type",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-practitioner-identifier-type"
        }
      },
      {
        "id" : "Practitioner.identifier:idNatPs",
        "path" : "Practitioner.identifier",
        "sliceName" : "idNatPs",
        "short" : "Identifiant national unique du professionnel de santé",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Practitioner.identifier:idNatPs.type",
        "path" : "Practitioner.identifier.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
              "code" : "IDNPS"
            }
          ]
        }
      },
      {
        "id" : "Practitioner.identifier:idNatPs.system",
        "path" : "Practitioner.identifier.system",
        "min" : 1,
        "patternUri" : "urn:oid:1.2.250.1.71.4.2.1"
      },
      {
        "id" : "Practitioner.identifier:idNatPs.value",
        "path" : "Practitioner.identifier.value",
        "short" : "Identifiant national unique du PS. Cet identifiant ne doit être ni construit ni interprété, la donnée peut être trouvée dans l'annuaire santé, sur ProSantéConnect ou dans la carte CPx. Pour plus d'informations, cf Annexe Transverse – Source des données métier pour les professionnels et les structures du CI-SIS.",
        "definition" : "Cet identifiant est préfixé selon source de provenance de l'identifiant. Ces préfixes (1, 3, 4, 5, 6) proviennent du system : https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne.",
        "min" : 1
      },
      {
        "id" : "Practitioner.identifier:rpps",
        "path" : "Practitioner.identifier",
        "sliceName" : "rpps",
        "short" : "Numéro RPPS (11 chiffres)",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Practitioner.identifier:rpps.type",
        "path" : "Practitioner.identifier.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
              "code" : "RPPS"
            }
          ]
        }
      },
      {
        "id" : "Practitioner.identifier:rpps.system",
        "path" : "Practitioner.identifier.system",
        "min" : 1,
        "patternUri" : "https://rpps.esante.gouv.fr"
      },
      {
        "id" : "Practitioner.identifier:rpps.value",
        "path" : "Practitioner.identifier.value",
        "min" : 1
      },
      {
        "id" : "Practitioner.name",
        "path" : "Practitioner.name",
        "type" : [
          {
            "code" : "HumanName",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-human-name"
            ]
          }
        ]
      },
      {
        "id" : "Practitioner.name.suffix",
        "path" : "Practitioner.name.suffix",
        "short" : "jeu de valeurs pour spécifier le titre de la personne",
        "binding" : {
          "strength" : "extensible",
          "description" : "Civilités d'exercice d'un professionnel du RASS",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J79-CiviliteExercice-RASS/FHIR/JDV-J79-CiviliteExercice-RASS"
        }
      },
      {
        "id" : "Practitioner.telecom",
        "path" : "Practitioner.telecom",
        "type" : [
          {
            "code" : "ContactPoint",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point"
            ]
          }
        ]
      },
      {
        "id" : "Practitioner.address",
        "path" : "Practitioner.address",
        "type" : [
          {
            "code" : "Address",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address"
            ]
          }
        ]
      },
      {
        "id" : "Practitioner.qualification",
        "path" : "Practitioner.qualification",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "code.coding"
            }
          ],
          "rules" : "open"
        },
        "short" : "Qualifications obtained by training and certification | Diplômes. Les différents diplômes sont : les diplômes d'état français, les commissions de qualification, les diplômes d'études spécialisées, les DESC groupe 1 et 2, les capacités, les diplômes d'un pays de l'EEE, les diplômes d'université (DU) ou Inter-Universitaire, les certificats d'étude spéciale, les attestations, les diplômes européens d'études spécialisées, les diplômes de 2ème cycle non qualifiant et les autres types de diplômes. Pour plus d'informations, consulter le jeu de valeurs associé."
      },
      {
        "id" : "Practitioner.qualification:degree",
        "path" : "Practitioner.qualification",
        "sliceName" : "degree",
        "short" : "Diplôme et type de diplôme, par exemple : DE, DES, CES, etc. (typeDiplome)",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Practitioner.qualification:degree.code.coding",
        "path" : "Practitioner.qualification.code.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "$this"
            }
          ],
          "rules" : "closed"
        }
      },
      {
        "id" : "Practitioner.qualification:degree.code.coding:degreeType",
        "path" : "Practitioner.qualification.code.coding",
        "sliceName" : "degreeType",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J81-TypeDiplome-RASS/FHIR/JDV-J81-TypeDiplome-RASS"
        }
      },
      {
        "id" : "Practitioner.qualification:degree.code.coding:degree",
        "path" : "Practitioner.qualification.code.coding",
        "sliceName" : "degree",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J105-EnsembleDiplome-RASS/FHIR/JDV-J105-EnsembleDiplome-RASS"
        }
      },
      {
        "id" : "Practitioner.qualification:exercicePro",
        "path" : "Practitioner.qualification",
        "sliceName" : "exercicePro",
        "short" : "exercicePro : exercice professionnel décrivant la profession exercée, l'identité d'exercice d'un professionnel et le cadre de son exercice (civil, militaire, etc.).",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Practitioner.qualification:exercicePro.code.coding",
        "path" : "Practitioner.qualification.code.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "$this"
            }
          ],
          "rules" : "closed"
        }
      },
      {
        "id" : "Practitioner.qualification:exercicePro.code.coding:categorieProfession",
        "path" : "Practitioner.qualification.code.coding",
        "sliceName" : "categorieProfession",
        "short" : "Catégorie professionnelle indiquant si le professionnel exerce sa profession en tant que Militaire, Civil, Fonctionnaire ou Etudiant (categorieProfessionnelle).",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J89-CategorieProfessionnelle-RASS/FHIR/JDV-J89-CategorieProfessionnelle-RASS"
        }
      },
      {
        "id" : "Practitioner.qualification:exercicePro.code.coding:profession",
        "path" : "Practitioner.qualification.code.coding",
        "sliceName" : "profession",
        "short" : "Profession exercée : de santé (professionSante) TRE G15, du social (professionSocial) TRE R94, à usage de titre professionnel (usagerTitre) TRE R95, ou autre profession (autreProfession) TRE R291",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J106-EnsembleProfession-RASS/FHIR/JDV-J106-EnsembleProfession-RASS"
        }
      },
      {
        "id" : "Practitioner.qualification:savoirFaire",
        "path" : "Practitioner.qualification",
        "sliceName" : "savoirFaire",
        "short" : "savoirFaire : Prérogatives d'exercice d'un professionnel reconnues par une autorité d'enregistrement sur une période donnée de son exercice professionnel, par exemple les spécialités ordinales, etc.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Practitioner.qualification:savoirFaire.code.coding",
        "path" : "Practitioner.qualification.code.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "$this"
            }
          ],
          "rules" : "closed"
        }
      },
      {
        "id" : "Practitioner.qualification:savoirFaire.code.coding:typeSavoirFaire",
        "path" : "Practitioner.qualification.code.coding",
        "sliceName" : "typeSavoirFaire",
        "short" : "Le type de savoir-faire (qualifications/autres attributions).\ntypeSavoirFaire",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J91-TypeSavoirFaire-RASS/FHIR/JDV-J91-TypeSavoirFaire-RASS"
        }
      },
      {
        "id" : "Practitioner.qualification:savoirFaire.code.coding:savoirFaire",
        "path" : "Practitioner.qualification.code.coding",
        "sliceName" : "savoirFaire",
        "short" : "Compétence acquise par le professionnel (competence) R39 ou Compétence exclusive exercée par le professionnel à titre exclusif (competenceExclusive) R40 ou Diplôme d'études spécialisées complémentaires (DESC)DESCnonQualifian R42 ou Capacité (savoir-faire)de médecine (capaciteSavoirFaire) R43 ou Qualification de praticien adjoint contractuel (qualificationPAC) R44 ou Fonction qualifiée (Synonyme: fonctionQualifiee) R45 ou Droit d'exercice complémentaire (Synonyme: droitExerciceComplementaire) R97 ou Orientation particulière (Synonyme: orientationParticuliere) G13 ou Activité ponctuelle du professionnel de type expertise (attributionParticuliere) G13.",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J107-EnsembleSavoirFaire-RASS/FHIR/JDV-J107-EnsembleSavoirFaire-RASS"
        }
      }
    ]
  }
}

```
