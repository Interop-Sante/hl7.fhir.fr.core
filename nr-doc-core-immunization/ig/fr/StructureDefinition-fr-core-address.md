# FR Core Address Profile - Guide d'implémentation FR Core v2.2.0

## Profil du type de données: FR Core Address Profile 

 
Profil du type de données Address pour la France, ce profil ajoute le code insee à l’adresse. Une cohérence entre code commune (COG), code postal et nom de commune doit être assurée. French profile of Address datatype 

**Utilisations:**

* Utilise ce/t/te profil de type de données: [FR Core Organization Profile](StructureDefinition-fr-core-organization.md), [FR Core Patient Death Place Extension](StructureDefinition-fr-core-patient-death-place.md), [FR Core Patient Profile](StructureDefinition-fr-core-patient.md), [FR Core Practitioner Profile](StructureDefinition-fr-core-practitioner.md) and [FR Core Related Person Profile](StructureDefinition-fr-core-related-person.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-address)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AddressEu](http://hl7.eu/fhir/base/2.0.0/StructureDefinition-Address-eu.html) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AddressEu](http://hl7.eu/fhir/base/2.0.0/StructureDefinition-Address-eu.html) 

** Résumé **

**Extensions**

Cette structure fait référence à ces extensions:

* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code|2.2.0](StructureDefinition-fr-core-address-insee-code.md)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [AddressEu](http://hl7.eu/fhir/base/2.0.0/StructureDefinition-Address-eu.html) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AddressEu](http://hl7.eu/fhir/base/2.0.0/StructureDefinition-Address-eu.html) 

** Résumé **

**Extensions**

Cette structure fait référence à ces extensions:

* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code|2.2.0](StructureDefinition-fr-core-address-insee-code.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-core-address.csv), [Excel](../StructureDefinition-fr-core-address.xlsx), [Schematron](../StructureDefinition-fr-core-address.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-address",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address",
  "version" : "2.2.0",
  "name" : "FRCoreAddressProfile",
  "title" : "FR Core Address Profile",
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
  "description" : "Profil du type de données Address pour la France, ce profil ajoute le code insee à l'adresse. Une cohérence entre code commune (COG), code postal et nom de commune doit être assurée.\r\nFrench profile of Address datatype",
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
    "identity" : "vcard",
    "uri" : "http://w3.org/vcard",
    "name" : "vCard Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Address",
  "baseDefinition" : "http://hl7.eu/fhir/base/StructureDefinition/Address-eu|2.0.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Address",
      "path" : "Address"
    },
    {
      "id" : "Address.extension:inseeCode",
      "path" : "Address.extension",
      "sliceName" : "inseeCode",
      "short" : "Code COG de la ville",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code|2.2.0"]
      }]
    },
    {
      "id" : "Address.city",
      "path" : "Address.city",
      "short" : "Les communes existantes sont définies ici : https://public.opendatasoft.com/explore/dataset/correspondance-code-insee-code-postal/table."
    },
    {
      "id" : "Address.country",
      "path" : "Address.country",
      "short" : "Country (will be ISO 3166 3 letter code; code=FRA for France)"
    }]
  }
}

```
