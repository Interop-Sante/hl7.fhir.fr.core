# Entités - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* **Entités**

## Entités

Les entités constituant la structure hospitalière sont catégorisées en 2 familles :

* les entités abstraites
* les lieux physiques

### Entités abstraites

Les différentes entités abstraites sont

### Lieux Physiques

Les lieux physiques sont :

* Bâtiment
* Étage
* Couloir
* Aile
* Box
* Chambre
* lit
* Plateau technique
* Point de collecte
* Point de livraison
* salle d’examen
* salle de consultation

Ces lieux sont des entités concrètes, représentant un espace délimité et identifiable par une adresse et/ou des coordonnées GPS. Certains lieux peuvent également définir des horaires pendant lesquels des activités de soins sont réalisées. Ces différents lieux sont reliés entre eux par des relations. Ils sont également liés aux structures organisationnelles abstraites.

### Modèle conceptuel

Chaque entité est une structure interne, qui peut parfois avoir des caractéristiques propres supplémentaires. Le modèle objet de ces entités est alors :

### Profile FHIR associé

Chaque entité peut être associée à un profil FHIR qui permet de la représenter. Les profils définis par FR Core pour la gestion des structures sont les suivants :

* FRCoreOrganizationProfile : Profil de base pouvant représenter les structures internes simples d’un établissement
* FRCoreOrganizationEtablissementProfile : Profil rajoutant des attributs nécessaires à la représentation d’un établissement, qu’il soit géographique ou juridique
* FRCoreOrganizationUFProfile : Profil permettant de représenter les Unités Fonctionnelles
* FRCoreOrganizationUACProfile : Profil permettant de représenter les Unités d4activité

Les profils sont organisés comme suit

![](profiles_uml.svg)

La correspondance est la suivante :

| | |
| :--- | :--- |
| Établissement Juridique | [FRCoreOrganizationEtablissementProfile](StructureDefinition-fr-core-organization-etablissement.md) |
| Établissement Géographique | [FRCoreOrganizationEtablissementProfile](StructureDefinition-fr-core-organization-etablissement.md) |
| Pôle | [FRCoreOrganizationProfile](StructureDefinition-fr-core-organization.md) |
| Service | [FRCoreOrganizationProfile](StructureDefinition-fr-core-organization.md) |
| Unité fonctionnelle | [FRCoreOrganizationUFProfile](StructureDefinition-fr-core-organization-uf.md) |
| Unité Médicale | [FRCoreOrganizationProfile](StructureDefinition-fr-core-organization.md) |
| Structure Interne | [FRCoreOrganizationProfile](StructureDefinition-fr-core-organization.md) |
| Secteur | [FRCoreOrganizationProfile](StructureDefinition-fr-core-organization.md) |
| Département | [FRCoreOrganizationProfile](StructureDefinition-fr-core-organization.md) |
| Centre d’activité | [FRCoreOrganizationProfile](StructureDefinition-fr-core-organization.md) |
| Centre de responsabilité | [FRCoreOrganizationProfile](StructureDefinition-fr-core-organization.md) |
| PAC ou UAC | [FRCoreOrganizationUACProfile](StructureDefinition-fr-core-organization-uac.md) |

