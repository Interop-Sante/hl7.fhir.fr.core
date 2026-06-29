# FR Core Related Person Profile - Guide d'implémentation FR Core v2.2.0

## Profil de ressource: FR Core Related Person Profile 

 
Profile of the RelatedPerson resource for France. 
Profil de la ressource RelatedPerson pour l’usage en France 

**Utilisations:**

* Référence ce Profil: [FR Core Appointment Profile](StructureDefinition-fr-core-appointment.md), [FR Core Observation Blood Pressure Profile](StructureDefinition-fr-core-observation-bp.md), [FR Core Observation Heart Rate Profile](StructureDefinition-fr-core-observation-heartrate.md), [FR Core Observation Respiratory Rate Profile](StructureDefinition-fr-core-observation-resp-rate.md) and [FR Core Schedule Profile](StructureDefinition-fr-core-schedule.md)
* Exemples pour ce/t/te Profil: [RelatedPerson/FRCoreRelatedPersonExample](RelatedPerson-FRCoreRelatedPersonExample.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-related-person)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html) 

** Résumé **

Obligatoire : 1 élément(2 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0)](StructureDefinition-fr-core-patient.md)
* [FR Core Human Name Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-human-name|2.2.0)](StructureDefinition-fr-core-human-name.md)
* [FR Core Contact Point Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point|2.2.0)](StructureDefinition-fr-core-contact-point.md)
* [FR Core Address Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address|2.2.0)](StructureDefinition-fr-core-address.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of RelatedPerson.meta.profile
* The element 1 is sliced based on the value of RelatedPerson.relationship

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html) 

** Résumé **

Obligatoire : 1 élément(2 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0)](StructureDefinition-fr-core-patient.md)
* [FR Core Human Name Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-human-name|2.2.0)](StructureDefinition-fr-core-human-name.md)
* [FR Core Contact Point Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point|2.2.0)](StructureDefinition-fr-core-contact-point.md)
* [FR Core Address Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address|2.2.0)](StructureDefinition-fr-core-address.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of RelatedPerson.meta.profile
* The element 1 is sliced based on the value of RelatedPerson.relationship

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-core-related-person.csv), [Excel](../StructureDefinition-fr-core-related-person.xlsx), [Schematron](../StructureDefinition-fr-core-related-person.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-related-person",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person",
  "version" : "2.2.0",
  "name" : "FRCoreRelatedPersonProfile",
  "title" : "FR Core Related Person Profile",
  "status" : "active",
  "date" : "2026-06-29T12:41:53+00:00",
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
  "description" : "Profile of the RelatedPerson resource for France.\r\n\nProfil de la ressource RelatedPerson pour l'usage en France",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RelatedPerson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RelatedPerson|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RelatedPerson",
      "path" : "RelatedPerson"
    },
    {
      "id" : "RelatedPerson.meta.profile",
      "path" : "RelatedPerson.meta.profile",
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
      "id" : "RelatedPerson.meta.profile:fr-canonical",
      "path" : "RelatedPerson.meta.profile",
      "sliceName" : "fr-canonical",
      "min" : 0,
      "max" : "1",
      "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person|2.2.0"
    },
    {
      "id" : "RelatedPerson.identifier",
      "path" : "RelatedPerson.identifier",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "RelatedPerson.patient",
      "path" : "RelatedPerson.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0"]
      }]
    },
    {
      "id" : "RelatedPerson.relationship",
      "path" : "RelatedPerson.relationship",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "coding.system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "RelatedPerson.relationship:Role",
      "path" : "RelatedPerson.relationship",
      "sliceName" : "Role",
      "short" : "The nature of the relationship. Rôle de la personne. Ex : personne de confiance, aidant ...",
      "min" : 0,
      "max" : "1",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-contact-role|2.2.0"
      }
    },
    {
      "id" : "RelatedPerson.relationship:Role.coding.system",
      "path" : "RelatedPerson.relationship.coding.system",
      "min" : 1,
      "patternUri" : "https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass"
    },
    {
      "id" : "RelatedPerson.relationship:RelationType",
      "path" : "RelatedPerson.relationship",
      "sliceName" : "RelationType",
      "short" : "The nature of the relationship. Relation de la personne. Ex : Mère, époux, enfant ...",
      "min" : 0,
      "max" : "*",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-relation-type|2.2.0"
      }
    },
    {
      "id" : "RelatedPerson.relationship:RelationType.coding.system",
      "path" : "RelatedPerson.relationship.coding.system",
      "min" : 1,
      "patternUri" : "https://mos.esante.gouv.fr/NOS/TRE_R216-HL7RoleCode/FHIR/TRE-R216-HL7RoleCode"
    },
    {
      "id" : "RelatedPerson.name",
      "path" : "RelatedPerson.name",
      "type" : [{
        "code" : "HumanName",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-human-name|2.2.0"]
      }]
    },
    {
      "id" : "RelatedPerson.telecom",
      "path" : "RelatedPerson.telecom",
      "type" : [{
        "code" : "ContactPoint",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point|2.2.0"]
      }]
    },
    {
      "id" : "RelatedPerson.address",
      "path" : "RelatedPerson.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address|2.2.0"]
      }]
    }]
  }
}

```
