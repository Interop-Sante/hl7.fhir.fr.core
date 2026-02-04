# Bonnes pratiques d'usage du guide d'implémentation - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* **Bonnes pratiques d'usage du guide d'implémentation**

## Bonnes pratiques d'usage du guide d'implémentation

Cette page indique les bonnes pratiques d’usage du guide d’implémentation, pour une utilisation cohérente, efficace et conforme au standard FHIR et aux spécificités nationales.

### Les bonnes pratiques d’implémentation

#### Les identifiants techniques et les identifiants métiers

En FHIR, il y a plusieurs types d’identifiants :

* Les identifiants techniques (Resource.id), qui permettent d’identifier de manière unique une ressource au sein du serveur
* Les identifiants métiers (Resource.identifier), qui peuvent être multiples, permettent d’identifier la ressource en dehors du serveur.

Il est conseillé de favoriser l’usage des identifiants métiers pour faciliter l’identification de la ressource en dehors du serveur.

#### Les syntaxes retenues

Parmi les trois syntaxes disponibles pour implémenter FHIR, les syntaxes retenues sont les syntaxes XML et JSON.

### Les bonnes pratiques de rédaction des guides d’implémentation

#### Profilage de nouvelles ressources

Des nouvelles ressources peuvent être profilées pour l’écosystème français. Pour cela, il est nécessaire d’expliquer la nécessité de profiler les ressources : pour quelles raisons faut-il rajouter des contraintes propres à l’écosystème français plutôt que d’utiliser les ressources de base proposées par FHIR ?

#### Les Pull Requests

Les Pull Requests (PR) GitHub sont un outil de travail collaboratif, elles permettent de proposer les changements avant de les valider officiellement dans la branche courante. Toute proposition de modification doit passer par une Pull Request, celle-ci doit être validée par au moins une personne avant d’être incluse dans la branche courante

#### Les pratiques de nommage des artifacts FHIR d’InteropSanté (HL7 France) et de FrCore

Les pratiques de nommages d’InteropSanté pour les artifacts FHIR se basent sur les [bonnes pratiques définies par l’ANS](https://interop.esante.gouv.fr/ig/documentation/bonnes_pratiques_modeler.html).

**Exemples FrCore**

| | | |
| :--- | :--- | :--- |
| id | ressources de conformité | fr-core-patient |
| title | ressources de conformité | FR Core Patient Profile |
| name | ressources de conformité | FRCorePatientProfile |
| url | ressources de conformité  | https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient |
| code | SearchParameter | Toujours en minuscule, mots séparés par des tirets “-“ si besoin |

Sauf exception, l’ensemble des ressources de conformité de ce guide sont modélisées en FSH. Le nom des fichiers sont préfixés par FRCore, les règles précises de définition sont indiquées dans le tableau ci-dessous.

| | | |
| :--- | :--- | :--- |
| Artifact terminologique | FRCore[CodeSystem/ValueSet]{nom en upper camel case}.fsh | FRCoreCodeSystemCirconstancesSortie.fsh |
| Exemples | FRCore{nom-ressource}{(optionnel)incrément ou contexte}Example.fsh | FRCorePatientExample.fsh |
| Profils | FRCore{nom-ressource}{(optionnel) contexte}Profile.fsh | FRCorePatientProfile.fsh |
| Profils de types de données | FRCore{nom-datatype}{(optionnel) contexte}Profile.fsh | FRCoreAddressProfile.fsh |

### Plus d’informations

Vous trouverez davantage d’informations autour des pratiques d’implémentation et de modélisation des guides d’implémentation sur l’[IG Documentation](https://interop.esante.gouv.fr/ig/documentation) de l’Agence du Numérique en Santé.

