<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>
Profils, extensions, jeux de valeurs, et guides de mise en œuvre normalisant l'échange de données administratives sur les patients, les professionnels de santé et les organisations, et les rencontres avec les patients (programmées ou effectives), ainsi que les signes vitaux en France.
</b><br>

Profiles, extensions, value sets, code systems and implementation guides standardizing the exchange of administrative data about patients, health professionals and organization, and patient encounters (scheduled or effective), and vital sign in France

</p>

<blockquote class="stu-note">
<p>
  <b>Attention !</b>
  <br>
 La version de l'Implementation Guide que vous êtes en train de consulter est en intégration continue et n'est pas à utiliser car soumise à des changements réguliers. La version à utiliser est accessible ici : http://hl7.fr/ig/fhir/core.
</p>
</blockquote>

### Introduction

Ce guide de mise en œuvre est fourni pour **soutenir l'utilisation de FHIR® en France**. Il permet de définir les profils, les extensions et les jeux de valeurs normalisant **l'échange de données administratives sur les patients, les professionnels de santé et les organisations, et les rencontres avec les patients (programmées ou effectives), ainsi que les signes vitaux**.

On y retrouve :

* Orientations sur les ressources essentielles profilées pour la France
* Extensions nécessaires à l'utilisation locale en France.

### Champ d'application

Ce document présente les concepts d'utilisation français définis par :

* Profils - contraintes utiles des ressources et types de données FHIR essentiels pour l'utilisation en France.
* Extensions - extensions FHIR ajoutées pour un usage local, couvrant les concepts français nécessaires.
* Terminologies - systèmes de codes et ensembles de valeurs définis ou référencés pour la France.

Les activités de profilage donnent la priorité aux ressources ayant un niveau de maturité suffisant (>=3). Chaque sujet fonctionnel est traité par un groupe de travail dédié d'Interop'Santé, réunissant des éditeurs de logiciels, des professionnels des établissements de santé et des représentants d'agences gouvernementales. Le consensus sur les ressources de conformité FHIR est établi d'abord au niveau du groupe de travail, puis au niveau des membres.

### Choix de la version du standard FHIR

Le Guide d'implémentation FR Core est **basé sur la version Release 4 de HL7 FHIR** et définit l'ensemble minimum de contraintes sur les ressources FHIR pour créer les profils FR Core. Elles font référence à un certain nombre de ressources du standard ainsi qu’aux spécifications de l’API REST FHIR, basées sur le protocole HTTP. Les syntaxes retenues sont la syntaxe XML et JSON.

En établissant la "base" des normes pour promouvoir l'interopérabilité et l'adoption par le biais d'une mise en œuvre commune, il permet une évolution ultérieure de l'élaboration des normes pour des cas d'utilisation spécifiques.

La stratégie sur le choix des versions FHIR a été définie au sein d'un groupe de travail organisé entre Interop'Santé et l'ANS en 2023/2024, validée via une [concertation](https://participez.esante.gouv.fr/project/fhir-r5-ou-r4/presentation/presentation) de l'ANS.

#### Nouveaux cas d’usages FHIR adressés par Interop’Santé et l’ANS : privilégier FHIR R4 et anticiper la transition vers R6

Pour garantir la cohérence au sein de l'écosystème français, éviter tout problème de compatibilité ainsi que les travaux divergents, il est nécessaire d'utiliser une même version du standard FHIR à l'échelle nationale. Le choix a été fait de conserver FHIR R4 car il y a un existant conséquent en France et cela permet d'éviter une double transition R4 vers R5 et R5 vers R6 qui aurait un coût non négligeable. Ce choix est conforté car la release 6 se veut être la version finale stable de FHIR, une transition vers R6 se voudra de toute manière nécessaire. Pour anticiper cette transition, il est jugé important d’être proactif sur les travaux internationaux de développement de R6 et d’anticiper les impacts pour l’écosystème français.
Il est également à noter que le choix national de la version FHIR utilisée devra être en accord avec le règlement de l'EEDS qui se dessine progressivement et qui pour l'heure semble se diriger vers R4.

#### Ne pas créer de guide d'implémentation (IG) se basant sur R5 sans analyse des normes et standards et des impacts

La priorité actuelle est de faire monter l’écosystème en compétences et de gagner en maturité sur les spécifications existantes. Créer des IGs R5 engendreraient une fragmentation de l’écosystème et un ralentissement de la mise en qualité de l’existant qui finirait par freiner l’adoption de FHIR.

Généralement, rajouter quelques [extensions qui miment les attributs R5](https://hl7.org/fhir/R5/versions.html#extensions) s'avère suffisant pour éviter de créer tout un guide en R5. Dans certains cas, une autre version de FHIR peut être justifiée, par exemple si le cas d'usage concerne des échanges internationaux ou si le cas d'usage est significativement mieux couvert par une autre version. Le cas échéant, l’usage d’une autre version devra être validé par une étude des normes et standards publiée et validée par l’écosystème.

Dans certains cas non identifiés à ce jour, il pourrait également être nécessaire de maintenir des guides d’implémentation sous plusieurs versions. Après validation par l’écosystème de ce besoin, cela donnerait l’opportunité d'estimer des travaux de maintenance d’Implementation Guide (IG) sous plusieurs versions ainsi qu’un mapping associé pour gagner en expérience.

#### Priorité FHIR France en 2025+ - améliorer la qualité de l’existant

De nombreux travaux ont été menés en 2023 pour mettre en qualité les spécifications FHIR et encourager leur déploiement, tel que le passage au format IG et la mise à jour des tests et validateurs gazelle.

Les priorités des prochaines années sont de continuer dans cette direction :

<div>
    <ul>
        <li>La montée en compétences et l’acculturation des développeurs et des chefs de projets aux bonnes pratiques d’usages de FHIR, notamment en organisant des évènements par l'ANS et InteropSanté : projectathon, webinaires, formations, ...</li>
        <li>S’assurer de la faisabilité d’implémentation des IGs existants (amélioration du contenu narratif pour expliquer comment utiliser les ressources, s’assurer de la facilité d’accès au contenu, s'assurer que les IGs soient bien connus …).</li>
        <li>Prise en main des outils de mapping tel que le FHIR Mapping Language afin d'assurer une transition maîtrisée vers une autre version de FHIR.</li>
        <li>Anticiper les prochaines évolutions internationales : passage au FHIR Document dans le cadre du règlement européen, anticiper la transition vers FHIR R6, ...</li>
    </ul>
</div>

Il est également nécessaire de rester à l’écoute des tendances internationales en interopérabilité et de se garder la possibilité de réitérer l’analyse si le besoin ou le contexte international évolue, en particulier l'EEDS.

### Gouvernance

Le guide d'implémentation FR Core est géré par HL7 France et IHE France au sein du comité technique FHIR de HL7 France.
### Auteurs et contributeurs

| Role  | Nom           | Organisation |
| --- |---------------|--------------|
| **Auteur**   | Nicolas Riss    | Agence du Numérique en Santé |
| **Auteur**   | Yohann Poiron   | Agence du Numérique en Santé |
| Contributeur | Marie Brulliard | Kereval                      |
| Contributeur | Sylvain Demey   | Agence du Numérique en Santé |
| Contributeur | Isabelle Gibaud | Agence du Numérique en Santé |

## Dépendances

{% include dependency-table.xhtml %}
