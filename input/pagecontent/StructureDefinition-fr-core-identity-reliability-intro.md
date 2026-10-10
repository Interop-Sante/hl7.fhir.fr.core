### Usage

Cette extension composite, positionnée sur `Patient`, permet de documenter le degré de confiance accordé à l'identité d'un patient ainsi que les éléments qui ont permis d'établir ce degré de confiance (mode d'obtention de l'INS, contrôle de cohérence, justificatif utilisé...). Elle est **obligatoire** (`1..*`) sur `Patient` : toute ressource conforme à `fr-core-patient` (ou `fr-core-patient-ins`) doit porter au moins une instance de cette extension.

Elle regroupe 7 sous-extensions :

| Sous-extension | Cardinalité | Description | Value Set / Type |
| --- | --- | --- | --- |
| `lastUpdated` | 1..1 | Horodatage de la dernière mise à jour de cette instance de l'extension, permettant d'ordonner un historique lorsque plusieurs instances de `identityReliability` coexistent sur une même ressource | `dateTime` |
| `methodCollection` | 0..1 | Canal d'obtention des traits d'identité ou du matricule INS (saisie manuelle, carte Vitale, INSi, code à barre, RFID, Application carte Vitale) | [fr-core-vs-identity-method-collection](ValueSet-fr-core-vs-identity-method-collection.html) |
| `dateInterrogationINSi` | 0..1 | Date d'interrogation du téléservice INSi | `date` |
| `identityStatus` | 0..1 | Statut de confiance de l'identité au sens du RNIV (`PROV`, `RECUP`, `VALI`, `QUAL`) | [fr-core-vs-identity-status](ValueSet-fr-core-vs-identity-status.html) |
| `comment` | 0..* | Annotations complémentaires sur l'identité (attributs RNIV, codes de gestion) | [fr-core-vs-identity-status-comment](ValueSet-fr-core-vs-identity-status-comment.html) |
| `validationDate` | 0..1 | Date de vérification de l'identité | `date` |
| `validationMode` | 0..1 | Type de document contrôlé pour justifier le statut de l'identité (CN, PA, CS...) | [fr-core-vs-mode-validation-identity](ValueSet-fr-core-vs-mode-validation-identity.html) |
{: .table-is .table-striped }

### Statut de confiance de l'identité

Le détail des 4 statuts de confiance RNIV (`PROV`, `RECUP`, `VALI`, `QUAL`) portés par la sous-extension `identityStatus` est décrit sur la page du ValueSet [fr-core-vs-identity-status](ValueSet-fr-core-vs-identity-status.html).

### À ne pas confondre : canal de capture, statut de confiance et pièce justificative

Ces quatre sous-extensions couvrent des axes distincts du RNIV et ne doivent pas être confondues :

- `methodCollection` documente le **canal de capture** par lequel les traits d'identité ou le matricule INS ont été obtenus (RNIV §4.3) — c'est une information de traçabilité, elle ne détermine pas à elle seule le statut de confiance résultant.
<!-- Référence : IHE PAM France v2.11.1, ZFD-6 (§6.18.6) ; RNIV 1 - Principes communs, v2.0, §4.1 et §4.3.1-4.3.3 -->
- `dateInterrogationINSi` documente la **date d'interrogation du téléservice INSi** — renseignée chaque fois que le téléservice INSi est appelé, que ce soit par lecture de la carte Vitale ou par saisie directe des traits, sauf pour les usagers de l'Application carte Vitale et leurs ayants droit, pour lesquels le RNIV exclut explicitement cet appel.
- `identityStatus` documente le **statut de confiance** résultant (RNIV EXI SI 07), croisement des axes I± (récupération INSi) et C± (contrôle de cohérence) — voir la page du ValueSet [fr-core-vs-identity-status](ValueSet-fr-core-vs-identity-status.html).
- `validationMode` documente la **pièce justificative à haut niveau de confiance** contrôlée pour l'axe C± (carte nationale d'identité, passeport, Application carte Vitale...).

### Règles de cohérence entre `identityStatus` et `comment` (RNIV EXI SI 09)

Deux règles de cohérence s'appliquent entre le statut de confiance (`identityStatus`) et les attributs RNIV portés par `comment` :

- Une identité comportant l'attribut Identité douteuse (`DOUT`) ou Identité fictive (`FICT`) dans `comment` doit obligatoirement avoir le statut de confiance `PROV` (Identité provisoire) — il est interdit de lui attribuer un autre statut ou d'interroger le téléservice INSi pour cette identité.
- Les attributs Identité fictive (`FICT`) et Identité douteuse (`DOUT`) ne peuvent pas être cumulés dans `comment` sur une même identité.

Le statut `PROV` seul ne signale qu'une identité pas encore vérifiée, sans en préciser la cause. Les attributs `DOUT`/`FICT` permettent d'indiquer les situations où ce défaut de vérification n'est pas une simple attente mais un problème identifié — identité douteuse (homonymie non résolue, incohérence des traits), identité fictive (patient anonyme, refusant de s'identifier, identité de test) : toute situation d'identitovigilance reste ainsi représentable, ce qui justifie le caractère désormais obligatoire de l'extension `identityReliability` sur `Patient`.

<!-- Référence : RNIV 1 - Principes communs, v2.0 (décembre 2024), §3.2.3 "Attributs de l'identité", p.11-12/34 [EXI SI 09] -->
