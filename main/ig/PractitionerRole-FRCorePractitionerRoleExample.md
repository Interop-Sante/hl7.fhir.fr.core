# FRCorePractitionerRoleExample - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FRCorePractitionerRoleExample**

## Example PractitionerRole: FRCorePractitionerRoleExample

version : 1; Dernière mise à jour : 2025-04-28 18:19:34+0200; Langue : fr; 

Information Source: [https://annuaire.sante.fr](https://annuaire.sante.fr)

Profil: [FR Core Practitioner Role](StructureDefinition-fr-core-practitioner-role.md)

**identifier**: `https://rpps.esante.gouv.fr`/1011848351 (utilisation : official, )

**active**: true

**practitioner**: [Practitioner Leclerc Sophie](Practitioner-FRCorePractitionerExample.md)

**organization**: [Organization HOPITAL INTERCOMMUNAL DE LA PRESQU'ILE G](Organization-FRCoreOrganizationExample.md)

**code**: Soignant, Libéral,indép,artisan,commerç, Adjoint



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "FRCorePractitionerRoleExample",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2025-04-28T18:19:34.908+02:00",
    "source" : "https://annuaire.sante.fr",
    "profile" : [
      "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role"
    ]
  },
  "language" : "fr",
  "identifier" : [
    {
      "use" : "official",
      "system" : "https://rpps.esante.gouv.fr",
      "value" : "1011848351"
    }
  ],
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/FRCorePractitionerExample"
  },
  "organization" : {
    "reference" : "Organization/FRCoreOrganizationExample"
  },
  "code" : [
    {
      "coding" : [
        {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R22-GenreActivite/FHIR/TRE-R22-GenreActivite",
          "code" : "GENR01"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R23-ModeExercice/FHIR/TRE-R23-ModeExercice",
          "code" : "L"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R21-Fonction/FHIR/TRE-R21-Fonction",
          "code" : "FON-05"
        }
      ]
    }
  ]
}

```
