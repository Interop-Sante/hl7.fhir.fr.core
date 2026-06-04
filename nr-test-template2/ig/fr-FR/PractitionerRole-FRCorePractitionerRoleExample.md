# FRCorePractitionerRoleExample - Guide d'implémentation FR Core v2.2.0

##  PractitionerRole: FRCorePractitionerRoleExample



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "FRCorePractitionerRoleExample",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2025-04-28T18:19:34.908+02:00",
    "source" : "https://annuaire.sante.fr",
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role"]
  },
  "language" : "fr",
  "identifier" : [{
    "use" : "official",
    "system" : "https://rpps.esante.gouv.fr",
    "value" : "1011848351"
  }],
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/FRCorePractitionerExample"
  },
  "organization" : {
    "reference" : "Organization/FRCoreOrganizationExample"
  },
  "code" : [{
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R22-GenreActivite/FHIR/TRE-R22-GenreActivite",
      "code" : "GENR01"
    }]
  },
  {
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R23-ModeExercice/FHIR/TRE-R23-ModeExercice",
      "code" : "L"
    }]
  },
  {
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R21-Fonction/FHIR/TRE-R21-Fonction",
      "code" : "FON-05"
    }]
  }]
}

```
