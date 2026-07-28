# FR Core BodyStructure Profile - Guide d'implémentation FR Core v2.2.0

## Profil de ressource: FR Core BodyStructure Profile 

 
FRCoreBodyStructureProfile est un profil FRCore utilisé pour préciser les modificateurs topographiques associés à une localisation anatomique. 

**Utilisations:**

* Ce Profil n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-body-structure)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [BodyStructureEuCore](http://hl7.eu/fhir/base/2.0.0/StructureDefinition-bodyStructure-eu-core.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [BodyStructureEuCore](http://hl7.eu/fhir/base/2.0.0/StructureDefinition-bodyStructure-eu-core.html) 

** Résumé **

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [BodyStructureEuCore](http://hl7.eu/fhir/base/2.0.0/StructureDefinition-bodyStructure-eu-core.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [BodyStructureEuCore](http://hl7.eu/fhir/base/2.0.0/StructureDefinition-bodyStructure-eu-core.html) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-core-body-structure.csv), [Excel](../StructureDefinition-fr-core-body-structure.xlsx), [Schematron](../StructureDefinition-fr-core-body-structure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-body-structure",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-body-structure",
  "version" : "2.2.0",
  "name" : "FRCoreBodyStructureProfile",
  "title" : "FR Core BodyStructure Profile",
  "status" : "active",
  "date" : "2026-07-28T08:49:31+00:00",
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
  "description" : "FRCoreBodyStructureProfile est un profil FRCore utilisé pour préciser les modificateurs topographiques associés à une localisation anatomique.",
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
    "identity" : "openehr",
    "uri" : "http://openehr.org",
    "name" : "Open EHR Archetype Mapping"
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
  "type" : "BodyStructure",
  "baseDefinition" : "http://hl7.eu/fhir/base/StructureDefinition/bodyStructure-eu-core|2.0.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "BodyStructure",
      "path" : "BodyStructure"
    },
    {
      "id" : "BodyStructure.location",
      "path" : "BodyStructure.location",
      "short" : "Localisation anatomique ou voie d'abord",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-body-structure-location|2.2.0"
      }
    },
    {
      "id" : "BodyStructure.locationQualifier",
      "path" : "BodyStructure.locationQualifier",
      "short" : "Modificateurs topographiques",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modificateur-topographique-cisis|20260619134042"
      }
    }]
  }
}

```
