# FR Core Patient Contact Relationship Category Extension - Guide d'implémentation FR Core v2.2.0

## Extension: FR Core Patient Contact Relationship Category Extension 

Catégorie de la relation du contact patient : indique si le CodeableConcept représente un rôle (ex : personne à prévenir) ou un type de relation (ex : mère)

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [FR Core Patient Profile](StructureDefinition-fr-core-patient.md)
* Exemples pour ce/t/te Extension: [Patient/FRCorePatientINSExample](Patient-FRCorePatientINSExample.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-patient-contact-relationship-category)

### Vues formelles du contenu de l'extension

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension simple avec le type code : Catégorie de la relation du contact patient : indique si le CodeableConcept représente un rôle (ex : personne à prévenir) ou un type de relation (ex : mère)

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensemble** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension simple avec le type code : Catégorie de la relation du contact patient : indique si le CodeableConcept représente un rôle (ex : personne à prévenir) ou un type de relation (ex : mère)

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-core-patient-contact-relationship-category.csv), [Excel](../StructureDefinition-fr-core-patient-contact-relationship-category.xlsx), [Schematron](../StructureDefinition-fr-core-patient-contact-relationship-category.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-patient-contact-relationship-category",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-contact-relationship-category",
  "version" : "2.2.0",
  "name" : "FRCorePatientContactRelationshipCategoryExtension",
  "title" : "FR Core Patient Contact Relationship Category Extension",
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
  "description" : "Catégorie de la relation du contact patient : indique si le CodeableConcept représente un rôle (ex : personne à prévenir) ou un type de relation (ex : mère)",
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
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Patient.contact.relationship"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "FR Core Patient Contact Relationship Category Extension",
      "definition" : "Catégorie de la relation du contact patient : indique si le CodeableConcept représente un rôle (ex : personne à prévenir) ou un type de relation (ex : mère)"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-contact-relationship-category"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-contact-relationship-category|2.2.0"
      }
    }]
  }
}

```
