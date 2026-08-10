# FR Core Patient Identity Reliability Extension - Guide d'implémentation FR Core v2.2.0

## Extension: FR Core Patient Identity Reliability Extension 

Extension composite précisant le degré de confiance de l’identité du patient au sens du Référentiel National d’Identitovigilance (RNIV) : statut de confiance (provisoire, récupérée, validée, qualifiée), canal d’obtention des traits d’identité ou du matricule INS, pièce justificative contrôlée, dates associées et annotations complémentaires. Composite extension specifying the confidence level of a patient’s identity per the French National Identity Vigilance Framework (RNIV): trust status (provisional, recovered, validated, qualified), channel used to collect the identity traits or the INS identifier, validation evidence, related dates and additional annotations.

**Context of Use**

### Usage

Cette extension composite, positionnée sur `Patient`, permet de documenter le degré de confiance accordé à l’identité d’un patient ainsi que les éléments qui ont permis d’établir ce degré de confiance (mode d’obtention de l’INS, contrôle de cohérence, justificatif utilisé…).

Elle regroupe 6 sous-extensions :

| | | | |
| :--- | :--- | :--- | :--- |
| `methodCollection` | 0..1 | Canal d’obtention des traits d’identité ou du matricule INS (saisie manuelle, carte Vitale, INSi, code à barre, RFID, Application carte Vitale) | [fr-core-vs-identity-method-collection](ValueSet-fr-core-vs-identity-method-collection.md) |
| `dateCollection` | 0..1 | Date d’obtention des traits d’identité ou du matricule INS | `date` |
| `identityStatus` | 0..1 | Statut de confiance de l’identité au sens du RNIV (`PROV`,`RECUP`,`VALI`,`QUAL`) | [fr-core-vs-identity-status](ValueSet-fr-core-vs-identity-status.md) |
| `comment` | 0..* | Annotations complémentaires sur l’identité (attributs RNIV, codes de gestion) | [fr-core-vs-identity-status-comment](ValueSet-fr-core-vs-identity-status-comment.md) |
| `validationDate` | 0..1 | Date de vérification de l’identité | `date` |
| `validationMode` | 0..1 | Type de document contrôlé pour justifier le statut de l’identité (CN, PA, CS…) | [fr-core-vs-mode-validation-identity](ValueSet-fr-core-vs-mode-validation-identity.md) |

### Statut de confiance de l’identité

Le détail des 4 statuts de confiance RNIV (`PROV`, `RECUP`, `VALI`, `QUAL`) portés par la sous-extension `identityStatus` est décrit sur la page du ValueSet [fr-core-vs-identity-status](ValueSet-fr-core-vs-identity-status.md).

### À ne pas confondre : canal de capture, statut de confiance et pièce justificative

Ces trois sous-extensions couvrent des axes distincts du RNIV et ne doivent pas être confondues :

