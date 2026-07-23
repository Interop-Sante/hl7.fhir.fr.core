# FR Core ServiceRequest Profile - Guide d'implémentation FR Core v2.2.0

## Profil de ressource: FR Core ServiceRequest Profile 

 
FRCoreServiceRequestProfile profil permet de porter des demandes d’examens (analyses biologiques, évaluations, étude d’imagerie, etc…) ou de suivis particuliers à programmer dans le cadre d’un plan de soins. 

**Utilisations:**

* Ce Profil n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-service-request)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

** Résumé **

Obligatoire : 2 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Accession Number Identifier Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-accession-number-identifier|2.2.0)](StructureDefinition-fr-core-accession-number-identifier.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-method-extension|2.2.0](StructureDefinition-fr-core-method-extension.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of ServiceRequest.identifier

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

** Résumé **

Obligatoire : 2 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Accession Number Identifier Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-accession-number-identifier|2.2.0)](StructureDefinition-fr-core-accession-number-identifier.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-method-extension|2.2.0](StructureDefinition-fr-core-method-extension.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of ServiceRequest.identifier

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-core-service-request.csv), [Excel](../StructureDefinition-fr-core-service-request.xlsx), [Schematron](../StructureDefinition-fr-core-service-request.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-service-request",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-service-request",
  "version" : "2.2.0",
  "name" : "FRCoreServiceRequestProfile",
  "title" : "FR Core ServiceRequest Profile",
  "status" : "active",
  "date" : "2026-07-23T10:00:41+00:00",
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
  "description" : "FRCoreServiceRequestProfile profil permet de porter des demandes d'examens (analyses biologiques, évaluations, étude d'imagerie, etc…) ou de suivis particuliers à programmer dans le cadre d'un plan de soins.",
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
  },
  {
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest"
    },
    {
      "id" : "ServiceRequest.extension",
      "path" : "ServiceRequest.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ServiceRequest.extension:method",
      "path" : "ServiceRequest.extension",
      "sliceName" : "method",
      "short" : "Méthode",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-method-extension|2.2.0"]
      }]
    },
    {
      "id" : "ServiceRequest.identifier",
      "path" : "ServiceRequest.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ServiceRequest.identifier:accessionNumber",
      "path" : "ServiceRequest.identifier",
      "sliceName" : "accessionNumber",
      "short" : "Accession Number de la demande d'examen d'imagerie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-accession-number-identifier|2.2.0"]
      }]
    },
    {
      "id" : "ServiceRequest.category",
      "path" : "ServiceRequest.category",
      "short" : "Catégorie de la demande"
    },
    {
      "id" : "ServiceRequest.code",
      "path" : "ServiceRequest.code",
      "short" : "Type de la demande : Si aucun code n'est trouvé dans des terminologies existantes, utiliser le code : GEN-092.04.20 'Autre demande d'examen ou de suivi'",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.orderDetail",
      "path" : "ServiceRequest.orderDetail",
      "short" : "informations complémentaires sur la demande d'acte, exemple : INR cible"
    },
    {
      "id" : "ServiceRequest.occurrence[x]",
      "path" : "ServiceRequest.occurrence[x]",
      "short" : "Date prévisionnelle de l'examen, du suivi, de l'objectif",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.bodySite",
      "path" : "ServiceRequest.bodySite",
      "short" : "Cible",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/body-site|4.0.1"
      }
    },
    {
      "id" : "ServiceRequest.note",
      "path" : "ServiceRequest.note",
      "short" : "Note à propos de la demande d'acte, par exemple finalité de l'examen et justification de la demande"
    }]
  }
}

```
