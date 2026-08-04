### Introduction

Ce ValueSet définit les **4 statuts de confiance** de l'identité imposés par le Référentiel National d'Identitovigilance (RNIV) [EXI SI 07] :

> « Tout système d'information en santé doit permettre d'attribuer un des 4 statuts de confiance à chaque identité numérique stockée. »

Ces statuts sont **exclusifs les uns des autres**. Ils résultent du croisement de deux axes indépendants :

- **I** : les traits d'identité ont été récupérés via le téléservice INSi (+) ou non (−)
- **C** : un contrôle de cohérence a été effectué avec un dispositif d'identification à haut niveau de confiance (+) ou non (−)

| Code | Statut RNIV | INSi (I) | Contrôle (C) |
|------|-------------|----------|--------------|
| `PROV` | Identité provisoire | − | − |
| `RECUP` | Identité récupérée | + | − |
| `VALI` | Identité validée | − | + |
| `QUAL` | Identité qualifiée | + | + |

Seul le statut **Identité qualifiée** (`QUAL`) autorise le référencement des données de santé échangées avec le matricule INS [EXI SI 08].

Ce ValueSet est utilisé avec un binding `required` dans la sous-extension `identityStatus` de l'extension [FR Core Patient Identity Reliability](StructureDefinition-fr-core-identity-reliability.html).
