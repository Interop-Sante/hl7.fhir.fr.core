# Relations entre entités - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* **Relations entre entités**

## Relations entre entités

### Relations entre les entités de la structure

Chaque entité, composant la structure d’un établissement de santé doit pouvoir avoir :

* un lien vers une entité père
* un ou plusieurs liens avers des entités filles.

Une UF peut faire partie d’un regroupement d’un secteur et faire également partie d’un même pôle, ou d’un même Centre d’Activité. Une UF n’a donc pas forcément qu’un seul parent. La modélisation avec la ressource `Organization` doit permettre des liens flexibles et multiples vers d’autres entités. Cela permet alors de pouvoir exprimer chaque structure d’établissement.

Dans la version internationale de la ressource [Organization](https://hl7.org/fhir/R4/organization.html), seule une possibilité de lien entre une entité et une entité parente est possible. Cela ne permet pas d’exprimer la souplesse d’organisation qui est laissée à chaque établissement, dans le cadre français.

En rajoutant simplement une extension à la ressource Organization, à savoir `member`, toutes les possibilités sont exprimables.

![](liens_entite.svg)

### Relation de responsabilité

Pour exprimer une relation de responsabilité qu’exerce un professionnel de santé sur un structure, comme par exemple :

* un directeur général responsable d’une entité juridique
* un responsable de pôle
* un responsable d’UF
* etc.

L’utilisation de deux ressources est nécessaire. Le professionnel de santé sera représenté par une instance de la ressource `Practitionner` et son rôle, de responsabilité, sera portée par la ressource `PractitionerRole` qui fera le lien entre le professionnel et l’entité.

![](relations_personnes.svg)

