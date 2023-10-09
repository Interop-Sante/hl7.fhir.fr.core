<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6;">
<b>
Profils, extensions, jeux de valeurs, et guides de mise en œuvre normalisant l'échange de données administratives sur les patients, les professionnels de santé et les organisations, et les rencontres avec les patients (programmées ou effectives), ainsi que les signes vitaux en France.
</b><br>

Profiles, extensions, value sets, code systems and implementation guides standardizing the exchange of administrative data about patients, health professionals and organization, and patient encounters (scheduled or effective), and vital sign in France

</p>

### Introduction

Ce guide de mise en œuvre est fourni pour **soutenir l'utilisation de FHIR® en France**. Il permet de définir les profils, les extensions et les jeux de valeurs normalisant **l'échange de données administratives sur les patients, les professionnels de santé et les organisations, et les rencontres avec les patients (programmées ou effectives), ainsi que les signes vitaux**.

Il s'agit d'une spécification de travail. Sa mise en œuvre est actuellement testée, permettant un retour d'information afin d'en améliorer le contenu. On y retrouve :

* Orientations sur les ressources essentielles en France.
* Extensions nécessaires à l'utilisation locale en France.

### Champ d'application

Ce document présente les concepts d'utilisation français définis par :

* Profils - contraintes utiles des ressources et types de données FHIR essentiels pour l'utilisation en France.
* Extensions - extensions FHIR ajoutées pour un usage local, couvrant les concepts français nécessaires.
* Terminologies - systèmes de codes et ensembles de valeurs définis ou référencés pour la France. 

Les activités de profilage donnent la priorité aux ressources ayant un niveau de maturité suffisant (>=3). Chaque sujet fonctionnel est traité par un groupe de travail dédié d'Interop'Santé, réunissant des éditeurs de logiciels, des professionnels des établissements de santé et des représentants d'agences gouvernementales. Le consensus sur les ressources de conformité FHIR est établi d'abord au niveau du groupe de travail, puis au niveau des membres.

### Standards utilisés

Le Guide d'implémentation FR Core est **basé sur la version Release 4 de HL7 FHIR** et définit l'ensemble minimum de contraintes sur les ressources FHIR pour créer les profils FR Core. Elles font référence à un certain nombre de ressources du standard ainsi qu’aux spécifications de l’API REST FHIR, basées sur le protocole HTTP. Les syntaxes retenues sont la syntaxe XML et JSON.

En établissant la "base" des normes pour promouvoir l'interopérabilité et l'adoption par le biais d'une mise en œuvre commune, il permet une évolution ultérieure de l'élaboration des normes pour des cas d'utilisation spécifiques.

### Gouvernance

Le guide d'implémentation FR Core est géré par HL7 France et IHE France au sein du comité technique FHIR de HL7 France.
### Auteurs et contributeurs

| Role  | Nom           | Organisation | Contact                     |
| --- |---------------|--------------|-----------------------------|
| **Primary Editor** | Nicolas Riss  | Agence du Numérique en Santé  | nicolas.riss@esante.gouv.fr |
| **Primary Editor** | Yohann Poiron | Xtrem Santé  | ypoiron@xtremsante.fr       |


## Dépendances

{% include dependency-table.xhtml %}