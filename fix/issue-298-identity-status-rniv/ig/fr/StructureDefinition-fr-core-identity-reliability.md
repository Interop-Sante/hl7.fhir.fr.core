# FR Core Patient Identity Reliability Extension - Guide d'implémentation FR Core v2.2.0

## Extension: FR Core Patient Identity Reliability Extension 

Précision sur le degré de fiabilité de l’identité du patient (si provisoire, validé… avec la justification : quelle type de pièce d’identité ?) accompagné de la méthode de collection.

Reliabilility of the patient’s identity

**Context of Use**

### Usage

Cette extension composite, positionnée sur `Patient`, permet de documenter le degré de confiance accordé à l’identité d’un patient ainsi que les éléments qui ont permis d’établir ce degré de confiance (mode d’obtention de l’INS, contrôle de cohérence, justificatif utilisé…).

Elle regroupe 6 sous-extensions :

| | | | |
| :--- | :--- | :--- | :--- |
| `methodCollection` | 0..1 | Mode d’obtention de l’INS (SM, CV, INSi…) | [fr-core-vs-identity-method-collection](ValueSet-fr-core-vs-identity-method-collection.md) |
| `dateCollection` | 0..1 | Date d’interrogation du téléservice INSi | `date` |
| `identityStatus` | 0..1 | Statut de confiance de l’identité au sens du RNIV (`PROV`,`RECUP`,`VALI`,`QUAL`) | [fr-core-vs-identity-status](ValueSet-fr-core-vs-identity-status.md) |
| `comment` | 0..* | Annotations complémentaires sur l’identité (attributs RNIV, codes de gestion) | [fr-core-vs-identity-status-comment](ValueSet-fr-core-vs-identity-status-comment.md) |
| `validationDate` | 0..1 | Date de vérification de l’identité | `date` |
| `validationMode` | 0..1 | Type de document contrôlé pour justifier le statut de l’identité (CN, PA, CS…) | [fr-core-vs-mode-validation-identity](ValueSet-fr-core-vs-mode-validation-identity.md) |

### Statut de confiance de l’identité

Le détail des 4 statuts de confiance RNIV (`PROV`, `RECUP`, `VALI`, `QUAL`) portés par la sous-extension `identityStatus` est décrit sur la page du ValueSet [fr-core-vs-identity-status](ValueSet-fr-core-vs-identity-status.md).

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [FR Core Patient Profile](StructureDefinition-fr-core-patient.md)
* Exemples pour ce/t/te Extension: [Patient/FRCorePatientINSExample](Patient-FRCorePatientINSExample.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-identity-reliability)

### Vues formelles du contenu de l'extension

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Bindings terminologiques (différentiel)

#### Contraintes

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension complexe: Précision sur le degré de fiabilité de l'identité du patient (si provisoire, validé... avec la justification : quelle type de pièce d'identité ?) accompagné de la méthode de collection. Reliabilility of the patient's identity

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Bindings terminologiques (différentiel)

#### Contraintes

 **Vue d'ensemble** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension complexe: Précision sur le degré de fiabilité de l'identité du patient (si provisoire, validé... avec la justification : quelle type de pièce d'identité ?) accompagné de la méthode de collection. Reliabilility of the patient's identity

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-core-identity-reliability.csv), [Excel](../StructureDefinition-fr-core-identity-reliability.xlsx), [Schematron](../StructureDefinition-fr-core-identity-reliability.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-identity-reliability",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability",
  "version" : "2.2.0",
  "name" : "FRCorePatientIdentityReliabilityExtension",
  "title" : "FR Core Patient Identity Reliability Extension",
  "status" : "active",
  "date" : "2026-08-10T13:14:57+00:00",
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
  "description" : "Précision sur le degré de fiabilité de l'identité du patient (si provisoire, validé... avec la justification : quelle type de pièce d'identité ?) accompagné de la méthode de collection.\n\rReliabilility of the patient's identity",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "purpose" : "Permet de préciser le degré de fiabilité de l'identité du patient\r\nReliabilility of the patient's identity",
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
    "expression" : "Patient"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Reliabilility of the identity | Fiabilité de l'identité",
      "definition" : "Précision sur le degré de fiabilité de l'identité du patient (si provisoire, validé... avec la justification : quelle type de pièce d'identité ?) accompagné de la méthode de collection.\n\rReliabilility of the patient's identity",
      "constraint" : [{
        "key" : "fr-core-comment-requires-prov",
        "severity" : "error",
        "human" : "If identityStatus is RECUP, VALI or QUAL, then comment SHALL NOT contain DOUT (identité douteuse) or FICT (identité fictive), conformément au RNIV : ces deux attributs ne peuvent être associés qu'au statut Identité provisoire.",
        "expression" : "extension('identityStatus').value.exists(code = 'RECUP' or code = 'VALI' or code = 'QUAL') implies extension('comment').value.exists(code = 'DOUT' or code = 'FICT').not()",
        "source" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability|2.2.0"
      }]
    },
    {
      "id" : "Extension.extension:methodCollection",
      "path" : "Extension.extension",
      "sliceName" : "methodCollection",
      "short" : "The way the INS identity is collected | Mode d'obtention de l'INS (SM, CV, INSI, ...)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:methodCollection.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:methodCollection.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "methodCollection"
    },
    {
      "id" : "Extension.extension:methodCollection.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-identity-method-collection|2.2.0"
      }
    },
    {
      "id" : "Extension.extension:dateCollection",
      "path" : "Extension.extension",
      "sliceName" : "dateCollection",
      "short" : "INS collection date| date d'interrogation du téléservice INSi",
      "definition" : "INS collection date| date d'interrogation du téléservice INSi",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:dateCollection.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:dateCollection.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "dateCollection"
    },
    {
      "id" : "Extension.extension:dateCollection.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.extension:identityStatus",
      "path" : "Extension.extension",
      "sliceName" : "identityStatus",
      "short" : "Statut de confiance de l’identité au sens du RNIV (EXI SI 07) : PROV | RECUP | VALI | QUAL. Ces 4 statuts sont exclusifs les uns des autres.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:identityStatus.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:identityStatus.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "identityStatus"
    },
    {
      "id" : "Extension.extension:identityStatus.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-identity-status|2.2.0"
      }
    },
    {
      "id" : "Extension.extension:comment",
      "path" : "Extension.extension",
      "sliceName" : "comment",
      "short" : "Annotations complémentaires sur l’identité : attributs RNIV (homonyme, douteux, fictif) et codes de gestion (doublon, collision, désactivé…). Plusieurs annotations peuvent coexister.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:comment.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:comment.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "comment"
    },
    {
      "id" : "Extension.extension:comment.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-identity-status-comment|2.2.0"
      }
    },
    {
      "id" : "Extension.extension:validationDate",
      "path" : "Extension.extension",
      "sliceName" : "validationDate",
      "short" : "Date de vérification de l'identité",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:validationDate.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:validationDate.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "validationDate"
    },
    {
      "id" : "Extension.extension:validationDate.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.extension:validationMode",
      "path" : "Extension.extension",
      "sliceName" : "validationMode",
      "short" : "Spécifie le type de document qui a été contrôlé par l'agent d'admission pour justifier le statut de l'identité. Seuls certains types de pièces définis dans le RNIV permettent de valider une identité (CN | PA | CS | ... )",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:validationMode.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:validationMode.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "validationMode"
    },
    {
      "id" : "Extension.extension:validationMode.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-mode-validation-identity|2.2.0"
      }
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
