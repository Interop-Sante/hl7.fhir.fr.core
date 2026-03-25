# Contraintes sur les profils - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* **Contraintes sur les profils**

## Contraintes sur les profils

Les ressources représentant les entités organisationnelles des établissements de santé sont soumises à des contraintes fonctionnelles. Ces contraintes ont dû être prises en compte dans la conception des profils.

Les profils définissent des contraintes techniques sur les organisations et sur les lieux en fonction de leur type. Le type est porté par l’attribut `type`. En fonction du profil utilisé tous les types ne sont pas possibles.

### Contraintes fonctionnelles

Les contraintes fonctionnelles sont notamment issues des [textes de loi](structure_ref_loi.md) ou des définitions dans les guides méthodologiques nationaux.

| | | |
| :--- | :--- | :--- |
| STRU-1 | Une entité peut être rattachée à plusieurs entités père : exemple 1 UF peut être rattachée à 1 pôle, 1 Etablissement Géographique, 1 département, etc. | La mise en place d’une extension de type`member`permet de répondre à cette contrainte, plus de détails dans la page sur[les relations](structure_relations.md) |
| STRU-2 | Un pôle d’activité peut être composé de départements, services ou unités fonctionnelles ou structures internes (autres structures) | La contrainte est adressée par la gestion[des relations](structure_relations.md)entre entités |
| STRU-3 | Un pôle d’activité peut être clinique ou médico technique | Dans le profil actuel, un pôle est une entité organisationnelle sans caractéristique propre. Les UF en lien avec le pôle peuvent être clinique ou médico-technique mais l’information n’est pas porté par le pôle. A faire évoluer si un cas d’usage le nécessite |
| STRU-4 | Les structures internes, services, UF, secteur et pole ont 1 responsable | Les responsables sont représentés par des ressources`Practitioner`et le rôle (responsabilité) porté par ces professionnels sur les entités est défini par une ressource`PractitionerRole`. Cette notion de responsabilité est externe aux ressources`Organization`et`Location` |
| STRU-5 | Les personnes responsables ne sont pas forcément des médecins (ex. DG, DRH, etc.) | Un`Practitioner`est un personnel de santé qui contribue au soins, tous les professionnels de santé rentrent dans cette catégorie |
| STRU-6 | Les pôles peuvent être inter établissements | La contrainte est résolue par la mise en place de l’extension`member`, voir la gestion[des relations](structure_relations.md)entre entités |
| STRU-7 | 1 UM peut contenir plusieurs UF, être équivalente à 1 UF ou être une sous partie d’une UF | A l’heure actuelle, les UM ne font pas partie du périmètre des ressources profilées. A revoir si un ou des cas d’usage le nécessite |

### Contraintes techniques

Les contraintes techniques sont des contraintes mises en oeuvre dans les profils des ressources.

#### Sur les types d’Organization

| | | |
| :--- | :--- | :--- |
| Organization | Avec le profile de base, les différents types définissant des structures internes sont possibles | `GHT`,`GROUP`,`SERVICE`,`POLE`,`CR`,`CA` |
| Organization Etablissement | Le profil définit les établissements géographiques ou juridiques | `LEGAL-ENTITY`,`GEOGRAPHICAL-ENTITY` |
| Organization Etablissement | Le numéro SIREN ne peut être positionné que pour les établissements juridiques | `LEGAL-ENTITY` |
| Organization Etablissement | Le numéro SIRET ne peut être positionné que pour les établissements géographiques | `GEOGRAPHICAL-ENTITY` |
| Organization UAC | Le profil définit une UAC | `UAC` |
| Organization UF | Le profil définit une UF | `UF` |

#### Sur les types de Location

Un seul profil Location est défini permettant d’exprimer tous les lieux physiquement. Cependant pour améliorer la qualité des données, deux contraintes sont posées sur ce profil :

| | | |
| :--- | :--- | :--- |
| Location | Le type de chambre est positionnable que si le type de localisation est effectivement une chambre | `CHAMB` |
| Location | La position d’un lit est positionnable que si le type de localisation est effectivement un lit | `LIT` |

