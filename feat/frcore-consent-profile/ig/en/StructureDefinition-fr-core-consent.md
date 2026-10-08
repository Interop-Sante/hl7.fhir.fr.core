# FR Core Consent Profile - Guide d'implémentation FR Core v2.2.0

## Resource Profile: FR Core Consent Profile 

**Usages:**

* Examples for this Profile: [Consent/FRCoreConsentExample](Consent-FRCoreConsentExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.core|current/StructureDefinition/StructureDefinition-fr-core-consent.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-core-consent.csv), [Excel](../StructureDefinition-fr-core-consent.xlsx), [Schematron](../StructureDefinition-fr-core-consent.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-consent",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-consent",
  "version" : "2.2.0",
  "name" : "FRCoreConsentProfile",
  "title" : "FR Core Consent Profile",
  "status" : "active",
  "date" : "2026-10-08T12:12:00+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [{
    "name" : "Interop'Santé",
    "telecom" : [{
      "system" : "url",
      "value" : "http://interopsante.org"
    }]
  },
  {
    "name" : "InteropSanté",
    "telecom" : [{
      "system" : "email",
      "value" : "fhir@interopsante.org",
      "use" : "work"
    }]
  }],
  "description" : "Profile of the Consent resource for France. A record of a healthcare consumer's choices, which permits or denies identified recipients or recipient roles to perform one or more actions within a given policy context, for specific purposes and periods of time.\r\n\nProfil de la ressource Consent pour la France. Enregistrement des choix d'une personne qui autorise ou refuse à des destinataires ou rôles identifiés d'effectuer une ou plusieurs actions dans un contexte de politique donné, pour des finalités et des périodes données.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Consent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Consent|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Consent",
      "path" : "Consent"
    },
    {
      "id" : "Consent.meta.profile",
      "path" : "Consent.meta.profile",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this"
        }],
        "description" : "Slice based on the canonical url value",
        "rules" : "open"
      }
    },
    {
      "id" : "Consent.meta.profile:fr-canonical",
      "path" : "Consent.meta.profile",
      "sliceName" : "fr-canonical",
      "min" : 0,
      "max" : "1",
      "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-consent|2.2.0"
    },
    {
      "id" : "Consent.patient",
      "path" : "Consent.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0",
        "http://hl7.org/fhir/StructureDefinition/Patient|4.0.1"]
      }]
    },
    {
      "id" : "Consent.performer",
      "path" : "Consent.performer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0",
        "http://hl7.org/fhir/StructureDefinition/Organization|4.0.1",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0",
        "http://hl7.org/fhir/StructureDefinition/Patient|4.0.1",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0",
        "http://hl7.org/fhir/StructureDefinition/Practitioner|4.0.1",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person|2.2.0",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson|4.0.1",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role|2.2.0",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1"]
      }]
    }]
  }
}

```
