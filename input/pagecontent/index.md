<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>
Profils, extensions, jeux de valeurs, et guides de mise en œuvre normalisant l'échange de données de santé : données administratives sur les patients, les professionnels de santé et les organisations, et les rencontres avec les patients (programmées ou effectives), ainsi que les signes vitaux en France.
</b><br>

Profiles, extensions, value sets, code systems and implementation guides standardizing the exchange of health data : administrative data about patients, health professionals and organization, and patient encounters (scheduled or effective), and vital sign in France

</p>

{% if site.data.info.releaselabel == 'ci-build' %}
<blockquote class="stu-note">
<p>
  <b>Attention !</b>
  <br>
 La version de l'Implementation Guide que vous êtes en train de consulter est en intégration continue et n'est pas à utiliser car soumise à des changements réguliers. La version à utiliser est accessible ici : http://hl7.fr/ig/fhir/core.
</p>
</blockquote>
{% endif %}

{% if site.data.info.releaselabel == 'ballot' %}
<div style="width: 65%">
<blockquote class="stu-note">
<p>
  <b>Attention !</b> Cette version du guide d'implémentation est en concertation. La version officielle est accessible à l'adresse http://hl7.fr/ig/fhir/core</b>
</p>
</blockquote>
</div>
{% endif %}

Ce guide d'implémentation est fourni comme **fondation pour l'utilisation de FHIR® en France**. Il permet de définir les profils, les extensions et les jeux de valeurs normalisant **l'échange de données administratives sur les patients, les professionnels de santé et les organisations, et les rencontres avec les patients (programmées ou effectives), les signes vitaux ainsi que les structures des établissements de soins**.

### Le rôle du guide d'implémentation FHIR FR Core

L'objectif du guide d'implémentation FR Core est de garantir une base commune pour permettre une utilisation homogène du standard pour l'ensemble des implémentations FHIR en France (version de FHIR, extensions, identifiants, etc.).
Pour cela, ce guide va par exemple indiquer comment modéliser un [patient FHIR en France](./StructureDefinition-fr-core-patient-ins.html) (contenant l'identifiant national de santé (INS)), [un professionnel de santé](./StructureDefinition-fr-core-practitioner.html) (contenant l'identifiant national de professionnel de santé (IDNatPS)), ...

Afin de garantir l'uniformité d'usage de FHIR en France, l'ensemble des implémentations FHIR et des guides d'implémentation doit se baser sur FR Core, comme c'est le cas pour les guides d'implémentation de l'Agence du Numérique en Santé (ANS) et d'InteropSanté (IS).

Dans les prochaines versions, FR Core sera également garant de la compatibilité européenne en héritant directement des profils HL7 Base Europe. Ces profils FR Core vont permettre de valider la conformité des instances FHIR sur les espaces de tests.

### Principes de modélisation et d'utilisation de FHIR FR Core

Les profils FHIR de ce guide d'implémentation sont volontairement peu contraignants afin de couvrir le plus grand nombre de cas d'usage et ainsi faciliter son adoption. Par conséquent, ce guide ne traite pas de cas d'usage spécifiques : il est donc recommandé de vérifier dans l'écosystème des guides d'implémentation si des guides plus spécialisés correspondant à votre cas d'usage existent.

Le guide d'implémentation FR Core, et FHIR de manière générale, offrent un large éventail de ressources, d'attributs et de paramètres de recherche. Toutefois, FHIR et FR Core n'imposent pas l'implémentation complète de toutes ces fonctionnalités. Il convient donc pour chaque cas d'usage d'identifier précisément les ressources, profils et les fonctionnalités d'API nécessaires.

