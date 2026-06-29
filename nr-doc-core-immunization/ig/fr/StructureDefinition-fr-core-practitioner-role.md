# FR Core Practitioner Role - Guide d'implémentation FR Core v2.2.0

## Profil de ressource: FR Core Practitioner Role 

 
Profile of the PractitionerRole resource for France. This profil specifies the role of the practitioner for the organization 
Spécification du profil de la ressource PractitionerRole pour un usage en France. Ce profil permet de spécifier le rôle (la situation d’exercice) du PS dans le contexte d’une organisation. 

**Utilisations:**

* Référence ce Profil: [FR Core Schedule Profile](StructureDefinition-fr-core-schedule.md)
* Exemples pour ce/t/te Profil: [PractitionerRole/FRCorePractitionerRoleExample](PractitionerRole-FRCorePractitionerRoleExample.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-practitioner-role)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [PractitionerRoleEuCore](http://hl7.eu/fhir/base/2.0.0/StructureDefinition-practitionerRole-eu-core.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [PractitionerRoleEuCore](http://hl7.eu/fhir/base/2.0.0/StructureDefinition-practitionerRole-eu-core.html) 

** Résumé **

Obligatoire : 0 élément(1 élément obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Practitioner Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0)](StructureDefinition-fr-core-practitioner.md)
* [FR Core Organization Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0)](StructureDefinition-fr-core-organization.md)
* [FR Core Location Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location|2.2.0)](StructureDefinition-fr-core-location.md)
* [FR Core Healthcare Service Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-healthcare-service|2.2.0)](StructureDefinition-fr-core-healthcare-service.md)
* [FR Core Contact Point Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point|2.2.0)](StructureDefinition-fr-core-contact-point.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-service-type-duration|2.2.0](StructureDefinition-fr-core-service-type-duration.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of PractitionerRole.meta.profile
* The element 1 is sliced based on the value of PractitionerRole.identifier

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [PractitionerRoleEuCore](http://hl7.eu/fhir/base/2.0.0/StructureDefinition-practitionerRole-eu-core.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [PractitionerRoleEuCore](http://hl7.eu/fhir/base/2.0.0/StructureDefinition-practitionerRole-eu-core.html) 

** Résumé **

Obligatoire : 0 élément(1 élément obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Practitioner Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0)](StructureDefinition-fr-core-practitioner.md)
* [FR Core Organization Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0)](StructureDefinition-fr-core-organization.md)
* [FR Core Location Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location|2.2.0)](StructureDefinition-fr-core-location.md)
* [FR Core Healthcare Service Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-healthcare-service|2.2.0)](StructureDefinition-fr-core-healthcare-service.md)
* [FR Core Contact Point Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point|2.2.0)](StructureDefinition-fr-core-contact-point.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-service-type-duration|2.2.0](StructureDefinition-fr-core-service-type-duration.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of PractitionerRole.meta.profile
* The element 1 is sliced based on the value of PractitionerRole.identifier

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-core-practitioner-role.csv), [Excel](../StructureDefinition-fr-core-practitioner-role.xlsx), [Schematron](../StructureDefinition-fr-core-practitioner-role.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-practitioner-role",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role",
  "version" : "2.2.0",
  "name" : "FRCorePractitionerRoleProfile",
  "title" : "FR Core Practitioner Role",
  "status" : "active",
  "date" : "2026-06-29T10:25:23+00:00",
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
  "description" : "Profile of the PractitionerRole resource for France. This profil specifies the role of the practitioner for the organization\r\n\nSpécification du profil de la ressource PractitionerRole pour un usage en France. Ce profil permet de spécifier le rôle (la situation d'exercice) du PS dans le contexte d'une organisation.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "http://hl7.eu/fhir/base/StructureDefinition/practitionerRole-eu-core|2.0.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole"
    },
    {
      "id" : "PractitionerRole.meta.profile",
      "path" : "PractitionerRole.meta.profile",
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
      "id" : "PractitionerRole.meta.profile:fr-canonical",
      "path" : "PractitionerRole.meta.profile",
      "sliceName" : "fr-canonical",
      "min" : 0,
      "max" : "1",
      "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role|2.2.0"
    },
    {
      "id" : "PractitionerRole.extension",
      "path" : "PractitionerRole.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "PractitionerRole.extension:serviceTypeDuration",
      "path" : "PractitionerRole.extension",
      "sliceName" : "serviceTypeDuration",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-service-type-duration|2.2.0"]
      }]
    },
    {
      "id" : "PractitionerRole.identifier",
      "path" : "PractitionerRole.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Slice based on the identifier.system value",
        "rules" : "open"
      }
    },
    {
      "id" : "PractitionerRole.identifier:numeroAm",
      "path" : "PractitionerRole.identifier",
      "sliceName" : "numeroAm",
      "short" : "Identifiant d’activité propre à l’Assurance Maladie. format: 9 digits. synonyme: numeroAM",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "PractitionerRole.identifier:numeroAm.system",
      "path" : "PractitionerRole.identifier.system",
      "min" : 1,
      "patternUri" : "https://www.ameli.fr"
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0"]
      }]
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0"]
      }]
    },
    {
      "id" : "PractitionerRole.code",
      "path" : "PractitionerRole.code",
      "short" : "The role a person plays representing an organization | Rôle (situation d'exercice) du professionnel de santé au sein de l'organisation",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-practitioner-role-exercice|2.2.0"
      }
    },
    {
      "id" : "PractitionerRole.specialty",
      "path" : "PractitionerRole.specialty",
      "short" : "Specific specialty associated with the organization | spécialité ordinale du professionnel de santé au sein de l'organisation",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-practitioner-specialty|2.2.0"
      }
    },
    {
      "id" : "PractitionerRole.location",
      "path" : "PractitionerRole.location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location|2.2.0"]
      }]
    },
    {
      "id" : "PractitionerRole.healthcareService",
      "path" : "PractitionerRole.healthcareService",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-healthcare-service|2.2.0"]
      }]
    },
    {
      "id" : "PractitionerRole.telecom",
      "path" : "PractitionerRole.telecom",
      "short" : "Details of a Technology mediated contact point | Coordonnées électroniques détaillées",
      "type" : [{
        "code" : "ContactPoint",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point|2.2.0"]
      }]
    }]
  }
}

```
