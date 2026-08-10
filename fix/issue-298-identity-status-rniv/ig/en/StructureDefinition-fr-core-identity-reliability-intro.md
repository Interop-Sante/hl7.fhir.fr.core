### Usage

Cette extension composite, positionnée sur `Patient`, permet de documenter le degré de confiance accordé à l'identité d'un patient ainsi que les éléments qui ont permis d'établir ce degré de confiance (mode d'obtention de l'INS, contrôle de cohérence, justificatif utilisé...).

Elle regroupe 6 sous-extensions :

| Sous-extension | Cardinalité | Description | Value Set / Type |
| --- | --- | --- | --- |
| `methodCollection` | 0..1 | Canal d'obtention des traits d'identité ou de l'INS (saisie manuelle, carte Vitale, INSi, code à barre, RFID, Application carte Vitale) | [fr-core-vs-identity-method-collection](ValueSet-fr-core-vs-identity-method-collection.html) |
| `dateCollection` | 0..1 | Date d'interrogation du téléservice INSi | `date` |
| `identityStatus` | 0..1 | Statut de confiance de l'identité au sens du RNIV (`PROV`, `RECUP`, `VALI`, `QUAL`) | [fr-core-vs-identity-status](ValueSet-fr-core-vs-identity-status.html) |
| `comment` | 0..* | Annotations complémentaires sur l'identité (attributs RNIV, codes de gestion) | [fr-core-vs-identity-status-comment](ValueSet-fr-core-vs-identity-status-comment.html) |
| `validationDate` | 0..1 | Date de vérification de l'identité | `date` |
| `validationMode` | 0..1 | Type de document contrôlé pour justifier le statut de l'identité (CN, PA, CS...) | [fr-core-vs-mode-validation-identity](ValueSet-fr-core-vs-mode-validation-identity.html) |
{: .table-is .table-striped }

### Statut de confiance de l'identité

Le détail des 4 statuts de confiance RNIV (`PROV`, `RECUP`, `VALI`, `QUAL`) portés par la sous-extension `identityStatus` est décrit sur la page du ValueSet [fr-core-vs-identity-status](ValueSet-fr-core-vs-identity-status.html).

### À ne pas confondre : canal de capture, statut de confiance et pièce justificative

Ces trois sous-extensions couvrent des axes distincts du RNIV et ne doivent pas être confondues :

- `methodCollection` documente le **canal technique** par lequel les traits d'identité ou l'INS ont été obtenus (RNIV §4.3) — c'est une information de traçabilité, elle ne détermine pas à elle seule le statut de confiance résultant.
- `identityStatus` documente le **statut de confiance** résultant (RNIV EXI SI 07), croisement des axes I± (récupération INSi) et C± (contrôle de cohérence) — voir la page du ValueSet [fr-core-vs-identity-status](ValueSet-fr-core-vs-identity-status.html).
- `validationMode` documente la **pièce justificative à haut niveau de confiance** contrôlée pour l'axe C± (carte nationale d'identité, passeport, Application carte Vitale...).
