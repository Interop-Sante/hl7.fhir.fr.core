# FR Core AdverseEvent Profile - Guide d'implémentation FR Core v2.2.0

## Profil de ressource: FR Core AdverseEvent Profile 

 
FRCoreAdverseEventProfile permet de décrire un effet indésirable prévisible lié à un médicament 

**Utilisations:**

* Ce Profil n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-adverse-event)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AdverseEvent](http://hl7.org/fhir/R4/adverseevent.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AdverseEvent](http://hl7.org/fhir/R4/adverseevent.html) 

** Résumé **

Obligatoire : 5 éléments(1 élément obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [MedicationAdministration (http://hl7.org/fhir/StructureDefinition/MedicationAdministration|4.0.1)](http://hl7.org/fhir/R4/medicationadministration.html)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [AdverseEvent](http://hl7.org/fhir/R4/adverseevent.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AdverseEvent](http://hl7.org/fhir/R4/adverseevent.html) 

** Résumé **

Obligatoire : 5 éléments(1 élément obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [MedicationAdministration (http://hl7.org/fhir/StructureDefinition/MedicationAdministration|4.0.1)](http://hl7.org/fhir/R4/medicationadministration.html)

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-core-adverse-event.csv), [Excel](../StructureDefinition-fr-core-adverse-event.xlsx), [Schematron](../StructureDefinition-fr-core-adverse-event.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-adverse-event",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-adverse-event",
  "version" : "2.2.0",
  "name" : "FRCoreAdverseEventProfile",
  "title" : "FR Core AdverseEvent Profile",
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
  "description" : "FRCoreAdverseEventProfile permet de décrire un effet indésirable prévisible lié à un médicament",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AdverseEvent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AdverseEvent|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "AdverseEvent",
      "path" : "AdverseEvent"
    },
    {
      "id" : "AdverseEvent.category",
      "path" : "AdverseEvent.category",
      "short" : "Type d'effet indésirable",
      "min" : 1,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-origine-effet-indesirable-cisis|20260420150249"
      }
    },
    {
      "id" : "AdverseEvent.date",
      "path" : "AdverseEvent.date",
      "short" : "Date de début de l'effet indésirable",
      "min" : 1
    },
    {
      "id" : "AdverseEvent.detected",
      "path" : "AdverseEvent.detected",
      "short" : "Date de détection de l'effet indésirable",
      "min" : 1
    },
    {
      "id" : "AdverseEvent.resultingCondition",
      "path" : "AdverseEvent.resultingCondition",
      "short" : "Réaction observée"
    },
    {
      "id" : "AdverseEvent.seriousness",
      "path" : "AdverseEvent.seriousness",
      "short" : "Gravité de l'effet indésirable",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-gravite-cisis|20260420150249"
      }
    },
    {
      "id" : "AdverseEvent.outcome",
      "path" : "AdverseEvent.outcome",
      "short" : "Évolution de l'effet indésirable",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-evolution-cisis|20260420150249"
      }
    },
    {
      "id" : "AdverseEvent.suspectEntity",
      "path" : "AdverseEvent.suspectEntity",
      "short" : "Agent soupçonné d'être à l'origine de l'événement indésirable",
      "min" : 1
    },
    {
      "id" : "AdverseEvent.suspectEntity.instance",
      "path" : "AdverseEvent.suspectEntity.instance",
      "short" : "Médicament, substance incriminée, posologie",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/MedicationAdministration|4.0.1"]
      }]
    },
    {
      "id" : "AdverseEvent.suspectEntity.causality",
      "path" : "AdverseEvent.suspectEntity.causality",
      "short" : "Imputabilité",
      "max" : "1"
    },
    {
      "id" : "AdverseEvent.suspectEntity.causality.assessment",
      "path" : "AdverseEvent.suspectEntity.causality.assessment",
      "short" : "Niveau d'imputabilité",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-imputabilite-cisis|20260420150249"
      }
    }]
  }
}

```
