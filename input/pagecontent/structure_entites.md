Les entités constituant la structure hospitalière sont catégorisées en 2 familles :

- les entités abstraites
- les lieux physiques

### Entités abstraites

Les différentes entités abstraites sont

Groupement Hospitalier de Territoire (GHT) 
: Un Groupement Hospitalier de Territoire (GHT) est un regroupement d'établissements de santé publics et privés au sein d'un même territoire. Son objectif est d'améliorer la qualité et la sécurité des soins, d'optimiser les ressources et de faciliter l'accès aux soins. Chaque GHT est composé d'un établissement support et d'établissements membres, organisés en pôles territoriaux de santé. La gouvernance est assurée par un conseil de surveillance, un directoire et un comité stratégique. Les missions incluent la coordination des activités médicales, la mutualisation des fonctions supports et le développement de projets communs. Les GHT bénéficient de financements spécifiques et sont soumis à des évaluations régulières.

Établissement Juridique
: Une entité juridique (EJ) correspond à la notion de personne morale. Une entité juridique détient des droits (autorisations, agréments, conventions,...) lui permettant d'exercer ses activités dans des établissements. A chaque entité juridique est associé un statut juridique.

Établissement Géographique
: Un établissement (EG) correspond à une implantation géographique. Un établissement est caractérisé par une catégorie d'établissement. Un établissement est obligatoirement relié à une entité juridique.


Pôle
: Le pôle constitue le plus haut niveau de consolidation, juste avant celui de l’établissement. C'est une structure interne qui regroupe plusieurs secteurs, services ou unités fonctionnelles partageant des activités de soins, de prévention, d’enseignement et/ou de recherche, communes ou complémentaires. Son fonctionnement repose sur des objectifs d’activité et de qualité, définis dans un projet de pôle partagé et contractualisé avec la direction de l’établissement. 
: Le chef de pôle, nommé par le directeur de l’établissement, pilote le pôle et met en œuvre la politique de l’établissement au sein de sa structure, en lien avec les équipes médicales, soignantes et administratives

Service
: Les services mentionnés à l'article L. 6146-1 constituent l'échelon de référence en matière d'organisation, de pertinence, de qualité et de sécurité des soins, d'encadrement de proximité des équipes médicales et paramédicales, d'encadrement des internes et des étudiants en santé ainsi qu'en matière de qualité de vie au travail.
: Ils sont dirigés par un chef de service, responsable de structure interne, en étroite collaboration avec le cadre de santé.

Unité fonctionnelle
: L’UF « unité fonctionnelle » est la plus petite entité de l’établissement à partir de laquelle la collecte des informations (activités et/ou économique) peut être réalisée et utilisée dans les fichiers informatiques.
: Le découpage en UF doit être réalisé avec le niveau de finesse le plus approprié afin de permettre l’affectation des dépenses directes et des produits. Il doit aussi être superposable avec le découpage en UM pour les unités d’hospitalisation.



Structure Interne
: La loi HPST définit le pôle ainsi : "Les pôles d'activité peuvent comporter des structures internes de prise en charge du malade par les équipes médicales, soignantes ou médico-techniques ainsi que les structures médico-techniques qui leur sont associées."
: Des structures internes aux pôles d’activité peuvent être définies, sans qu’aucune obligation règlementaire ne contraigne l’établissement. Ces structures sont fédérées par le chef de pôle, et ses collaborateurs, ainsi que par le projet de pôle qui définit les missions et les responsabilités confiées aux structures internes.
: La loi ne fournit pas d’indication particulière sur les structures internes. La taille et la composition des pôles
étant au choix de chaque établissement, les structures internes, si elles sont mises en place, seront le reflet de la stratégie médicale et médico-technique adoptée pour chaque pôle. Il n’y a plus aucune obligation de maintenir l’organisation ancienne en services et unités fonctionnelles.

Secteur
: Le secteur est une structure interne qui peut être définie pour assurer une cohérence d'organisation de plusieurs Unités Fonctionnelles. 
: En psychiatrie, un secteur désigne une zone géographique et démographique définie, pour assurer la prévention, le diagnostic, le traitement et le suivi des troubles mentaux d’une population donnée. Chaque secteur dispose d’équipes médico-sociales pluridisciplinaires et de structures variées (centres médico-psychologiques (CMP), hôpitaux de jour, unités d’hospitalisation, centres d’accueil thérapeutique à temps partiels (CATTP), appartements thérapeutiques, etc.), permettant d’assurer la continuité des soins et l’accompagnement du patient dans son parcours de vie.

