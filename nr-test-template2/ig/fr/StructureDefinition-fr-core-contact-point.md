# FR Core Contact Point Profile - Guide d'implémentation FR Core v2.2.0

## Profil du type de données: FR Core Contact Point Profile 

 
Profil du type de données ContactPoint pour la France, ce profil ajoute le type d’e-mail tel que la bal mss. French profile of ContactPoint datatype 

**Utilisations:**

* Utilise ce/t/te profil de type de données: [FR Core Healthcare Service Profile](StructureDefinition-fr-core-healthcare-service.md), [FR Core Organization Profile](StructureDefinition-fr-core-organization.md), [FR Core Patient Profile](StructureDefinition-fr-core-patient.md), [FR Core Practitioner Role](StructureDefinition-fr-core-practitioner-role.md)... Show 2 more, [FR Core Practitioner Profile](StructureDefinition-fr-core-practitioner.md) and [FR Core Related Person Profile](StructureDefinition-fr-core-related-person.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-contact-point)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [ContactPoint](http://hl7.org/fhir/R4/datatypes.html#ContactPoint) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [ContactPoint](http://hl7.org/fhir/R4/datatypes.html#ContactPoint) 

** Résumé **

Obligatoire : 2 éléments

**Extensions**

Cette structure fait référence à ces extensions:

* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point-email-type|2.2.0](StructureDefinition-fr-core-contact-point-email-type.md)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [ContactPoint](http://hl7.org/fhir/R4/datatypes.html#ContactPoint) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [ContactPoint](http://hl7.org/fhir/R4/datatypes.html#ContactPoint) 

** Résumé **

Obligatoire : 2 éléments

**Extensions**

Cette structure fait référence à ces extensions:

* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point-email-type|2.2.0](StructureDefinition-fr-core-contact-point-email-type.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-core-contact-point.csv), [Excel](../StructureDefinition-fr-core-contact-point.xlsx), [Schematron](../StructureDefinition-fr-core-contact-point.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-contact-point",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point",
  "version" : "2.2.0",
  "name" : "FRCoreContactPointProfile",
  "title" : "FR Core Contact Point Profile",
  "status" : "active",
  "date" : "2026-06-04T15:45:54+00:00",
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
  "description" : "Profil du type de données ContactPoint pour la France, ce profil ajoute le type d'e-mail tel que la bal mss.\r\nFrench profile of ContactPoint datatype",
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
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "ContactPoint",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ContactPoint|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ContactPoint",
      "path" : "ContactPoint"
    },
    {
      "id" : "ContactPoint.extension:emailType",
      "path" : "ContactPoint.extension",
      "sliceName" : "emailType",
      "short" : "Champs permettant de préciser le type d'email (MSSANTE | APICRYPT | OSM | AutreMessagerie) dont il est question dans le cas où le point de contact est un email.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point-email-type|2.2.0"]
      }]
    },
    {
      "id" : "ContactPoint.system",
      "path" : "ContactPoint.system",
      "min" : 1
    },
    {
      "id" : "ContactPoint.value",
      "path" : "ContactPoint.value",
      "min" : 1
    }]
  }
}

```