Par exemple, l'API FHIR Annuaire Santé, une API ouverte basée sur FR Core, illustre une mise en œuvre concrète de ce guide. Sa [documentation](https://ansforge.github.io/annuaire-sante-fhir-documentation/) et son [guide d'implémentation](https://interop.esante.gouv.fr/ig/fhir/annuaire/) peuvent servir de référence.

### Champ d'application

Ce document présente les concepts d'utilisation français définis par :

* Profils - contraintes utiles des ressources et types de données FHIR essentiels pour l'utilisation en France.
* Extensions - extensions FHIR ajoutées pour un usage local, couvrant les concepts français nécessaires.
* Terminologies - systèmes de codes et ensembles de valeurs définis ou référencés pour la France.

Les activités de profilage donnent la priorité aux ressources ayant un niveau de maturité suffisant (>=3). Chaque sujet fonctionnel est traité par un groupe de travail dédié d'Interop'Santé, réunissant des éditeurs de logiciels, des professionnels des établissements de santé et des représentants d'agences gouvernementales. Le consensus sur les ressources de conformité FHIR est établi d'abord au niveau du groupe de travail, puis au niveau des membres.

### Choix de la version du standard FHIR

Pour garantir l'interopérabilité à l'échelle nationale, **l'utilisation de FHIR R4 est recommandée pour l'ensemble des projets en France**. Ainsi, ce guide d'implémentation FR Core est **basé sur FHIR R4**.

La stratégie sur le choix des versions FHIR a été définie au sein d'un groupe de travail organisé entre Interop'Santé et l'ANS en 2023/2024, validée via une [concertation](https://participez.esante.gouv.fr/project/fhir-r5-ou-r4/presentation/presentation) de l'ANS.

#### Nouveaux cas d’usages FHIR : privilégier FHIR R4 et anticiper la transition vers R6

Pour garantir la cohérence au sein de l'écosystème français et éviter tout problème de compatibilité dû à des travaux divergents, il est nécessaire d'utiliser une même version du standard FHIR à l'échelle nationale. Le choix a été fait de conserver FHIR R4 car il y a un existant conséquent en France et cela permet d'éviter des transitions entre version qui complexifierait l'écosystème

La version R6 de FHIR se veut être la version finale stable de FHIR. La décision d'une transition vers R6 dépendra du règlement de l'EEDS qui se dessine progressivement et qui pour l'heure semble se diriger vers R4.

Pour anticiper cette transition, il est jugé important d’être proactif sur les travaux internationaux de développement de R6 et d’anticiper les impacts pour l’écosystème français.

#### Ne pas créer de guide d'implémentation (IG) se basant sur une version différente de R4 sans analyse des normes et standards et des impacts

La priorité actuelle est de faire monter l’écosystème en compétences et de gagner en maturité sur les spécifications existantes. Créer des IGs R5 engendreraient une fragmentation de l’écosystème et un ralentissement de la mise en qualité de l’existant qui finirait par freiner l’adoption de FHIR.

Généralement, rajouter quelques [extensions qui miment les attributs R5](https://hl7.org/fhir/R5/versions.html#extensions) s'avère suffisant pour éviter de créer tout un guide en R5. Dans certains cas, une autre version de FHIR peut être justifiée, par exemple si le cas d'usage concerne des échanges internationaux ou si le cas d'usage est significativement mieux couvert par une autre version. Le cas échéant, l’usage d’une autre version devra être validé par une étude des normes et standards publiée et validée par l’écosystème.

Dans certains cas non identifiés à ce jour, il pourrait également être nécessaire de maintenir des guides d’implémentation sous plusieurs versions. Après validation par l’écosystème de ce besoin, cela donnerait l’opportunité d'estimer des travaux de maintenance d’Implementation Guide (IG) sous plusieurs versions ainsi qu’un mapping associé pour gagner en expérience.

#### Priorité FHIR France en 2026+ - accompagner la croissance des usages de FHIR 

Entre 2023 et 2025 des travaux structurants de mise en qualité des spécifications FHIR sous forme de guide d'implémentation ont eu lieu.

En 2026, FHIR change d'échelle avec l'arrivée de l'espace européen des données de santé (EEDS), les travaux d'HL7 Europe, et les groupes de travail français qui portent les standards historiques en FHIR (PN-13, PAM, ...).

Cette multiplication des usages de FHIR ne vient pas sans risques : il faut s'assurer de la cohérence globale de l'écosystème FHIR national.

En parallèle, ces tâches de fond restent valables :

<div>
    <ul>
        <li>La montée en compétences et l’acculturation des développeurs et des chefs de projets aux bonnes pratiques d’usages de FHIR, notamment en organisant des évènements par l'ANS et InteropSanté : projectathon, webinaires, formations, ...</li>
        <li>Amélioration continue des guides d’implémentation existants pour assurer la faisabilité d'implémentation (amélioration du contenu narratif pour expliquer comment utiliser les ressources, s’assurer de la facilité d’accès au contenu, s'assurer que les IGs soient bien connus …).</li>
        <li>Prise en main des outils de mapping tel que le FHIR Mapping Language afin d'assurer une transition maîtrisée entre standards.</li>
    </ul>
</div>

### Gouvernance

Le guide d'implémentation FR Core est géré par HL7 France et IHE France au sein du comité technique FHIR de HL7 France.

### Dépendances

{% include dependency-table.xhtml %}

### Propriété intellectuelle

{% include ip-statements.xhtml %}

### Analyse inter-version

{% include cross-version-analysis.xhtml %}

### Profils internationaux

{% include globals-table.xhtml %}
