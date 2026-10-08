# FR Core Consent Profile - Guide d'implémentation FR Core v2.2.0

## Profil de ressource: FR Core Consent Profile 

**Utilisations:**

* Exemples pour ce/t/te Profil: [Consent/FRCoreConsentExample](Consent-FRCoreConsentExample.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-consent)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Consent](http://hl7.org/fhir/R4/consent.html) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Consent](http://hl7.org/fhir/R4/consent.html) 

** Résumé **

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0)](StructureDefinition-fr-core-patient.md)
* [Patient (http://hl7.org/fhir/StructureDefinition/Patient|4.0.1)](http://hl7.org/fhir/R4/patient.html)
* [FR Core Organization Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0)](StructureDefinition-fr-core-organization.md)
* [Organization (http://hl7.org/fhir/StructureDefinition/Organization|4.0.1)](http://hl7.org/fhir/R4/organization.html)
* [FR Core Practitioner Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0)](StructureDefinition-fr-core-practitioner.md)
* [Practitioner (http://hl7.org/fhir/StructureDefinition/Practitioner|4.0.1)](http://hl7.org/fhir/R4/practitioner.html)
* [FR Core Related Person Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person|2.2.0)](StructureDefinition-fr-core-related-person.md)
* [RelatedPerson (http://hl7.org/fhir/StructureDefinition/RelatedPerson|4.0.1)](http://hl7.org/fhir/R4/relatedperson.html)
* [FR Core Practitioner Role (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role|2.2.0)](StructureDefinition-fr-core-practitioner-role.md)
* [PractitionerRole (http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1)](http://hl7.org/fhir/R4/practitionerrole.html)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Consent.meta.profile

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [Consent](http://hl7.org/fhir/R4/consent.html) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Consent](http://hl7.org/fhir/R4/consent.html) 

** Résumé **

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0)](StructureDefinition-fr-core-patient.md)
* [Patient (http://hl7.org/fhir/StructureDefinition/Patient|4.0.1)](http://hl7.org/fhir/R4/patient.html)
* [FR Core Organization Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0)](StructureDefinition-fr-core-organization.md)
* [Organization (http://hl7.org/fhir/StructureDefinition/Organization|4.0.1)](http://hl7.org/fhir/R4/organization.html)
* [FR Core Practitioner Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0)](StructureDefinition-fr-core-practitioner.md)
* [Practitioner (http://hl7.org/fhir/StructureDefinition/Practitioner|4.0.1)](http://hl7.org/fhir/R4/practitioner.html)
* [FR Core Related Person Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person|2.2.0)](StructureDefinition-fr-core-related-person.md)
* [RelatedPerson (http://hl7.org/fhir/StructureDefinition/RelatedPerson|4.0.1)](http://hl7.org/fhir/R4/relatedperson.html)
* [FR Core Practitioner Role (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role|2.2.0)](StructureDefinition-fr-core-practitioner-role.md)
* [PractitionerRole (http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1)](http://hl7.org/fhir/R4/practitionerrole.html)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Consent.meta.profile

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-core-consent.csv), [Excel](../StructureDefinition-fr-core-consent.xlsx), [Schematron](../StructureDefinition-fr-core-consent.sch) 



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
  "date" : "2026-10-08T12:57:02+00:00",
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
