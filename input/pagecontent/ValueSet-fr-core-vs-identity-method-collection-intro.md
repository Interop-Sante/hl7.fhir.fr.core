### Introduction

Ce ValueSet définit les **canaux techniques** par lesquels les traits d'identité d'un patient ou son matricule INS ont été obtenus, conformément au chapitre 4.3 « Récupération de l'INS » du Référentiel National d'Identitovigilance (RNIV 1 - Principes communs, v2.0, décembre 2024).

Il s'agit d'une information de **traçabilité du canal de capture**, distincte du statut de confiance résultant (voir la sous-extension `identityStatus` et sa page [fr-core-vs-identity-status](ValueSet-fr-core-vs-identity-status.html)) et de la pièce justificative contrôlée (voir la sous-extension `validationMode`).

| Code | Libellé | Référence RNIV |
|------|---------|----------------|
| `SM` | Saisie manuelle | Saisie des traits sans lecture de carte Vitale ni interrogation INSi (§4.3.3) |
| `CV` | Carte Vitale | Lecture de la carte Vitale physique, déclenchant l'interrogation du téléservice INSi (§4.3.2) |
| `INSI` | Téléservice INSi | Interrogation directe du téléservice INSi par saisie des traits, sans carte Vitale (§4.3.3) |
| `CB` | Code à barre | Scan du Datamatrix INS d'un document de santé déjà porteur d'une identité qualifiée (Guide d'implémentation de l'INS, v3.0, décembre 2024, EXI REC 02) |
| `RFID` | Puce RFID | Lecture d'une puce RFID (ex. bracelet patient) ; canal local, non défini par le RNIV |
| `AV` | Application carte Vitale | Obtention directe de l'INS par scan du QR code ou lecture NFC de l'Application carte Vitale (§4.3.4) ; l'identité ainsi obtenue est considérée comme qualifiée |
{: .table-is .table-striped }

> **À noter** : la carte Vitale physique (`CV`) et l'Application carte Vitale (`AV`) sont deux canaux distincts du RNIV. Contrairement à la carte Vitale physique, qui déclenche une interrogation du téléservice INSi, l'Application carte Vitale fournit directement une identité considérée comme qualifiée par le ministère chargé de la santé (RNIV §4.3.4).

Ce ValueSet est utilisé avec un binding `extensible` dans la sous-extension `methodCollection` de l'extension [FR Core Patient Identity Reliability](StructureDefinition-fr-core-identity-reliability.html).
