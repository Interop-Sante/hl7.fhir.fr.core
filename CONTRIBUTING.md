# Guide de contribution au Guide d'Implémentation Fr Core

Merci de votre intérêt pour contribuer au Guide d'Implémentation FHIR Core français ! Ce document vous guidera à travers le processus de contribution.

> **Note :** Pour plus d'informations sur l'historique du projet et la gouvernance, consultez la page officielle [À propos](https://hl7.fr/ig/fhir/core/a_propos.html) du guide d'implémentation.

## Table des matières

- [À propos du projet](#à-propos-du-projet)
- [Rejoindre la communauté](#rejoindre-la-communauté)
- [Comment contribuer](#comment-contribuer)
- [Proposer de nouvelles ressources](#proposer-de-nouvelles-ressources)
- [Prérequis techniques](#prérequis-techniques)
- [Configuration de l'environnement](#configuration-de-lenvironnement)
- [Workflow de contribution](#workflow-de-contribution)
- [Standards de codage](#standards-de-codage)
- [Processus de revue](#processus-de-revue)
- [Ressources utiles](#ressources-utiles)

## À propos du projet

### Historique

En tant qu'affilié français d'HL7 International, **Interop'Santé** a la responsabilité de créer les profils FHIR génériques à usage français.

La création de ces profils a été initiée en **2017** sur [la plateforme Simplifier](https://simplifier.net/frenchprofiledfhirar) par Eric Dufour, Isabelle Gibaud, François Macary et Yohann Poiron.

En **2024**, l'ensemble des ressources de conformité a été migré vers ce [guide d'implémentation](https://hl7.fr/ig/fhir/core) pour simplifier leur usage et leur accès, rendant les anciens profils Simplifier obsolètes.

### Équipe actuelle

**Mainteneurs :** Yohann Poiron, Nicolas Riss

## Rejoindre la communauté

La qualité de ce guide d'implémentation s'améliore continuellement grâce aux précieuses contributions de la communauté. Pour rejoindre cette communauté :

1. **Rejoignez les canaux de discussion** :
   - [Google Group FHIR France](https://groups.google.com/g/groupes-fhir-france)
   - [Slack FHIR France](https://join.slack.com/t/fhir-france/shared_invite/zt-2pv7q7ern-VIrh8Q9r4hrOJPQk3j_ouA)

2. **Adhérez à Interop'Santé** : [www.interopsante.org](https://www.interopsante.org/)

3. **Participez aux groupes de travail** : [Groupes de travail d'Interop'Santé](https://www.interopsante.org/groupe-de-travail)

## Comment contribuer

Plusieurs options vous permettent de contribuer à l'interopérabilité française :

### Contributions via GitHub

- **Signaler des problèmes** : Déclarez des erreurs ou des suggestions d'amélioration via des [GitHub issues](https://github.com/Interop-Sante/hl7.fhir.fr.core/issues)
- **Proposer des changements** : Soumettez directement des modifications via une [Pull Request](https://github.com/Interop-Sante/hl7.fhir.fr.core/pulls)
- **Améliorer la documentation** : Corrigez ou étoffez la documentation
- **Ajouter des exemples** : Créez des instances d'exemple pour illustrer l'utilisation des profils
- **Participer aux revues** : Commentez sur les issues et pull requests existantes

### Contributions communautaires

- **Participer aux discussions** : Sur le Google Group ou le Slack FHIR France
- **Rejoindre les groupes de travail** : Contribuez aux travaux en cours d'Interop'Santé
- **Partager vos retours d'expérience** : Faites remonter les problématiques rencontrées lors de l'implémentation

## Proposer de nouvelles ressources

Des nouvelles ressources peuvent être profilées pour l'écosystème français.

**Important :** Il est nécessaire d'expliquer la nécessité de profiler les ressources. Pour quelles raisons faut-il rajouter des contraintes propres à l'écosystème français plutôt que d'utiliser les ressources de base proposées par FHIR ?

Lors de votre proposition, documentez :

- **Le besoin métier** : Quel cas d'usage français nécessite ce profil ?
- **Les contraintes spécifiques** : Quels identifiants, extensions ou valuesets français sont requis ?
- **Les standards existants** : Comment cela s'articule-t-il avec les référentiels ANS ou autres standards français ?
- **Les impacts** : Quels acteurs de santé seraient concernés ?

## Prérequis techniques

Pour contribuer au code du guide d'implémentation, vous aurez besoin de :

### Outils requis

1. **Git** : Pour la gestion de version
   ```bash
   git --version
   ```

2. **SUSHI** : Pour compiler les fichiers FSH
   ```bash
   npm install -g fsh-sushi
   ```

3. **Java JDK** (version 17 ou supérieure) : Pour exécuter l'IG Publisher
   ```bash
   java -version
   ```

4. **IG Publisher** : Sera téléchargé automatiquement via les scripts

### Connaissances recommandées

- Connaissance de base de **FHIR R4** ([documentation officielle](https://hl7.org/fhir/R4/))
- Familiarité avec **FHIR Shorthand (FSH)** ([guide FSH](https://build.fhir.org/ig/HL7/fhir-shorthand/))
- Compréhension du contexte français de la santé (INS, FINESS, etc.)

## Configuration de l'environnement

### 1. Cloner le dépôt

```bash
git clone https://github.com/Interop-Sante/hl7.fhir.fr.core.git
cd hl7.fhir.fr.core
```

### 2. Mettre à jour l'IG Publisher

```bash
bash _updatePublisher.sh
```

### 3. Générer le guide d'implémentation

```bash
bash _genonce.sh
```

Le guide généré sera disponible dans le dossier `output/`.

### 4. Mode développement continu

Pour une génération automatique à chaque modification :

```bash
bash _gencontinuous.sh
```

## Workflow de contribution

### 1. Créer une branche

```bash
git checkout -b vos-initiales/description-de-la-contribution
```

Nommez votre branche de manière descriptive en la préfixant avec vos initiales :
- `nr/add-observation-profile` pour ajouter un profil Observation
- `yp/fix-patient-identifier-cardinality` pour corriger la cardinalité d'un identifiant
- `nr/improve-usage-examples` pour améliorer les exemples d'usage

Cette convention permet d'identifier rapidement le contributeur actif sur une branche et d'éviter les conflits de nommage.

### 2. Faire vos modifications

#### Ajouter un nouveau profil

1. Créez un fichier `.fsh` dans le dossier approprié :
   - `input/fsh/profiles/` pour les profils de ressources
   - `input/fsh/extensions/` pour les extensions
   - `input/fsh/valuesets/` pour les valuesets
   - `input/fsh/codesystems/` pour les codesystems

2. Suivez les conventions de nommage :
   ```fsh
   Profile: FRCore[ResourceName]Profile
   Id: fr-core-[resource-name]
   Title: "FR Core [Resource Name] Profile"
   Description: "Description en français et en anglais"
   ```

#### Ajouter un exemple

Créez un fichier dans `input/fsh/Examples/` :
```fsh
Instance: ExampleFRCorePatient
InstanceOf: FRCorePatientProfile
Usage: #example
Title: "Exemple de patient français"
Description: "Exemple illustrant l'utilisation du profil FRCorePatient"
* identifier[INS-C].value = "123456789012345"
// ... autres éléments
```

### 3. Tester vos modifications

```bash
# Compiler avec SUSHI
sushi .

# Générer l'IG complet
bash _genonce.sh
```

Vérifiez les erreurs et warnings dans la console et dans `output/qa.html`.

### 4. Commiter vos changements

```bash
git add .
git commit -m "feat: ajout du profil FRCoreObservationGlycemie"
```

Utilisez des messages de commit clairs suivant la convention :

- `feat:` pour une nouvelle fonctionnalité
- `fix:` pour une correction
- `doc:` pour la documentation
- `refactor:` pour une refactorisation
- `test:` pour l'ajout de tests ou exemples

### 5. Pousser et créer une Pull Request

```bash
git push origin feature/ma-contribution
```

Créez ensuite une Pull Request sur GitHub avec :

- Un titre descriptif
- Une description détaillée des changements
- Des références aux issues liées (ex: `Fixes #123`)
- Des captures d'écran si pertinent

## Standards de codage

Les pratiques de codage de ce projet suivent les [bonnes pratiques définies par l'ANS](https://interop.esante.gouv.fr/ig/documentation/bonnes_pratiques_modeler.html). Pour plus de détails, consultez la page [Bonnes pratiques](https://hl7.fr/ig/fhir/core/bonnes_pratiques.html) du guide.

### Conventions de nommage FSH

#### Ressources de conformité

Sauf exception, toutes les ressources de conformité sont modélisées en FSH. Voici les conventions pour chaque type d'artefact :

| Paramètre | Objet concerné | Exemple |
|-----------|----------------|---------|
| **id** | Ressources de conformité | `fr-core-patient` |
| **title** | Ressources de conformité | `FR Core Patient Profile` |
| **name** | Ressources de conformité | `FRCorePatientProfile` |
| **url** | Ressources de conformité | `https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient` |
| **code** | SearchParameter | Toujours en minuscule, mots séparés par des tirets `-` |

#### Noms de fichiers FSH

Tous les fichiers sont préfixés par `FRCore` :

| Type de fichier | Règle | Exemple |
|-----------------|-------|---------|
| **Artifact terminologique** | `FRCore[CodeSystem/ValueSet]{NomEnUpperCamelCase}.fsh` | `FRCoreCodeSystemCirconstancesSortie.fsh` |
| **Exemples** | `FRCore{NomRessource}{OptionnelIncrementOuContexte}Example.fsh` | `FRCorePatientExample.fsh` |
| **Profils** | `FRCore{NomRessource}{OptionnelContexte}Profile.fsh` | `FRCorePatientProfile.fsh` |
| **Profils de types de données** | `FRCore{NomDatatype}{OptionnelContexte}Profile.fsh` | `FRCoreAddressProfile.fsh` |
| **Extensions** | `FRCore{Nom}Extension.fsh` | `FRCorePatientIdentReliabilityExtension.fsh` |

#### Structure des fichiers

```fsh
// Commentaire d'en-tête expliquant le but du fichier

Profile: FRCorePatientProfile
Parent: Patient
Id: fr-core-patient
Title: "FR Core Patient Profile"
Description: """Description multilingue détaillée
Décrivez le profil en français et en anglais."""

// Règles groupées logiquement
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
// ...

// Commentaires explicatifs pour les choix complexes
* name only FRCoreHumanNameProfile // Utilise le profil de nom français
```

#### Bonnes pratiques de modélisation

1. **Documentation** : Ajoutez des descriptions claires en français et anglais
2. **Cardinalités** : Justifiez les cardinalités strictes par des commentaires
3. **Extensions** : Privilégiez les extensions internationales existantes quand possible
4. **ValueSets** : Utilisez les terminologies ANS (`ans.fr.terminologies`) en priorité
5. **Exemples** : Chaque profil devrait avoir au moins un exemple
6. **Identifiants** : En FHIR, distinguez :
   - **Identifiants techniques** (`Resource.id`) : identifient uniquement la ressource au sein du serveur
   - **Identifiants métiers** (`Resource.identifier`) : peuvent être multiples, identifient la ressource en dehors du serveur
   - **Recommandation** : Favorisez l'usage des identifiants métiers pour faciliter l'identification de la ressource en dehors du serveur

## Processus de revue

Les Pull Requests (PR) GitHub sont un outil de travail collaboratif permettant de proposer des changements avant de les valider officiellement. **Toute proposition de modification doit passer par une Pull Request** et **être validée par au moins une personne** avant d'être incluse dans la branche courante.

### Ce que nous vérifions

- **Conformité FHIR** : Le code FSH est valide et compile sans erreur
- **Cohérence** : Les conventions de nommage et structure sont respectées (voir [Standards de codage](#standards-de-codage))
- **Documentation** : Les descriptions sont claires et bilingues (français/anglais)
- **Tests** : Les exemples fonctionnent et illustrent les cas d'usage (cf qa.html)
- **Impact** : Les changements ne cassent pas la compatibilité sans justification
- **Justification** : Pour les nouveaux profils, la nécessité des contraintes françaises est clairement expliquée

### Timeline

- Les revues sont généralement effectuées dans les jours suivants
- Les changements simples (typos, documentation) peuvent être mergés rapidement après approbation
- Les changements importants (nouveaux profils, modifications majeures) nécessitent :
  - Une validation par **au moins un reviewer** (plusieurs pour les changements critiques)
  - Potentiellement une discussion dans les groupes de travail d'Interop'Santé
  - Une analyse d'impact sur l'écosystème français

### Après la revue

- Répondez aux commentaires de revue
- Effectuez les modifications demandées
- Poussez les changements (ils seront ajoutés automatiquement à la PR)
- Une fois approuvée par au moins une personne, votre PR sera mergée par un mainteneur

## Signaler des problèmes

Lors de l'ouverture d'une issue, incluez :

- **Titre clair** : Résumez le problème en une phrase
- **Description** : Détaillez le problème ou la suggestion
- **Contexte** : Version du guide, cas d'usage
- **Exemples** : Extrait de code FSH si applicable
- **Ressources** : Liens vers la spécification FHIR ou standards ANS

## Ressources utiles

### Documentation FHIR

- [FHIR R4 Specification](https://hl7.org/fhir/R4/)
- [FHIR Shorthand Guide](https://build.fhir.org/ig/HL7/fhir-shorthand/)
- [SUSHI Documentation](https://fshschool.org/)
- [IG Publisher Documentation](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation)

### Ressources françaises

- [Site Interop'Santé](http://www.interopsante.org)
- [Catalogue des guides ANS](https://interop.esante.gouv.fr/ig/fhir)
- [IG Documentation ANS](https://interop.esante.gouv.fr/ig/documentation) - Bonnes pratiques d'implémentation et de modélisation
- [Bonnes pratiques de modélisation ANS](https://interop.esante.gouv.fr/ig/documentation/bonnes_pratiques_modeler.html)
- [Serveur de terminologies ANS](https://smt.esante.gouv.fr)
- [Guide d'implémentation Fr Core publié](http://hl7.fr/ig/fhir/core)
- [CI/CD du projet](https://interop-sante.github.io/hl7.fhir.fr.core/main/ig)
- [Bonnes pratiques Fr Core](https://interop-sante.github.io/hl7.fhir.fr.core/main/ig/bonnes_pratiques.html)

### Contacts et liens officiels

- **Repository GitHub** : [github.com/Interop-Sante/hl7.fhir.fr.core](https://github.com/Interop-Sante/hl7.fhir.fr.core)
- **Issues GitHub** : [github.com/Interop-Sante/hl7.fhir.fr.core/issues](https://github.com/Interop-Sante/hl7.fhir.fr.core/issues)
- **Pull Requests** : [github.com/Interop-Sante/hl7.fhir.fr.core/pulls](https://github.com/Interop-Sante/hl7.fhir.fr.core/pulls)
- **Email** : fhir@interopsante.org
- **Site web Interop'Santé** : [www.interopsante.org](http://www.interopsante.org)
- **Page "À propos" du guide** : [a_propos.html](https://interop-sante.github.io/hl7.fhir.fr.core/main/ig/a_propos.html)

### Canaux communautaires

- **Google Group FHIR France** : [groups.google.com/g/groupes-fhir-france](https://groups.google.com/g/groupes-fhir-france)
- **Slack FHIR France** : [Invitation Slack](https://join.slack.com/t/fhir-france/shared_invite/zt-2pv7q7ern-VIrh8Q9r4hrOJPQk3j_ouA)

---

Merci pour votre contribution au Guide d'Implémentation FHIR Core français ! 🇫🇷