Département
: Le département est également une structure interne regroupant plusieurs Unités Fonctionnelles. Il constitue une possibilité d'organisation sans en définir des contours précis.

Centre d’activité
: Sans définition officielle, le CA est une structure interne permettant de suivre et d'analyser les coûts, les recettes et les résultats associés à une catégorie précise d’activités.

Centre de responsabilité
: Découpage budgétaire de l’établissement correspondant à un niveau où les objectifs d’activité et de moyens sont négociés entre le responsable et la direction de l’établissement.
: Regroupement de structures internes permettant d’effectuer le suivi budgétaire du Centre hospitalier. Ce découpage est libre. Avec la mise en place des pôles, cette entité est amenée à
disparaître. Toutefois, beaucoup de sites conservent cette notion qui peut parfois être équivalente à la notion de service, de département ou de secteur.

PAC ou UAC
: Le PAC ou l’UAC est le niveau élémentaire de recueil des activités en vue de la facturation. Il est lié à une
discipline de prestation et à un tarif (lié à la discipline de prestation). Le PAC ne sert qu’à la facturation du séjour.
: Il permet d’associer des tarifs de soins différents pour la prise en charge d’un patient.
: Une Unité Fonctionnelle peut regrouper plusieurs PAC/UAC, permettant d'avoir une tarification différente des actes réalisés dans l'UF.

### Lieux Physiques

Les lieux physiques sont :

+ Bâtiment
+ Étage
+ Couloir
+ Aile
+ Box
+ Chambre
+ lit
+ Plateau technique
+ Point de collecte
+ Point de livraison
+ salle d’examen
+ salle de consultation

Ces lieux sont des entités concrètes, représentant un espace délimité et identifiable par une adresse et/ou des coordonnées GPS. Certains lieux peuvent également définir des horaires pendant lesquels des activités de soins sont réalisées.
Ces différents lieux sont reliés entre eux par des relations. Ils sont également liés aux structures organisationnelles abstraites.

### Modèle conceptuel

 Chaque entité est une structure interne, qui peut parfois avoir des caractéristiques propres supplémentaires. Le modèle objet de ces entités est alors :


### Profile FHIR associé

Chaque entité peut être associée à un profil FHIR qui permet de la représenter.
Les profils définis par FR Core pour la gestion des structures sont les suivants :
- FRCoreOrganizationProfile : Profil de base pouvant représenter les structures internes simples d'un établissement
- FRCoreOrganizationEtablissementProfile : Profil rajoutant des attributs nécessaires à la représentation d'un établissement, qu'il soit géographique ou juridique
- FRCoreOrganizationUFProfile : Profil permettant de représenter les Unités Fonctionnelles
- FRCoreOrganizationUACProfile : Profil permettant de représenter les Unités d4activité

Les profils sont organisés comme suit


![Profils FR Core Structure](profiles_uml.svg "Profils")
{: .schema }

La correspondance est la suivante :

| Entité                     | Profil                                 |
|----------------------------|----------------------------------------|
| Établissement Juridique    | [FRCoreOrganizationEtablissementProfile](StructureDefinition-fr-core-organization-etablissement.html) |
| Établissement Géographique | [FRCoreOrganizationEtablissementProfile](StructureDefinition-fr-core-organization-etablissement.html) |
| Pôle                       | [FRCoreOrganizationProfile](StructureDefinition-fr-core-organization.html)              |
| Service                    | [FRCoreOrganizationProfile](StructureDefinition-fr-core-organization.html)              |
| Unité fonctionnelle        | [FRCoreOrganizationUFProfile](StructureDefinition-fr-core-organization-uf.html)         |
| Unité Médicale             | [FRCoreOrganizationProfile](StructureDefinition-fr-core-organization.html)              |
| Structure Interne          | [FRCoreOrganizationProfile](StructureDefinition-fr-core-organization.html)              |
| Secteur                    | [FRCoreOrganizationProfile](StructureDefinition-fr-core-organization.html)              |
| Département                | [FRCoreOrganizationProfile](StructureDefinition-fr-core-organization.html)              |
| Centre d’activité          | [FRCoreOrganizationProfile](StructureDefinition-fr-core-organization.html)              |
| Centre de responsabilité   | [FRCoreOrganizationProfile](StructureDefinition-fr-core-organization.html)              |
| PAC ou UAC                 | [FRCoreOrganizationUACProfile](StructureDefinition-fr-core-organization-uac.html)       |
{: .table-is .table-striped }