* `methodCollection` documente le **canal de capture** par lequel les traits d’identité ou le matricule INS ont été obtenus (RNIV §4.3) — c’est une information de traçabilité, elle ne détermine pas à elle seule le statut de confiance résultant.
* `identityStatus` documente le **statut de confiance** résultant (RNIV EXI SI 07), croisement des axes I± (récupération INSi) et C± (contrôle de cohérence) — voir la page du ValueSet [fr-core-vs-identity-status](ValueSet-fr-core-vs-identity-status.md).
* `validationMode` documente la **pièce justificative à haut niveau de confiance** contrôlée pour l’axe C± (carte nationale d’identité, passeport, Application carte Vitale…).

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

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension complexe: Extension composite précisant le degré de confiance de l'identité du patient au sens du Référentiel National d'Identitovigilance (RNIV) : statut de confiance (provisoire, récupérée, validée, qualifiée), canal d'obtention des traits d'identité ou du matricule INS, pièce justificative contrôlée, dates associées et annotations complémentaires. Composite extension specifying the confidence level of a patient's identity per the French National Identity Vigilance Framework (RNIV): trust status (provisional, recovered, validated, qualified), channel used to collect the identity traits or the INS identifier, validation evidence, related dates and additional annotations.

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensemble** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension complexe: Extension composite précisant le degré de confiance de l'identité du patient au sens du Référentiel National d'Identitovigilance (RNIV) : statut de confiance (provisoire, récupérée, validée, qualifiée), canal d'obtention des traits d'identité ou du matricule INS, pièce justificative contrôlée, dates associées et annotations complémentaires. Composite extension specifying the confidence level of a patient's identity per the French National Identity Vigilance Framework (RNIV): trust status (provisional, recovered, validated, qualified), channel used to collect the identity traits or the INS identifier, validation evidence, related dates and additional annotations.

 

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
  "date" : "2026-08-10T16:46:59+00:00",
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
  "description" : "Extension composite précisant le degré de confiance de l'identité du patient au sens du Référentiel National d'Identitovigilance (RNIV) : statut de confiance (provisoire, récupérée, validée, qualifiée), canal d'obtention des traits d'identité ou du matricule INS, pièce justificative contrôlée, dates associées et annotations complémentaires.\r\nComposite extension specifying the confidence level of a patient's identity per the French National Identity Vigilance Framework (RNIV): trust status (provisional, recovered, validated, qualified), channel used to collect the identity traits or the INS identifier, validation evidence, related dates and additional annotations.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "purpose" : "Permet de documenter le degré de confiance de l'identité d'un patient conformément au RNIV, ainsi que les éléments ayant permis de l'établir (canal de collecte, statut, justificatif de contrôle, annotations).\r\nDocuments the confidence level of a patient's identity per the RNIV, along with the elements used to establish it (collection channel, status, validation evidence, annotations).",
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
      "short" : "FR Core Patient Identity Reliability Extension",
      "definition" : "Extension composite précisant le degré de confiance de l'identité du patient au sens du Référentiel National d'Identitovigilance (RNIV) : statut de confiance (provisoire, récupérée, validée, qualifiée), canal d'obtention des traits d'identité ou du matricule INS, pièce justificative contrôlée, dates associées et annotations complémentaires.\r\nComposite extension specifying the confidence level of a patient's identity per the French National Identity Vigilance Framework (RNIV): trust status (provisional, recovered, validated, qualified), channel used to collect the identity traits or the INS identifier, validation evidence, related dates and additional annotations."
    },
    {
      "id" : "Extension.extension:methodCollection",
      "path" : "Extension.extension",
      "sliceName" : "methodCollection",
      "short" : "Canal d'obtention des traits d'identité ou du matricule INS (SM, CV, INSi, CB, RFID, AV) | Channel used to collect the identity traits or the INS identifier",
      "definition" : "Précise le canal par lequel les traits d'identité ou le matricule INS ont été obtenus : saisie manuelle, lecture de la carte Vitale, interrogation directe du téléservice INSi, scan d'un code à barre/Datamatrix, lecture RFID ou Application carte Vitale. Ce champ ne porte pas le statut de confiance résultant (cf. sous-extension `identityStatus`) ni la pièce justificative contrôlée (cf. sous-extension `validationMode`).",
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
      "short" : "Date d'obtention des traits d'identité ou du matricule INS | Date the identity traits or the INS identifier were collected",
      "definition" : "Date à laquelle les traits d'identité ou le matricule INS ont été obtenus, quel que soit le canal utilisé (cf. sous-extension `methodCollection`) : saisie manuelle, lecture de la carte Vitale, interrogation directe du téléservice INSi, scan d'un code à barre/Datamatrix, lecture RFID. Cette date ne doit pas être confondue avec la date de vérification de l'identité (cf. sous-extension `validationDate`). | Date at which the identity traits or the INS identifier were obtained, regardless of the channel used (see the `methodCollection` sub-extension): manual entry, Vitale card reading, direct query of the INSi teleservice, barcode/Datamatrix scan, RFID reading. This date must not be confused with the identity verification date (see the `validationDate` sub-extension).",
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
        "code" : "CodeableConcept"
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
      "short" : "Date de vérification de l'identité | Identity verification date",
      "definition" : "Date à laquelle l'identité a été vérifiée sur la base de la pièce justificative contrôlée (cf. sous-extension `validationMode`). | Date at which the identity was verified based on the checked supporting document (see the `validationMode` sub-extension).",
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
