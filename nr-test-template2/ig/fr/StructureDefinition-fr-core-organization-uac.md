# FR Core Organization UAC Profile - Guide d'implémentation FR Core v2.2.0

## Profil de ressource: FR Core Organization UAC Profile 

 
Ce profil permet de représenter les unités d’activité (UAC, parfois appelé PAC). L’UAC (Unité d’Activité) est le niveau élémentaire de recueil des activités en vue de la facturation. 

### Usage

L’[UAC](structure_entites.md#UAC) est lié à une discipline de prestation et à un tarif (lié à la discipline de prestation). Elle ne sert qu’à la facturation du séjour. Elle permet d’associer des tarifs de soins différents pour la prise en charge d’un patient.

### Ajout du profil FR

Ce profil ajoute par rapport au profil FR Organization, dont il hérite :

* la possibilité de définir une discipline de prestation
* la possibilité d’ajouter un code tarif

**Utilisations:**

* Exemples pour ce/t/te Profil: [UAC 01 Dialyse](Organization-hopitaltest-uac-4420-uac-01.md) and [UAC 02 Dialyse](Organization-hopitaltest-uac-4420-uac-02.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-organization-uac)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreOrganizationProfile](StructureDefinition-fr-core-organization.md) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreOrganizationProfile](StructureDefinition-fr-core-organization.md) 

** Résumé **

Fixe : 1 élément

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Organization UF Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf|2.2.0)](StructureDefinition-fr-core-organization-uf.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-discipline-prestation|2.2.0](StructureDefinition-fr-core-organization-discipline-prestation.md)
* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-tarif|2.2.0](StructureDefinition-fr-core-organization-tarif.md)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [FRCoreOrganizationProfile](StructureDefinition-fr-core-organization.md) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreOrganizationProfile](StructureDefinition-fr-core-organization.md) 

** Résumé **

Fixe : 1 élément

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Organization UF Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf|2.2.0)](StructureDefinition-fr-core-organization-uf.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-discipline-prestation|2.2.0](StructureDefinition-fr-core-organization-discipline-prestation.md)
* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-tarif|2.2.0](StructureDefinition-fr-core-organization-tarif.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-core-organization-uac.csv), [Excel](../StructureDefinition-fr-core-organization-uac.xlsx), [Schematron](../StructureDefinition-fr-core-organization-uac.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-organization-uac",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uac",
  "version" : "2.2.0",
  "name" : "FRCoreOrganizationUACProfile",
  "title" : "FR Core Organization UAC Profile",
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
  "description" : "Ce profil permet de représenter les unités d'activité (UAC, parfois appelé PAC). L'UAC (Unité d'Activité) est le niveau élémentaire de recueil des activités en vue de la facturation.",
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
  "type" : "Organization",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.2.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    },
    {
      "id" : "Organization.extension:disciplinePrestation",
      "path" : "Organization.extension",
      "sliceName" : "disciplinePrestation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-discipline-prestation|2.2.0"]
      }]
    },
    {
      "id" : "Organization.extension:tarif",
      "path" : "Organization.extension",
      "sliceName" : "tarif",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-tarif|2.2.0"]
      }]
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "fixedCodeableConcept" : {
        "coding" : [{
          "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307",
          "code" : "UAC"
        }]
      }
    },
    {
      "id" : "Organization.partOf",
      "path" : "Organization.partOf",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf|2.2.0"]
      }]
    }]
  }
}

```
