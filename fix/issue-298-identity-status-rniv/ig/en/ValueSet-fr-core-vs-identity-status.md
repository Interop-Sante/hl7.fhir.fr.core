# FR Core ValueSet Identity Status - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Identity Status 

 
Les 4 statuts de confiance de l’identité définis par le RNIV [EXI SI 07]. Ces statuts sont exclusifs les uns des autres. 

 **References** 

* [FR Core Patient Ident Reliability Extension](StructureDefinition-fr-core-identity-reliability.md)

### Introduction

Ce ValueSet définit les **4 statuts de confiance** de l’identité imposés par le Référentiel National d’Identitovigilance (RNIV) [EXI SI 07] :

> « Tout système d’information en santé doit permettre d’attribuer un des 4 statuts de confiance à chaque identité numérique stockée. »

Ces statuts sont **exclusifs les uns des autres**. Ils résultent du croisement de deux axes indépendants :

* **I** : les traits d’identité ont été récupérés via le téléservice INSi (+) ou non (−)
* **C** : un contrôle de cohérence a été effectué avec un dispositif d’identification à haut niveau de confiance (+) ou non (−)

| | | | |
| :--- | :--- | :--- | :--- |
| `PROV` | Identité provisoire | − | − |
| `RECUP` | Identité récupérée | + | − |
| `VALI` | Identité validée | − | + |
| `QUAL` | Identité qualifiée | + | + |

Seul le statut **Identité qualifiée** (`QUAL`) autorise le référencement des données de santé échangées avec le matricule INS [EXI SI 08].

Ce ValueSet est utilisé avec un binding `required` dans la sous-extension `identityStatus` de l’extension [FR Core Patient Identity Reliability](StructureDefinition-fr-core-identity-reliability.md).

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-identity-status",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-identity-status",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetIdentityStatus",
  "title" : "FR Core ValueSet Identity Status",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-07T11:55:57+00:00",
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
  "description" : "Les 4 statuts de confiance de l'identité définis par le RNIV [EXI SI 07]. Ces statuts sont exclusifs les uns des autres.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-identity-status",
      "version" : "2.2.0"
    }]
  }
}

```
