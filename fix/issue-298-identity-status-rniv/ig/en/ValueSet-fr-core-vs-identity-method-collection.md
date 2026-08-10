# FR Core ValueSet Identity method collection - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Identity method collection 

 

| | |
| :--- | :--- |
| Le canal par lequel les traits d’identité ou le matricule INS ont été obtenus | The channel used to collect the identity traits or the INS identifier |

 

 **References** 

* [FR Core Patient Identity Reliability Extension](StructureDefinition-fr-core-identity-reliability.md)

### Introduction

Ce ValueSet définit les **canaux** par lesquels les traits d’identité d’un patient ou son matricule INS ont été obtenus, conformément au chapitre 4.3 « Récupération de l’INS » du Référentiel National d’Identitovigilance (RNIV 1 - Principes communs, v2.0, décembre 2024).

Il s’agit d’une information de **traçabilité du canal de capture**, distincte du statut de confiance résultant (voir la sous-extension `identityStatus` et sa page [fr-core-vs-identity-status](ValueSet-fr-core-vs-identity-status.md)) et de la pièce justificative contrôlée (voir la sous-extension `validationMode`).

| | | |
| :--- | :--- | :--- |
| `SM` | Saisie manuelle | Saisie des traits sans lecture de carte Vitale ni interrogation INSi (§4.3.3) |
| `CV` | Carte Vitale | Lecture de la carte Vitale physique, déclenchant l’interrogation du téléservice INSi (§4.3.2) |
| `INSI` | Téléservice INSi | Interrogation directe du téléservice INSi par saisie des traits, sans carte Vitale (§4.3.3) |
| `CB` | Code à barre | Scan du Datamatrix INS d’un document de santé déjà porteur d’une identité qualifiée (Guide d’implémentation de l’INS, v3.0, décembre 2024, EXI REC 02) |
| `RFID` | Puce RFID | Lecture d’une puce RFID (ex. bracelet patient) ; canal local, non défini par le RNIV |
| `AV` | Application carte Vitale | Obtention directe de l’INS par scan du QR code ou lecture NFC de l’Application carte Vitale (§4.3.4) ; l’identité ainsi obtenue est considérée comme qualifiée |

> **À noter** : la carte Vitale physique (`CV`) et l’Application carte Vitale (`AV`) sont deux canaux distincts du RNIV. Contrairement à la carte Vitale physique, qui déclenche une interrogation du téléservice INSi, l’Application carte Vitale fournit directement une identité considérée comme qualifiée par le ministère chargé de la santé (RNIV §4.3.4).

Ce ValueSet est utilisé avec un binding `extensible` dans la sous-extension `methodCollection` de l’extension [FR Core Patient Identity Reliability](StructureDefinition-fr-core-identity-reliability.md).

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-identity-method-collection",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-identity-method-collection",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetIdentityMethodCollection",
  "title" : "FR Core ValueSet Identity method collection",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-10T16:22:30+00:00",
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
  "description" : "Le canal par lequel les traits d'identité ou le matricule INS ont été obtenus | The channel used to collect the identity traits or the INS identifier",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "immutable" : true,
  "compose" : {
    "include" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-method-collection",
      "version" : "2.2.0"
    }]
  }
}

```
