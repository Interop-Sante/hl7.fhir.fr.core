# Accueil - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* **Accueil**

## Accueil

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ImplementationGuide/hl7.fhir.fr.core | *Version*:2.2.0-ballot |
| Active as of 2025-12-02 | *Computable Name*:FrCore |

 **Profils, extensions, jeux de valeurs, et guides de mise en œuvre normalisant l'échange de données administratives sur les patients, les professionnels de santé et les organisations, et les rencontres avec les patients (programmées ou effectives), ainsi que les signes vitaux en France.**
 Profiles, extensions, value sets, code systems and implementation guides standardizing the exchange of administrative data about patients, health professionals and organization, and patient encounters (scheduled or effective), and vital sign in France 

> **Attention !**Cette version du guide d'implémentation est en concertation pour validation. La version officielle est accessible à l'adresse http://hl7.fr/ig/fhir/core</b>

Ce guide de mise en œuvre est fourni pour **soutenir l’utilisation de FHIR® en France**. Il permet de définir les profils, les extensions et les jeux de valeurs normalisant **l’échange de données administratives sur les patients, les professionnels de santé et les organisations, et les rencontres avec les patients (programmées ou effectives), ainsi que les signes vitaux**.

Les profils FHIR de ce guide d’implémentation sont volontairement très peu contraignants et ne répondent pas à des cas d’usages spécifiques, l’objectif de ce guide d’implémentation est de proposer un socle commun pour l’ensemble des échanges de données utilisant le standard FHIR en France. Par exemple, ce guide indique comment modéliser un patient FHIR en France (contenant l’identifiant national de santé (INS)), le professionnel de santé (contenant l’identifiant national de professionnel de santé (IDNatPS)), …

Ainsi, on y retrouve :

* Les ressources essentielles profilées pour la France
* Les extensions nécessaires à l’utilisation locale en France.

### Champ d’application

Ce document présente les concepts d’utilisation français définis par :

* Profils - contraintes utiles des ressources et types de données FHIR essentiels pour l’utilisation en France.
* Extensions - extensions FHIR ajoutées pour un usage local, couvrant les concepts français nécessaires.
* Terminologies - systèmes de codes et ensembles de valeurs définis ou référencés pour la France.

Les activités de profilage donnent la priorité aux ressources ayant un niveau de maturité suffisant (>=3). Chaque sujet fonctionnel est traité par un groupe de travail dédié d’Interop’Santé, réunissant des éditeurs de logiciels, des professionnels des établissements de santé et des représentants d’agences gouvernementales. Le consensus sur les ressources de conformité FHIR est établi d’abord au niveau du groupe de travail, puis au niveau des membres.

### Choix de la version du standard FHIR

Le Guide d’implémentation FR Core est **basé sur la version Release 4 de HL7 FHIR** et définit l’ensemble minimum de contraintes sur les ressources FHIR pour créer les profils FR Core. Elles font référence à un certain nombre de ressources du standard ainsi qu’aux spécifications de l’API REST FHIR, basées sur le protocole HTTP. Les syntaxes retenues sont la syntaxe XML et JSON.

En établissant la “base” des normes pour promouvoir l’interopérabilité et l’adoption par le biais d’une mise en œuvre commune, il permet une évolution ultérieure de l’élaboration des normes pour des cas d’utilisation spécifiques.

La stratégie sur le choix des versions FHIR a été définie au sein d’un groupe de travail organisé entre Interop’Santé et l’ANS en 2023/2024, validée via une [concertation](https://participez.esante.gouv.fr/project/fhir-r5-ou-r4/presentation/presentation) de l’ANS.

#### Nouveaux cas d’usages FHIR adressés par Interop’Santé et l’ANS : privilégier FHIR R4 et anticiper la transition vers R6

Pour garantir la cohérence au sein de l’écosystème français, éviter tout problème de compatibilité ainsi que les travaux divergents, il est nécessaire d’utiliser une même version du standard FHIR à l’échelle nationale. Le choix a été fait de conserver FHIR R4 car il y a un existant conséquent en France et cela permet d’éviter une double transition R4 vers R5 et R5 vers R6 qui aurait un coût non négligeable. Ce choix est conforté car la release 6 se veut être la version finale stable de FHIR, une transition vers R6 se voudra de toute manière nécessaire. Pour anticiper cette transition, il est jugé important d’être proactif sur les travaux internationaux de développement de R6 et d’anticiper les impacts pour l’écosystème français. Il est également à noter que le choix national de la version FHIR utilisée devra être en accord avec le règlement de l’EEDS qui se dessine progressivement et qui pour l’heure semble se diriger vers R4.

#### Ne pas créer de guide d’implémentation (IG) se basant sur R5 sans analyse des normes et standards et des impacts

La priorité actuelle est de faire monter l’écosystème en compétences et de gagner en maturité sur les spécifications existantes. Créer des IGs R5 engendreraient une fragmentation de l’écosystème et un ralentissement de la mise en qualité de l’existant qui finirait par freiner l’adoption de FHIR.

Généralement, rajouter quelques [extensions qui miment les attributs R5](https://hl7.org/fhir/R5/versions.html#extensions) s’avère suffisant pour éviter de créer tout un guide en R5. Dans certains cas, une autre version de FHIR peut être justifiée, par exemple si le cas d’usage concerne des échanges internationaux ou si le cas d’usage est significativement mieux couvert par une autre version. Le cas échéant, l’usage d’une autre version devra être validé par une étude des normes et standards publiée et validée par l’écosystème.

Dans certains cas non identifiés à ce jour, il pourrait également être nécessaire de maintenir des guides d’implémentation sous plusieurs versions. Après validation par l’écosystème de ce besoin, cela donnerait l’opportunité d’estimer des travaux de maintenance d’Implementation Guide (IG) sous plusieurs versions ainsi qu’un mapping associé pour gagner en expérience.

#### Priorité FHIR France en 2025+ - améliorer la qualité de l’existant

De nombreux travaux ont été menés en 2023 pour mettre en qualité les spécifications FHIR et encourager leur déploiement, tel que le passage au format IG et la mise à jour des tests et validateurs gazelle.

Les priorités des prochaines années sont de continuer dans cette direction :

* La montée en compétences et l’acculturation des développeurs et des chefs de projets aux bonnes pratiques d’usages de FHIR, notamment en organisant des évènements par l'ANS et InteropSanté : projectathon, webinaires, formations, ...
* S’assurer de la faisabilité d’implémentation des IGs existants (amélioration du contenu narratif pour expliquer comment utiliser les ressources, s’assurer de la facilité d’accès au contenu, s'assurer que les IGs soient bien connus …).
* Prise en main des outils de mapping tel que le FHIR Mapping Language afin d'assurer une transition maîtrisée vers une autre version de FHIR.
* Anticiper les prochaines évolutions internationales : passage au FHIR Document dans le cadre du règlement européen, anticiper la transition vers FHIR R6, ...

Il est également nécessaire de rester à l’écoute des tendances internationales en interopérabilité et de se garder la possibilité de réitérer l’analyse si le besoin ou le contexte international évolue, en particulier l’EEDS.

### Gouvernance

Le guide d’implémentation FR Core est géré par HL7 France et IHE France au sein du comité technique FHIR de HL7 France.

### Auteurs et contributeurs

| | | |
| :--- | :--- | :--- |
| **Auteur** | Nicolas Riss | Agence du Numérique en Santé |
| **Auteur** | Yohann Poiron | Agence du Numérique en Santé |
| Contributeur | Marie Brulliard | Kereval |
| Contributeur | Sylvain Demey | Agence du Numérique en Santé |
| Contributeur | Isabelle Gibaud | Agence du Numérique en Santé |

### Dépendances





### Propriété intellectuelle

Certaines ressources sémantiques de ce guide sont protégées par des droits de propriété intellectuelle couverte par les déclarations ci-dessous. L’utilisation de ces ressources est soumise à l’acceptation et au respect des conditions précisées dans la licence d’utilisation de chacune d’entre elle.

* Copyright HL7. Licensed under creative commons public domain

* [admissionType](http://terminology.hl7.org/5.0.0/CodeSystem-v2-0007.html): [FRCoreEncounterProfile](StructureDefinition-fr-core-encounter.md) and [FRCoreValueSetEncounterType](ValueSet-fr-core-vs-encounter-type.md)
* [contactRole2](http://terminology.hl7.org/5.0.0/CodeSystem-v2-0131.html): [FRCorePatientProfile](StructureDefinition-fr-core-patient.md), [FRCoreRelatedPersonProfile](StructureDefinition-fr-core-related-person.md), [FRCoreValueSetContactRelationship](ValueSet-fr-core-vs-contact-relationship.md) and [FRCoreValueSetPatientContactRole](ValueSet-fr-core-vs-patient-contact-role.md)
* [nameAssemblyOrder](http://terminology.hl7.org/5.0.0/CodeSystem-v2-0444.html): [FRCoreAssemblyOrderExtension](StructureDefinition-fr-core-human-name-assembly-order.md)


* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.5.0/CodeSystem-ISO3166Part1.html): [FRCoreAddressInseeCodeExtension](StructureDefinition-fr-core-address-insee-code.md), [FRCoreAddressProfile](StructureDefinition-fr-core-address.md)...Show 140 more,[FRCoreAppointmentOperatorExtension](StructureDefinition-fr-core-appointment-operator.md),[FRCoreAppointmentProfile](StructureDefinition-fr-core-appointment.md),[FRCoreAssemblyOrderExtension](StructureDefinition-fr-core-human-name-assembly-order.md),[FRCoreCodeSystemChampActivite](CodeSystem-fr-core-cs-champ-activite.md),[FRCoreCodeSystemCirconstancesSortie](CodeSystem-fr-core-cs-circonstances-sortie.md),[FRCoreCodeSystemCodeTarifTNJP](CodeSystem-fr-core-cs-code-tarif-tnjp.md),[FRCoreCodeSystemContactRelationship](CodeSystem-fr-core-cs-contact-relationship.md),[FRCoreCodeSystemDisciplineEquipement](CodeSystem-fr-core-cs-discipline-equipement.md),[FRCoreCodeSystemDisciplinePrestation](CodeSystem-fr-core-cs-discipline-prestation.md),[FRCoreCodeSystemIdentifierType](CodeSystem-fr-core-cs-identifier-type.md),[FRCoreCodeSystemLocationIdentifierType](CodeSystem-fr-core-cs-location-identifier-type.md),[FRCoreCodeSystemLocationPhysicalType](CodeSystem-fr-core-cs-location-physical-type.md),[FRCoreCodeSystemLocationPositionRoom](CodeSystem-fr-core-cs-location-position-room.md),[FRCoreCodeSystemLocationType](CodeSystem-fr-core-cs-location-type.md),[FRCoreCodeSystemMaritalStatus](CodeSystem-fr-core-cs-marital-status.md),[FRCoreCodeSystemMethodCollection](CodeSystem-fr-core-cs-method-collection.md),[FRCoreCodeSystemModeValidationIdentite](CodeSystem-fr-core-cs-mode-validation-identity.md),[FRCoreCodeSystemPositionLit](CodeSystem-fr-core-cs-location-position-lit.md),[FRCoreCodeSystemReliabilityIdentity](CodeSystem-fr-core-cs-fiabilite-identite.md),[FRCoreCodeSystemScheduleType](CodeSystem-fr-core-cs-schedule-type.md),[FRCoreCodeSystemTypeActivite](CodeSystem-fr-core-cs-type-activite.md),[FRCoreCodeSystemTypeAdmission](CodeSystem-fr-core-cs-type-admission.md),[FRCoreCodeSystemTypeChambre](CodeSystem-fr-core-cs-location-type-chambre.md),[FRCoreCodeSystemTypesOrganisations](CodeSystem-fr-core-cs-type-organisation.md),[FRCoreCodeSystemUFIndicateur](CodeSystem-fr-core-cs-uf-indicateur.md),[FRCoreCodeSystemv2_0203](CodeSystem-fr-core-cs-v2-0203.md),[FRCoreCodeSystemv2_0445](CodeSystem-fr-core-cs-v2-0445.md),[FRCoreCodeSystemv2_3307](CodeSystem-fr-core-cs-v2-3307.md),[FRCoreCodeSystemv2_3311](CodeSystem-fr-core-cs-v2-3311.md),[FRCoreCommentExtension](StructureDefinition-fr-core-comment.md),[FRCoreContactPointEmailTypeExtension](StructureDefinition-fr-core-contact-point-email-type.md),[FRCoreContactPointProfile](StructureDefinition-fr-core-contact-point.md),[FRCoreEncounterEstimatedDischargeDateExtension](StructureDefinition-fr-core-estimated-discharge-date.md),[FRCoreEncounterProfile](StructureDefinition-fr-core-encounter.md),[FRCoreHealthcareServiceProfile](StructureDefinition-fr-core-healthcare-service.md),[FRCoreHumanNameProfile](StructureDefinition-fr-core-human-name.md),[FRCoreLocationPositionLitExtension](StructureDefinition-fr-core-location-position-lit.md),[FRCoreLocationProfile](StructureDefinition-fr-core-location.md),[FRCoreLocationTypeChambreExtension](StructureDefinition-fr-core-location-type-chambre.md),[FRCoreLunarDateExtension](StructureDefinition-fr-core-lunar-date.md),[FRCoreMedicationAdministrationInhaledOxygenProfile](StructureDefinition-fr-core-medication-administration-inhaled-oxygen.md),[FRCoreNationalityExtension](StructureDefinition-fr-core-patient-nationality.md),[FRCoreObservationBmiProfile](StructureDefinition-fr-core-observation-bmi.md),[FRCoreObservationBodyHeightProfile](StructureDefinition-fr-core-observation-body-height.md),[FRCoreObservationBodyPositionExtExtension](StructureDefinition-fr-core-observation-body-position-ext.md),[FRCoreObservationBodyTemperatureProfile](StructureDefinition-fr-core-observation-body-temperature.md),[FRCoreObservationBodyWeightProfile](StructureDefinition-fr-core-observation-body-weight.md),[FRCoreObservationBpProfile](StructureDefinition-fr-core-observation-bp.md),[FRCoreObservationHeadCircumProfile](StructureDefinition-fr-core-observation-head-circum.md),[FRCoreObservationHeartRateProfile](StructureDefinition-fr-core-observation-heartrate.md),[FRCoreObservationHeightBodyPositionExtension](StructureDefinition-fr-core-observation-height-body-position.md),[FRCoreObservationLevelOfExertionExtension](StructureDefinition-fr-core-observation-level-of-exertion.md),[FRCoreObservationOxygenSaturationProfile](StructureDefinition-fr-core-observation-saturation-oxygen.md),[FRCoreObservationRespRateProfile](StructureDefinition-fr-core-observation-resp-rate.md),[FRCoreOrganizationChampActiviteExtension](StructureDefinition-fr-core-organization-champ-activite.md),[FRCoreOrganizationDemandeuseActeExtension](StructureDefinition-fr-core-organization-demandeuse-acte.md),[FRCoreOrganizationDisciplineEquipementExtension](StructureDefinition-fr-core-organization-discipline-equipement.md),[FRCoreOrganizationDisciplinePrestationExtension](StructureDefinition-fr-core-organization-discipline-prestation.md),[FRCoreOrganizationEtablissementProfile](StructureDefinition-fr-core-organization-etablissement.md),[FRCoreOrganizationExecutanteActeExtension](StructureDefinition-fr-core-organization-executante-acte.md),[FRCoreOrganizationMemberExtension](StructureDefinition-fr-core-organization-member.md),[FRCoreOrganizationPlaceHebergementTheoriqueExtension](StructureDefinition-fr-core-organization-place-hebergement-theorique.md),[FRCoreOrganizationProfile](StructureDefinition-fr-core-organization.md),[FRCoreOrganizationRaisonSocialeExtension](StructureDefinition-fr-core-organization-raison-sociale.md),[FRCoreOrganizationSAECategoryExtension](StructureDefinition-fr-core-organization-sae-category.md),[FRCoreOrganizationShortNameExtension](StructureDefinition-fr-core-organization-short-name.md),[FRCoreOrganizationTarifExtension](StructureDefinition-fr-core-organization-tarif.md),[FRCoreOrganizationTypeActiviteExtension](StructureDefinition-fr-core-organization-type-activite.md),[FRCoreOrganizationUACProfile](StructureDefinition-fr-core-organization-uac.md),[FRCoreOrganizationUFExterneExtension](StructureDefinition-fr-core-organization-uf-externe.md),[FRCoreOrganizationUFIndicateurExtension](StructureDefinition-fr-core-organization-uf-indicateur.md),[FRCoreOrganizationUFProfile](StructureDefinition-fr-core-organization-uf.md),[FRCorePatientBirthDateUpdateIndicatorExtension](StructureDefinition-fr-core-patient-birthdate-update-indicator.md),[FRCorePatientBirthListGivenName](StructureDefinition-fr-core-patient-birth-list-given-name.md),[FRCorePatientContactIdentifierExtension](StructureDefinition-fr-core-patient-contact-identifier.md),[FRCorePatientDeathPlaceExtension](StructureDefinition-fr-core-patient-death-place.md),[FRCorePatientINSProfile](StructureDefinition-fr-core-patient-ins.md),[FRCorePatientIdentityReliabilityExtension](StructureDefinition-fr-core-identity-reliability.md),[FRCorePatientMultipleBirthExtension](StructureDefinition-fr-core-patient-multiple-birth-r5.md),[FRCorePatientProfile](StructureDefinition-fr-core-patient.md),[FRCorePractitionerProfile](StructureDefinition-fr-core-practitioner.md),[FRCorePractitionerRoleProfile](StructureDefinition-fr-core-practitioner-role.md),[FRCorePractitionerSpecialtyExtension](StructureDefinition-fr-core-practitioner-specialty.md),[FRCoreRelatedPersonProfile](StructureDefinition-fr-core-related-person.md),[FRCoreScheduleAvailabilityTimeExtension](StructureDefinition-fr-core-schedule-availability-time.md),[FRCoreScheduleProfile](StructureDefinition-fr-core-schedule.md),[FRCoreServiceTypeDurationExtension](StructureDefinition-fr-core-service-type-duration.md),[FRCoreSlotProfile](StructureDefinition-fr-core-slot.md),[FRCoreValueSetAvailabilityTimeRule](ValueSet-fr-core-vs-availability-time-rule.md),[FRCoreValueSetBPMeasurementMethod](ValueSet-fr-core-vs-bp-method.md),[FRCoreValueSetBloodPressureMeasurementBodyLocation](ValueSet-fr-core-vs-bp-meas-body-location.md),[FRCoreValueSetBloodPressureMeasurementMethod](ValueSet-fr-core-vs-bp-meas-method.md),[FRCoreValueSetBodyPosition](ValueSet-fr-core-vs-body-position.md),[FRCoreValueSetBodyTemperatureMeasurementBodyLocation](ValueSet-fr-core-vsbody-temp-meas-body-location.md),[FRCoreValueSetCOGCommunePays](ValueSet-fr-core-vs-cog-commune-pays.md),[FRCoreValueSetCategorieSAEEtablissement](ValueSet-fr-core-vs-categorie-sae-etablissement.md),[FRCoreValueSetContactRelationship](ValueSet-fr-core-vs-contact-relationship.md),[FRCoreValueSetDisciplinePrestation](ValueSet-fr-core-vs-discipline-prestation.md),[FRCoreValueSetEmailType](ValueSet-fr-core-vs-email-type.md),[FRCoreValueSetEncounterClass](ValueSet-fr-core-vs-encounter-class.md),[FRCoreValueSetEncounterDischargeDisposition](ValueSet-fr-core-vs-encounter-discharge-disposition.md),[FRCoreValueSetEncounterIdentifierType](ValueSet-fr-core-vs-encounter-identifier-type.md),[FRCoreValueSetEncounterType](ValueSet-fr-core-vs-encounter-type.md),[FRCoreValueSetHeartRateMeasurementBodyLocation](ValueSet-fr-core-vs-heartrate-body-location.md),[FRCoreValueSetHeartRateMeasurementMethod](ValueSet-fr-core-vs-heartrate-measurement-method.md),[FRCoreValueSetHeightBodyPosition](ValueSet-fr-core-vs-height-body-position.md),[FRCoreValueSetHeightMeasurementMethod](ValueSet-fr-core-vs-height-meas-method.md),[FRCoreValueSetINSEECode](ValueSet-fr-core-vs-insee-code.md),[FRCoreValueSetIdentityMethodCollection](ValueSet-fr-core-vs-identity-method-collection.md),[FRCoreValueSetIdentityReliabilityStatus](ValueSet-fr-core-vs-identity-reliability.md),[FRCoreValueSetLocationPositionLit](ValueSet-fr-core-vs-location-position-lit.md),[FRCoreValueSetLocationType](ValueSet-fr-core-vs-location-type.md),[FRCoreValueSetLocationTypeChambre](ValueSet-fr-core-vs-location-type-chambre.md),[FRCoreValueSetMaritalStatus](ValueSet-fr-core-vs-marital-status.md),[FRCoreValueSetModeValidationIdentity](ValueSet-fr-core-vs-mode-validation-identity.md),[FRCoreValueSetModeValidationIdentityINS](ValueSet-fr-core-vs-mode-validation-identity-ins.md),[FRCoreValueSetOrganizationChampActivite](ValueSet-fr-core-vs-organization-champ-activite.md),[FRCoreValueSetOrganizationCodeTarifTNJP](ValueSet-fr-core-vs-oragnization-code-tarif-tnjp.md),[FRCoreValueSetOrganizationDisciplineEquipement](ValueSet-fr-core-vs-organization-discipline-equipement.md),[FRCoreValueSetOrganizationEtablissementType](ValueSet-fr-core-vs-organization-etablissement-type.md),[FRCoreValueSetOrganizationIdentifierType](ValueSet-fr-core-vs-organization-identifier-type.md),[FRCoreValueSetOrganizationType](ValueSet-fr-core-vs-organization-type.md),[FRCoreValueSetOrganizationTypeActivite](ValueSet-fr-core-vs-oragnization-type-activite.md),[FRCoreValueSetOrganizationUACType](ValueSet-fr-core-vs-organization-uac-type.md),[FRCoreValueSetOrganizationUFIndicateur](ValueSet-fr-core-vs-organization-uf-indicateur.md),[FRCoreValueSetPatientContactRole](ValueSet-fr-core-vs-patient-contact-role.md),[FRCoreValueSetPatientGender](ValueSet-fr-core-vs-patient-gender.md),[FRCoreValueSetPatientIdentifierType](ValueSet-fr-core-vs-patient-identifier-type.md),[FRCoreValueSetPatientIdentifierUseINS](ValueSet-fr-core-vs-patient-identifier-use-ins.md),[FRCoreValueSetPatientIdentifierUsePI](ValueSet-fr-core-vs-patient-identifier-use-pi.md),[FRCoreValueSetPatientRelationType](ValueSet-fr-core-vs-relation-type.md),[FRCoreValueSetPractitionerIdentifierType](ValueSet-fr-core-vs-practitioner-identifier-type.md),[FRCoreValueSetPractitionerRoleExercice](ValueSet-fr-core-vs-practitioner-role-exercice.md),[FRCoreValueSetPractitionerSpecialty](ValueSet-fr-core-vs-practitioner-specialty.md),[FRCoreValueSetRespiratoryRateMeasurementMethod](ValueSet-fr-core-vs-respiratory-rate-meas-method.md),[FRCoreValueSetSPO2BodyLocation](ValueSet-fr-core-vs-spo2-body-location.md),[FRCoreValueSetScheduleType](ValueSet-fr-core-vs-schedule-type.md),[FRCoreValueSetTitle](ValueSet-fr-core-vs-title.md),[FRCoreValueSetUnavailabilityReason](ValueSet-fr-core-vs-schedule-unavailability-reason.md)and[FrCore](index.md)


* The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved. [https://ucum.org/trac/wiki/TermsOfUse](https://ucum.org/trac/wiki/TermsOfUse)

* [Unified Code for Units of Measure (UCUM)](http://terminology.hl7.org/6.5.0/CodeSystem-v3-ucum.html): [Observation/FRCoreObservationBMIExample](Observation-FRCoreObservationBMIExample.md), [Observation/FRCoreObservationBPExample](Observation-FRCoreObservationBPExample.md)...Show 5 more,[Observation/FRCoreObservationBodyHeightExample](Observation-FRCoreObservationBodyHeightExample.md),[Observation/FRCoreObservationBodyTemperatureExample](Observation-FRCoreObservationBodyTemperatureExample.md),[Observation/FRCoreObservationBodyWeightExample](Observation-FRCoreObservationBodyWeightExample.md),[Observation/FRCoreObservationHeadCircumExample](Observation-FRCoreObservationHeadCircumExample.md)and[Observation/FRCoreObservationHeartRateExample](Observation-FRCoreObservationHeartRateExample.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.5.0/CodeSystem-v3-loinc.html): [Observation/FRCoreObservationBMIExample](Observation-FRCoreObservationBMIExample.md), [Observation/FRCoreObservationBPExample](Observation-FRCoreObservationBPExample.md)...Show 5 more,[Observation/FRCoreObservationBodyHeightExample](Observation-FRCoreObservationBodyHeightExample.md),[Observation/FRCoreObservationBodyTemperatureExample](Observation-FRCoreObservationBodyTemperatureExample.md),[Observation/FRCoreObservationBodyWeightExample](Observation-FRCoreObservationBodyWeightExample.md),[Observation/FRCoreObservationHeadCircumExample](Observation-FRCoreObservationHeadCircumExample.md)and[Observation/FRCoreObservationHeartRateExample](Observation-FRCoreObservationHeartRateExample.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-900000000000207008-20251001.html): [FRCoreObservationBodyHeightProfile](StructureDefinition-fr-core-observation-body-height.md), [FRCoreObservationBodyPositionExtExtension](StructureDefinition-fr-core-observation-body-position-ext.md)...Show 18 more,[FRCoreObservationBodyTemperatureProfile](StructureDefinition-fr-core-observation-body-temperature.md),[FRCoreObservationBpProfile](StructureDefinition-fr-core-observation-bp.md),[FRCoreObservationHeartRateProfile](StructureDefinition-fr-core-observation-heartrate.md),[FRCoreObservationHeightBodyPositionExtension](StructureDefinition-fr-core-observation-height-body-position.md),[FRCoreObservationOxygenSaturationProfile](StructureDefinition-fr-core-observation-saturation-oxygen.md),[FRCoreObservationRespRateProfile](StructureDefinition-fr-core-observation-resp-rate.md),[FRCoreValueSetBPMeasurementMethod](ValueSet-fr-core-vs-bp-method.md),[FRCoreValueSetBloodPressureMeasurementBodyLocation](ValueSet-fr-core-vs-bp-meas-body-location.md),[FRCoreValueSetBloodPressureMeasurementMethod](ValueSet-fr-core-vs-bp-meas-method.md),[FRCoreValueSetBodyPosition](ValueSet-fr-core-vs-body-position.md),[FRCoreValueSetBodyTemperatureMeasurementBodyLocation](ValueSet-fr-core-vsbody-temp-meas-body-location.md),[FRCoreValueSetHeartRateMeasurementBodyLocation](ValueSet-fr-core-vs-heartrate-body-location.md),[FRCoreValueSetHeartRateMeasurementMethod](ValueSet-fr-core-vs-heartrate-measurement-method.md),[FRCoreValueSetHeightBodyPosition](ValueSet-fr-core-vs-height-body-position.md),[FRCoreValueSetHeightMeasurementMethod](ValueSet-fr-core-vs-height-meas-method.md),[FRCoreValueSetRespiratoryRateMeasurementMethod](ValueSet-fr-core-vs-respiratory-rate-meas-method.md),[FRCoreValueSetSPO2BodyLocation](ValueSet-fr-core-vs-spo2-body-location.md)and[Observation/FRCoreObservationBPExample](Observation-FRCoreObservationBPExample.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [Discharge disposition](http://terminology.hl7.org/7.0.0/CodeSystem-discharge-disposition.html): [FRCoreEncounterProfile](StructureDefinition-fr-core-encounter.md) and [FRCoreValueSetEncounterDischargeDisposition](ValueSet-fr-core-vs-encounter-discharge-disposition.md)
* [HL7 Terminology Maintenance Infrastructure Vocabulary](http://terminology.hl7.org/7.0.0/CodeSystem-hl7TermMaintInfra.html): [FRCoreCodeSystemModeValidationIdentite](CodeSystem-fr-core-cs-mode-validation-identity.md)
* [HumanNameAssemblyOrder](http://terminology.hl7.org/7.0.0/CodeSystem-name-assembly-order.html): [FRCoreAssemblyOrderExtension](StructureDefinition-fr-core-human-name-assembly-order.md)
* [Observation Category Codes](http://terminology.hl7.org/7.0.0/CodeSystem-observation-category.html): [Observation/FRCoreObservationBMIExample](Observation-FRCoreObservationBMIExample.md), [Observation/FRCoreObservationBPExample](Observation-FRCoreObservationBPExample.md)...Show 5 more,[Observation/FRCoreObservationBodyHeightExample](Observation-FRCoreObservationBodyHeightExample.md),[Observation/FRCoreObservationBodyTemperatureExample](Observation-FRCoreObservationBodyTemperatureExample.md),[Observation/FRCoreObservationBodyWeightExample](Observation-FRCoreObservationBodyWeightExample.md),[Observation/FRCoreObservationHeadCircumExample](Observation-FRCoreObservationHeadCircumExample.md)and[Observation/FRCoreObservationHeartRateExample](Observation-FRCoreObservationHeartRateExample.md)
* [Service category](http://terminology.hl7.org/7.0.0/CodeSystem-service-category.html): [Service de cardiologie](HealthcareService-svc-cardiologie-1.md)
* [Service type](http://terminology.hl7.org/7.0.0/CodeSystem-service-type.html): [Appointment/FRCoreAppointmentExample](Appointment-FRCoreAppointmentExample.md), [FRCoreServiceTypeDurationExtension](StructureDefinition-fr-core-service-type-duration.md), [Schedule/FRCoreScheduleExample](Schedule-FRCoreScheduleExample.md) and [Slot/FRCoreSlotExample](Slot-FRCoreSlotExample.md)
* [identifierType](http://terminology.hl7.org/7.0.0/CodeSystem-v2-0203.html): [FRCorePatientINSProfile](StructureDefinition-fr-core-patient-ins.md), [FRCorePatientProfile](StructureDefinition-fr-core-patient.md), [FRCorePractitionerProfile](StructureDefinition-fr-core-practitioner.md), [FRCoreValueSetPatientIdentifierType](ValueSet-fr-core-vs-patient-identifier-type.md) and [FRCoreValueSetPractitionerIdentifierType](ValueSet-fr-core-vs-practitioner-identifier-type.md)
* [ActCode](http://terminology.hl7.org/7.0.0/CodeSystem-v3-ActCode.html): [Encounter/FRCoreEncounterExample](Encounter-FRCoreEncounterExample.md) and [FRCoreValueSetEncounterClass](ValueSet-fr-core-vs-encounter-class.md)
* [MaritalStatus](http://terminology.hl7.org/7.0.0/CodeSystem-v3-MaritalStatus.html): [FRCorePatientProfile](StructureDefinition-fr-core-patient.md) and [FRCoreValueSetMaritalStatus](ValueSet-fr-core-vs-marital-status.md)
* [NullFlavor](http://terminology.hl7.org/7.0.0/CodeSystem-v3-NullFlavor.html): [FRCoreAssemblyOrderExtension](StructureDefinition-fr-core-human-name-assembly-order.md), [FRCorePatientProfile](StructureDefinition-fr-core-patient.md) and [FRCoreValueSetMaritalStatus](ValueSet-fr-core-vs-marital-status.md)
* [ObservationInterpretation](http://terminology.hl7.org/7.0.0/CodeSystem-v3-ObservationInterpretation.html): [Observation/FRCoreObservationBMIExample](Observation-FRCoreObservationBMIExample.md) and [Observation/FRCoreObservationBPExample](Observation-FRCoreObservationBPExample.md)


### Analyse inter-version

Ceci est un IG R4. Aucune des fonctionnalités quil utilise nest modifiée dans R4B, il peut donc être utilisé tel quel avec les systèmes R4B. Les packages pour [R4 (hl7.fhir.fr.core.r4)](package.r4.tgz) et [R4B (hl7.fhir.fr.core.r4b)](package.r4b.tgz) sont disponibles.

### Profils internationaux

*There are no Global profiles defined*



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.fhir.fr.core",
  "url" : "https://hl7.fr/ig/fhir/core/ImplementationGuide/hl7.fhir.fr.core",
  "version" : "2.2.0-ballot",
  "name" : "FrCore",
  "title" : "Guide d'implémentation Fr Core",
  "status" : "active",
  "date" : "2025-12-02T21:43:16+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [
    {
      "name" : "Interop'Santé",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://interopsante.org/"
        }
      ]
    },
    {
      "name" : "InteropSanté",
      "telecom" : [
        {
          "system" : "email",
          "value" : "fhir@interopsante.org",
          "use" : "work"
        }
      ]
    }
  ],
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "France"
        }
      ]
    }
  ],
  "packageId" : "hl7.fhir.fr.core",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [
    {
      "id" : "hl7tx",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
        }
      ],
      "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
      "packageId" : "hl7.terminology.r4",
      "version" : "7.0.0"
    },
    {
      "id" : "hl7ext",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
        }
      ],
      "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
      "packageId" : "hl7.fhir.uv.extensions.r4",
      "version" : "5.2.0"
    },
    {
      "id" : "ans_fr_terminologies",
      "uri" : "https://interop.esante.gouv.fr/terminologies/ImplementationGuide/ans.fr.terminologies",
      "packageId" : "ans.fr.terminologies",
      "version" : "1.4.0"
    }
  ],
  "definition" : {
    "extension" : [
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2023+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "ballot"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "shownav"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-expansion-params"
          },
          {
            "url" : "value",
            "valueString" : "../../expansion-params.json"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "pin-canonicals"
          },
          {
            "url" : "value",
            "valueString" : "pin-multiples"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "https://hl7.fr/ig/fhir/core/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/expansion-parameters",
        "valueReference" : {
          "reference" : "Parameters/expansion-parameters"
        }
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
        "valueCode" : "hl7.fhir.uv.tools.r4#0.8.0"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2023+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "ballot"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "shownav"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-expansion-params"
          },
          {
            "url" : "value",
            "valueString" : "../../expansion-params.json"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "pin-canonicals"
          },
          {
            "url" : "value",
            "valueString" : "pin-multiples"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "https://hl7.fr/ig/fhir/core/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      }
    ],
    "resource" : [
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-bp-meas-body-location"
        },
        "name" : "Blood Pressure Measurement Body Location Precoordinated value set",
        "description" : "SELECT SNOMED CT code system values that describe the location on the body where the blood pressure was measured.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-bp-meas-method"
        },
        "name" : "Blood Pressure Measurement Method value set",
        "description" : "SELECT SNOMED CT code system values that describe how a blood pressure was measured.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-body-position"
        },
        "name" : "Body Position value set",
        "description" : "SELECT SNOMED CT code system values the position in which the individual was in during a measurement.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vsbody-temp-meas-body-location"
        },
        "name" : "Body Temperature Measurement Body Location value set",
        "description" : "SELECT SNOMED CT code system values that describe where on the body the temperature was measured.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-address-insee-code"
        },
        "name" : "FR Core Address Insee Code Extension",
        "description" : "Extension d'ajout du code insee (5 chiffres) à l'adresse postale.\r\nThis extension adds the insee code (5 digits) to the address",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:complex-type"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-address"
        },
        "name" : "FR Core Address Profile",
        "description" : "Profil du type de données Address pour la France, ce profil ajoute le code insee à l'adresse. Une cohérence entre code commune (COG), code postal et nom de commune doit être assurée.\r\nFrench profile of Address datatype",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-appointment-operator"
        },
        "name" : "FR Core Appointment Operator Extension",
        "description" : "Cette extension ajoute l'élément appointmentOperator à la ressource Appointment (opérateur de création/modification/annulation du RDV). \r\nThis extension adds the element appointmentOperator to the Appointment resource (operator of creation/update/cancel of the appointment",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-appointment"
        },
        "name" : "FR Core Appointment Profile",
        "description" : "Profile of the Appointment resource for France. This profile adds the operator who created/updated/canceled the appointment. It also allows to possibly reference an appointment canceled and a document associated with the appointment.\r\n\nProfil de la ressource Appointment pour la France. Ce profil ajoute l'opérateur qui a créé/modifié/annulé le RDV. Il permet également de référencer éventuellement un RDV annulé et/ou un document lié au RDV.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-human-name-assembly-order"
        },
        "name" : "FR Core Assembly Order Extension",
        "description" : "A code that represents the preferred display order of the components of this human name.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-champ-activite"
        },
        "name" : "FR Core CodeSystem Champ Activite - Codes du champ d'activité",
        "description" : "Champ d'activité clinique de l'organisation type UF, tel que cité dans les fiches pratiques de comptabilité analytique hospitalière, de la DGOS.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-circonstances-sortie"
        },
        "name" : "FR Core CodeSystem Circonstances Sortie",
        "description" : "Discharge Disposition",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-code-tarif-tnjp"
        },
        "name" : "FR Core CodeSystem Codes Tarifs - nomenclature TNJP",
        "description" : "La nomenclature des codes Tarif - Tarifs Nationaux Journaliers des Prestations",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-contact-relationship"
        },
        "name" : "FR Core CodeSystem Contact Relationship",
        "description" : "Relationship type",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-discipline-equipement"
        },
        "name" : "FR Core CodeSystem Discipline d'Equipement - nomenclature SAE",
        "description" : "La nomenclature de disciplines d'équipement est utilisée pour ventiler l'activité et le personnel entre les différentes disciplines de la section hôpital (MCO, PSY, HAD, SMR et SLD) et la discipline 'administration, services hôteliers et techniques'. La nomenclature des disciplines d’équipement s’applique aux unités fonctionnelles et aux sections issues du fichier de structure des établissements. Les disciplines sociales, médico-sociales et de formation n'apparaissent pas, car elles ne font pas partie du champ de la SAE.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-discipline-prestation"
        },
        "name" : "FR Core CodeSystem Discipline de prestation - nomenclature SAE",
        "description" : "La nomenclature des discipline de prestation.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-fiabilite-identite"
        },
        "name" : "FR Core CodeSystem Fiabilité Identité",
        "description" : "French Identity reliabilty codes",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-identifier-type"
        },
        "name" : "FR Core CodeSystem Identifier Type",
        "description" : "Identifier type",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-location-identifier-type"
        },
        "name" : "FR Core CodeSystem Location Identifier Type",
        "description" : "Location identifier type",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-location-physical-type"
        },
        "name" : "FR Core CodeSystem Location Physical Type",
        "description" : "Location physical type",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-location-position-room"
        },
        "name" : "FR Core CodeSystem Location Position Room",
        "description" : "Location position room",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-location-type"
        },
        "name" : "FR Core CodeSystem Location Type",
        "description" : "Location type",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-marital-status"
        },
        "name" : "FR Core CodeSystem Marital Status",
        "description" : "Marital status",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-method-collection"
        },
        "name" : "FR Core CodeSystem Mode Validation Identite",
        "description" : "Méthode de collection de l'identité",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-mode-validation-identity"
        },
        "name" : "FR Core CodeSystem Mode Validation Identite",
        "description" : "Mode de validation de l'identité",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-type-organisation"
        },
        "name" : "FR Core CodeSystem Organization Type",
        "description" : "Organization type",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-location-position-lit"
        },
        "name" : "FR Core CodeSystem Position du lit",
        "description" : "Position du lit dans la chambre",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-schedule-type"
        },
        "name" : "FR Core CodeSystem Schedule Type",
        "description" : "Schedule type",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-type-admission"
        },
        "name" : "FR Core CodeSystem Type Admission",
        "description" : "Admission type",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-location-type-chambre"
        },
        "name" : "FR Core CodeSystem Type Chambre",
        "description" : "Type de chambre",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-type-activite"
        },
        "name" : "FR Core CodeSystem Type d'activité - nomenclature SAE",
        "description" : "La nomenclature des types d'activité de la terminologie SAE (Statistique Annuelle des Etablissements de santé) maintenue par la DREES.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-uf-indicateur"
        },
        "name" : "FR Core CodeSystem UF Indicator - indicateur d'une unité fonctionnelle",
        "description" : "Système de codage permettant de définir les indicateurs d'une unité fonctionnelle.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-v2-0203"
        },
        "name" : "FR Core CodeSystem v2-0203",
        "description" : "HL7 v2 - Identifier type",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-v2-0445"
        },
        "name" : "FR Core CodeSystem v2-0445",
        "description" : "HL7 v2 - Table 0445",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-v2-3307"
        },
        "name" : "FR Core CodeSystem v2-3307",
        "description" : "HL7 v2 - Table 3307",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-v2-3311"
        },
        "name" : "FR Core CodeSystem v2-3311",
        "description" : "HL7 v2 - Table 3311",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-comment"
        },
        "name" : "FR Core Comment Extension",
        "description" : "Ajout d'un commentaire sur un dataElement d'une ressource.\r\nAdd a comment on a dataElement  of a resource",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-contact-point-email-type"
        },
        "name" : "FR Core Contact Point Email Type Extension",
        "description" : "Extension permettant d'indiquer le type d'adresse email d'un ContactPoint.\n\r This extension allows to specify the type of mail used to contact the person.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:complex-type"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-contact-point"
        },
        "name" : "FR Core Contact Point Profile",
        "description" : "Profil du type de données ContactPoint pour la France, ce profil ajoute le type d'e-mail tel que la bal mss.\r\nFrench profile of ContactPoint datatype",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-estimated-discharge-date"
        },
        "name" : "FR Core Encounter Estimated Discharge Date Extension",
        "description" : "This extension is used to specify the estimated discharge date of the patient",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-encounter"
        },
        "name" : "FR Core Encounter Profile",
        "description" : "This profil constrains the Encounter resource to represent either the patient visit or admission or the various movements that compose the patient stay.\r\n\nCe profil de la ressource Encounter sert à la fois à définir la venue dans l'établissement et à représenter les mouvements du patient qui découpent cette venue.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-healthcare-service"
        },
        "name" : "FR Core Healthcare Service Profile",
        "description" : "Profile of the HealthcareService resource for France. This profile adds the element serviceTypeDuration to associate the service with the duration of this service. This profile needs to be revised, in particular to ensure consistency with the ROR project (https://interop.esante.gouv.fr/ig/fhir/ror).\r\n\nProfil de la ressource HealthcareService pour l'usage en France. Ce profil ajoute l'élément serviceTypeDuration de façon à associer le service avec la durée du service. Ce profil doit être retravaillé, pour être notamment mis en cohérence avec le projet ROR (https://interop.esante.gouv.fr/ig/fhir/ror).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:complex-type"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-human-name"
        },
        "name" : "FR Core Human Name Profile",
        "description" : "Profilage du type de données HumanName pour prise en compte de la civilté au niveau de l'élément prefix et du titre au niveau de l'élément suffix\r\n.French profile of datatype HumanName with constraints on prefix and suffix",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-location-position-lit"
        },
        "name" : "FR Core Location Extension - Position du lit",
        "description" : "Position du lit dans la chambre",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-location-type-chambre"
        },
        "name" : "FR Core Location Extension - Type de chambre",
        "description" : "Type de chambre",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-location"
        },
        "name" : "FR Core Location Profile",
        "description" : "Ressource Location adaptée au contexte français. \nCette ressource est utilisée pour représenter un lieu physique, telle qu'une salle d'examen, \nun lit d'hôpital ou une chambre d'hôpital.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-lunar-date"
        },
        "name" : "FR Core Lunar Date Extension",
        "description" : "Date de naissance approximative du patient.\r\nApproximate birthdate of the patient",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-medication-administration-inhaled-oxygen"
        },
        "name" : "FR Core Medication Administration Inhaled Oxygen Profile",
        "description" : "Profile based on the MedicationAdministration resource to indicate inhaled oxygen. This profile makes it possible to complement the information from the Oxygen Saturation Observation resource with oxygen intake provided through mechanical ventilation.\r\n\nProfil se basant sur la ressource Medication Administration pour indiquer l'oxygène inhalé. Ce profil permet de compléter les informations de la ressource Observation saturation en oxygène avec les apports d'oxygène via une ventilation mécanique.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-patient-nationality"
        },
        "name" : "FR Core Nationality Extension",
        "description" : "The nationality of the patient.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-observation-bp"
        },
        "name" : "FR Core Observation Blood Pressure Profile",
        "description" : "French profile for blood pressure.\r\n\nProfil français de la pression artérielle. Profil basé sur le profil bp d'HL7",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-observation-bmi"
        },
        "name" : "FR Core Observation Bmi Profile",
        "description" : "French profile based on HL7 Vital Sign Body mass index (BMI) [Ratio].\r\n\nProfil français de l'indice de masse corporelle basé sur le profil HL7 Vital Sign BMI",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-observation-body-height"
        },
        "name" : "FR Core Observation Body Height Profile",
        "description" : "French profile for body height.\r\n\nProfil français de la mesure de la taille. Profil basé sur le profil bodyheight d'HL7",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-observation-body-position-ext"
        },
        "name" : "FR Core Observation Body Position Ext Extension",
        "description" : "Extension CIMI (upgardée en FHIR R4) définie dans le contexte du profil Respiratory rate. Cette extension permet de préciser la position du corps lors de la mesure de la fréquence respiratoire.\r\nCIMI extension (in FHIR R4) defined in the context of the Respiratory Rate profile. This extension is used to specify the body position during the respiratory rate observation",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-observation-body-temperature"
        },
        "name" : "FR Core Observation Body Temperature Profile",
        "description" : "French profile for body temperature.\r\n\nProfil français de la mesure de la température. Profil basé sur le profil Vital Sign BodyTemperature d'HL7",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-observation-body-weight"
        },
        "name" : "FR Core Observation Body Weight Profile",
        "description" : "French profile of body weight based on the FHIR profil BodyWeightMeas.\r\n\nProfil français Body weight basé sur le profil HL7 BodyWeightMeas de Vital Signs.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-observation-head-circum"
        },
        "name" : "FR Core Observation Head Circum Profile",
        "description" : "French profile for Occipital-frontal circumference.\r\n\nProfil HL7 Vital Signs Circonférence de la tête",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-observation-heartrate"
        },
        "name" : "FR Core Observation Heart Rate Profile",
        "description" : "French profile for the FHIR Vital Sign Heart Rate Profile.\r\n\nProfilage français du profil Vital Signs Heart rate",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-observation-height-body-position"
        },
        "name" : "FR Core Observation Height Body Position Extension",
        "description" : "Extension utilisée par le profil FrObservationBodyHeight permettant de préciser la position du corps durant la mesure de la taille (le jeu de valeur associé est limité aux 2 valeurs lying et standing).\r\nExtension on the FrObservationBodyHeight to specify the position of the body during the measure of the height.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-observation-level-of-exertion"
        },
        "name" : "FR Core Observation Level Of Exertion Extension",
        "description" : "Extension française définie dans le contexte du profil Vital Signs Resprate. Cette extension permet de préciser le niveau d'exercice du patient durant la mesure de la fréquence respiratoire (au repos, pendant l'effort, après l'effort).\r\nFrench extension defined in the context of the Vital Signs Resprate profile. This extension is used to define the level of exertion ( at rest, during exertion, post exertion) during the respiratory rate measure",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-observation-saturation-oxygen"
        },
        "name" : "FR Core Observation Oxygen Saturation Profile",
        "description" : "French profile for Oxygen saturation in Arterial blood.\r\n\nProfil de la saturation en oxygène du sang artériel.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-observation-resp-rate"
        },
        "name" : "FR Core Observation Respiratory Rate Profile",
        "description" : "French profile for the ObservationResprate profile for France.\r\n\nProfil de la fréquence resporatoire pour l'usage en France",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-etablissement"
        },
        "name" : "FR Core Organization Etablissement Profile",
        "description" : "Profil de la ressource Organization permettant de représenter des établissements sanitaires et sociaux.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-sae-category"
        },
        "name" : "FR Core Organization Extension - Catetgorie SAE",
        "description" : "Categorie d'établissement de santé, suivant les valeurs de la SAE (Structure d'Activité d'Etablissement)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-champ-activite"
        },
        "name" : "FR Core Organization Extension - Champ d'activité",
        "description" : "Champ d'activité d'une UF",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-demandeuse-acte"
        },
        "name" : "FR Core Organization Extension - Demandeuse d'acte",
        "description" : "Indicateur permettant de définir si une UF peut demander des actes",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-discipline-equipement"
        },
        "name" : "FR Core Organization Extension - Discipline d'équipement",
        "description" : "Discipline d'équipement",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-discipline-prestation"
        },
        "name" : "FR Core Organization Extension - Discipline Prestation",
        "description" : "Discipline de prestation d'une UAC",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-executante-acte"
        },
        "name" : "FR Core Organization Extension - Exécutante d'acte",
        "description" : "Indicateur permettant de définir si une UF peut exécuter des actes",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-uf-indicateur"
        },
        "name" : "FR Core Organization Extension - Indicateur d'une unité fonctionnelle",
        "description" : "Indicateur permettant de définir si une UF est d'hébergement, médicale, administrative ou de magasin.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-member"
        },
        "name" : "FR Core Organization Extension - Membre d'organisation",
        "description" : "Extension permettant de définir des membres d'une organisation.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-place-hebergement-theorique"
        },
        "name" : "FR Core Organization Extension - Nombre total de places d'hébergement théoriques",
        "description" : "Nombre total de places d'hébergement théoriques",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-tarif"
        },
        "name" : "FR Core Organization Extension - Tarif Soin",
        "description" : "Tarif de soin associé à l'unité d'activité (UAC, parfois appelé PAC). Le PAC ou l’UAC est le niveau élémentaire de recueil des activités en vue de la facturation. Il est lié à une discipline de prestation et à un tarif (lié à la discipline de prestation). Le PAC ne sert qu’à la facturation du séjour. Il permet d’associer des tarifs de soins différents pour la prise en charge d’un patient.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-type-activite"
        },
        "name" : "FR Core Organization Extension - Type d'activité",
        "description" : "Type d'activité d'une UF",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-uf-externe"
        },
        "name" : "FR Core Organization Extension - UF Externe",
        "description" : "Indicateur permettant de définir si une UF est externe à l'établissement",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization"
        },
        "name" : "FR Core Organization Profile",
        "description" : "Profil de la ressource Organization pour la France. Il s'agit du profil de base pour les organisations en France.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-raison-sociale"
        },
        "name" : "FR Core Organization Raison Sociale Extension",
        "description" : "Raison Sociale l'organisation",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-short-name"
        },
        "name" : "FR Core Organization Short Name Extension",
        "description" : "Libellé court de l'organisation",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-uac"
        },
        "name" : "FR Core Organization UAC Profile",
        "description" : "Ce profil permet de représenter les unités d'activité (UAC, parfois appelé PAC). L'UAC (Unité d'Activité) est le niveau élémentaire de recueil des activités en vue de la facturation.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-uf"
        },
        "name" : "FR Core Organization UF Profile",
        "description" : "Profil de la ressource Organization permettant de représenter les unités fonctionnelles en établissement.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-patient-birth-list-given-name"
        },
        "name" : "FR Core Patient Birth List Given name Extension",
        "description" : "Prénoms de l'acte de naissance",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-patient-birthdate-update-indicator"
        },
        "name" : "FR Core Patient Birthdate Update Indicator Extension",
        "description" : "Indicateur booléen de mise à jour de la date de naissance",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-patient-contact-identifier"
        },
        "name" : "FR Core Patient Contact Identifier Extension",
        "description" : "Identifiant de contact dans la ressource Patient\n\rThis extension carries the contact identifier in the patient resource",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-patient-death-place"
        },
        "name" : "FR Core Patient Death Place Extension",
        "description" : "Précise le lieu de décès du patient (hôpital, sur la voie publique, au domicile, etc.).\n\rCarries the death place of the patient",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-identity-reliability"
        },
        "name" : "FR Core Patient Ident Reliability Extension",
        "description" : "Précision sur le degré de fiabilité de l'identité du patient (si provisoire, validé... avec la justification : quelle type de pièce d'identité ?) accompagné de la méthode de collection.\n\rReliabilility of the patient's identity",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-patient-ins"
        },
        "name" : "FR Core Patient INS Profile",
        "description" : "FR Core Patient profile overspecified to comply with the requirements of the National Health Identity (INS) framework. The INS identifier can only be conveyed in the case of a qualified identity, which is why the identifier slices are defined in the FRCorePatientINS profile and not in the FRCorePatient profile.\r\n\nProfil Fr Core Patient surspécifié pour être conforme aux exigences du référentiel d'Identité Nationale de Santé (INS). Le matricule INS ne peut être véhiculé que dans le cas d'une identité qualifiée, raison pour laquelle les slices identifier sont définies au niveau du FRCorePatientINS et non au niveau du FRCorePatient.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-patient"
        },
        "name" : "FR Core Patient Profile",
        "description" : "Profile of the Patient resource for France. This profile specifies the patient's identifiers for France. It uses international extensions (birtplace and nationality) and adds specific French extensions.\r\n\nCe profil spécifie les identifiants de patient utilisés en France. Il utilise des extensions internationales (birthplace et nationalité) et ajoute des extensions propres à la France.)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-practitioner"
        },
        "name" : "FR Core Practitioner Profile",
        "description" : "Profil de la ressource Practitionner pour la France.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-practitioner-role"
        },
        "name" : "FR Core Practitioner Role",
        "description" : "Profile of the PractitionerRole resource for France. This profil specifies the role of the practitioner for the organization\r\n\nSpécification du profil de la ressource PractitionerRole pour un usage en France. Ce profil permet de spécifier le rôle (la situation d'exercice) du PS dans le contexte d'une organisation.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-practitioner-specialty"
        },
        "name" : "FR Core Practitioner Specialty Extension",
        "description" : "This extension adds the element \"specialty\" to the FHIR Practitioner resource.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-related-person"
        },
        "name" : "FR Core Related Person Profile",
        "description" : "Profile of the RelatedPerson resource for France.\r\n\nProfil de la ressource RelatedPerson pour l'usage en France",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-schedule-availability-time"
        },
        "name" : "FR Core Schedule availability time Extension",
        "description" : "Cette extension permet de préciser une liste de période de temps (récurrentes ou non). Elle spécifie le type de Schedule, l'identifiant de la période, la période (récurrente ou non avec une règle de récurrence dans le cas d'une période récurrente, la date de création de la période et une priorité.\n\rThis extension specifies a list of periods of time (recurrent or not). It specifies the type of Schedule, the identifier of the period, the period with a possibly recurrence rule, the date of creation of the period and the priority of this period",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-schedule"
        },
        "name" : "FR Core Schedule Profile",
        "description" : "Profile of the Schedule resource for France. This profile redefines the element serviceType to associate the service with the duration of this service. It also adds an extension sepcifying the periods of avalability/non-availabilty times of the Schedule\r\n\nProfil de la ressource Schedule pour l'usage en France. Ce profil redéfinit l'élément serviceType de façon à associer le service avec la durée du service. Il ajoute également une extension qui précise les périodes de disponibilités/non disponibilités de la vacation.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-service-type-duration"
        },
        "name" : "FR Core Service Type Duration Extension",
        "description" : "Cette extension française permet d'associer le type de service avec la durée de ce service.\n\rThis French extension allows to associate the type of service with the duration of this service",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-slot"
        },
        "name" : "FR Core Slot Profile",
        "description" : "Profil of the Slot resource for France.\r\n\nProfil de la ressource Slot pour la France",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-availability-time-rule"
        },
        "name" : "FR Core ValueSet Availability Schedule",
        "description" : "Spécifications des périodes récurrentes.\r\nSpecification of the recurrent periods",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-height-body-position"
        },
        "name" : "FR Core ValueSet BodyPosition",
        "description" : "ValueSet Body Position",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-bp-method"
        },
        "name" : "FR Core ValueSet BP measurement method",
        "description" : "A coded type for the blood pressure measurement method",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-categorie-sae-etablissement"
        },
        "name" : "FR Core ValueSet Categorie SAE Etablissement",
        "description" : "Catégrorie d'établissement de santé, suivant les valeurs de la SAE (Structure d'Activité d'Etablissement) 2024",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-oragnization-code-tarif-tnjp"
        },
        "name" : "FR Core ValueSet Codes Tarifs - nomenclature TNJP",
        "description" : "Valeurs permettant de coder les codes TNJP (Tarification nationale journalière des prestations).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-cog-commune-pays"
        },
        "name" : "FR Core ValueSet COG commune pays",
        "description" : "Value set town and country COG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-contact-relationship"
        },
        "name" : "FR Core ValueSet Contact relationship",
        "description" : "A set of codes that can be used to indicate the relationship between a Patient and a Related Person.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-email-type"
        },
        "name" : "FR Core ValueSet Email type",
        "description" : "The type of email",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-encounter-class"
        },
        "name" : "FR Core ValueSet Encounter class",
        "description" : "A set of codes that can be used to indicate the class of the encounter.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-encounter-discharge-disposition"
        },
        "name" : "FR Core ValueSet Encounter discharge disposition",
        "description" : "Circonstances de sortie de l'hôpital.\r\nThis value set defines a set of codes that can be used to where the patient left the hospital",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-encounter-identifier-type"
        },
        "name" : "FR Core ValueSet Encounter identifier type",
        "description" : "A coded type for an identifier that can be used to determine which identifier to use for a specific purpose (Encounters).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-encounter-type"
        },
        "name" : "FR Core ValueSet Encounter type",
        "description" : "Jeu de valeurs des types de rencontre.\r\nA coded type for an encounter",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-identity-method-collection"
        },
        "name" : "FR Core ValueSet Identity method collection",
        "description" : "The validation mode of the identity.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-identity-reliability"
        },
        "name" : "FR Core ValueSet Identity reliability",
        "description" : "The reliability of the identity.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-insee-code"
        },
        "name" : "FR Core ValueSet INSEE code",
        "description" : "the French Address Insee Codes",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-location-position-lit"
        },
        "name" : "FR Core ValueSet Location Position Lit",
        "description" : "Position du lit dans la chambre",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-location-type"
        },
        "name" : "FR Core ValueSet Location type",
        "description" : "Jeu de valeurs du rôle joué par un lieu.\n\rA role for a location",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-location-type-chambre"
        },
        "name" : "FR Core ValueSet Location Type Chambre",
        "description" : "Type de chambre",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-marital-status"
        },
        "name" : "FR Core ValueSet Marital Status ValueSet",
        "description" : "Patient Marital Status",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-mode-validation-identity"
        },
        "name" : "FR Core ValueSet Mode validation identity",
        "description" : "The validation mode of the identity.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-mode-validation-identity-ins"
        },
        "name" : "FR Core ValueSet Mode validation identity INS",
        "description" : "The validation mode of the identity authorized for INS",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-organization-champ-activite"
        },
        "name" : "FR Core ValueSet Organization Champ Activite - Champ d'activité clinique de l'organisation type UF",
        "description" : "Champ d'activité d'une organisation type UF.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-organization-discipline-equipement"
        },
        "name" : "FR Core ValueSet Organization Discipline d'Equipement - nomenclature SAE",
        "description" : "Valeurs permettant de coder les disciplines d'équipement.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-discipline-prestation"
        },
        "name" : "FR Core ValueSet Organization Discipline de prestation - nomenclature SAE",
        "description" : "Valeurs permettant de coder les disciplines de prestation.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-organization-etablissement-type"
        },
        "name" : "FR Core ValueSet Organization Etablisement type",
        "description" : "Types d'organisation représentant des établissements.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-organization-identifier-type"
        },
        "name" : "FR Core ValueSet Organization identifier type",
        "description" : "A coded type for an identifier that can be used to determine which identifier to use for a specific purpose (Organizations).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-organization-type"
        },
        "name" : "FR Core ValueSet Organization type",
        "description" : "Types de structures",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-oragnization-type-activite"
        },
        "name" : "FR Core ValueSet Organization Type Activité - nomenclature SAE",
        "description" : "Valeurs permettant de coder les types d'activité.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-organization-uac-type"
        },
        "name" : "FR Core ValueSet Organization UAC type",
        "description" : "Types de structure représentant des unités d'activité.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-organization-uf-indicateur"
        },
        "name" : "FR Core ValueSet Organization UF Indicateur",
        "description" : "Indicateur d'une unité fonctionnelle.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-patient-contact-role"
        },
        "name" : "FR Core ValueSet Patient contact role",
        "description" : "ValueSet patient contact role",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-patient-gender"
        },
        "name" : "FR Core ValueSet Patient gender",
        "description" : "Genres autorisés dans le cadre du genre administratif du Patient en France. Pour partager des genres suplémentaires (ex. biologique), cf gender harmony implementation guide.\r\nPermitted genders for French Patient gender.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-patient-identifier-type"
        },
        "name" : "FR Core ValueSet Patient identifier type",
        "description" : "A coded type for an identifier that can be used to determine which identifier to use for a specific purpose (identification of a patient).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-patient-identifier-use-ins"
        },
        "name" : "FR Core ValueSet Patient identifier use INS",
        "description" : "Use autorisés pour l'identifiant national de santé.\r\nAuthorized use for INS identifier.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-patient-identifier-use-pi"
        },
        "name" : "FR Core ValueSet Patient identifier use PI",
        "description" : "Use autorisés pour les identifiants patients attribués par les hôpitaux (IPP).\r\nAuthorized use for PI identifier.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-practitioner-identifier-type"
        },
        "name" : "FR Core ValueSet Practitioner identifier type",
        "description" : "A coded type for an identifier that can be used to determine which identifier to use for a specific purpose (providers identification)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-practitioner-specialty"
        },
        "name" : "FR Core ValueSet Practitioner specialty",
        "description" : "The modalities of exercice of the practitioner, registered by an official organization for a period of time.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-practitioner-role-exercice"
        },
        "name" : "FR Core ValueSet PractitionerRole Exercice",
        "description" : "The exercice(s) of the practitioner.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-relation-type"
        },
        "name" : "FR Core ValueSet relation type",
        "description" : "ValueSet relation type",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-schedule-type"
        },
        "name" : "FR Core ValueSet Schedule type",
        "description" : "Jeu de valeurs des types de Schedule.\r\nA Schedule type",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-title"
        },
        "name" : "FR Core ValueSet Title",
        "description" : "The Patient or person civility",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-schedule-unavailability-reason"
        },
        "name" : "FR Core ValueSet Unavailability Reason",
        "description" : "Raison d'indisponibilité",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Appointment"
          }
        ],
        "reference" : {
          "reference" : "Appointment/FRCoreAppointmentExample"
        },
        "name" : "FRCoreAppointmentExample",
        "description" : "Exemple de ressource Appointment pour décrire un état de rendez-vous médical",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-appointment"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Encounter"
          }
        ],
        "reference" : {
          "reference" : "Encounter/FRCoreEncounterExample"
        },
        "name" : "FRCoreEncounterExample",
        "description" : "Exemple de ressource Appointment pour décrire une rencontre dans un cadre médical",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-encounter"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "HealthcareService"
          }
        ],
        "reference" : {
          "reference" : "HealthcareService/svc-cardiologie-1"
        },
        "name" : "FRCoreHealthcareServiceExample",
        "description" : "Exemple de ressource HealthcareService pour décrire le service de cardiologie de l’hôpital X",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-healthcare-service"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Location"
          }
        ],
        "reference" : {
          "reference" : "Location/loc-radiologie-z"
        },
        "name" : "FRCoreLocationExample",
        "description" : "Exemple de ressource Location pour décrire la localisation du centre de radiologie de l'hôpital Z",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/FRCoreObservationBMIExample"
        },
        "name" : "FRCoreObservationBMIExample",
        "description" : "Exemple de ressource Observation pour décrire un indice de masse corporelle (IMC)",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-bmi"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/FRCoreObservationBodyHeightExample"
        },
        "name" : "FRCoreObservationBodyHeightExample",
        "description" : "Exemple de ressource Observation pour décrire la taille du patient",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-height"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/FRCoreObservationBodyTemperatureExample"
        },
        "name" : "FRCoreObservationBodyTemperatureExample",
        "description" : "Exemple de ressource Observation pour décrire la température du patient",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-temperature"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/FRCoreObservationBodyWeightExample"
        },
        "name" : "FRCoreObservationBodyWeightExample",
        "description" : "Exemple de ressource Observation pour décrire le poids du patient",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-weight"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/FRCoreObservationBPExample"
        },
        "name" : "FRCoreObservationBPExample",
        "description" : "Exemple de ressource Observation Pression artérielle",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-bp"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/FRCoreObservationHeadCircumExample"
        },
        "name" : "FRCoreObservationHeadCircumExample",
        "description" : "Exemple de ressource Observation pour décrire le périmètre cranien d'un patient",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-head-circum"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/FRCoreObservationHeartRateExample"
        },
        "name" : "FRCoreObservationHeartRateExample",
        "description" : "Exemple de ressource Observation pour décrire la fréquence cardiaque d'un patient",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-heartrate"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/FRCoreOrganizationExample"
        },
        "name" : "FRCoreOrganizationExample",
        "description" : "Exemple de ressource Organization pour décrire un hôpital",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/FRCorePatientExample"
        },
        "name" : "FRCorePatientExample",
        "description" : "Exemple de ressource Patient (cas d'usage INS)",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Practitioner"
          }
        ],
        "reference" : {
          "reference" : "Practitioner/FRCorePractitionerExample"
        },
        "name" : "FRCorePractitionerExample",
        "description" : "Exemple de ressource Practitioner pour décrire un practicien, ses diplômes et son inscription à l'ordre.",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PractitionerRole"
          }
        ],
        "reference" : {
          "reference" : "PractitionerRole/FRCorePractitionerRoleExample"
        },
        "name" : "FRCorePractitionerRoleExample",
        "description" : "Exemple de ressource PractitionerRole pour décrire le rôle d'un practitien (situation d'exercice)",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Schedule"
          }
        ],
        "reference" : {
          "reference" : "Schedule/FRCoreScheduleExample"
        },
        "name" : "FRCoreScheduleExample",
        "description" : "Exemple de ressource Schedule pour décrire un agenda.",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-schedule"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Slot"
          }
        ],
        "reference" : {
          "reference" : "Slot/FRCoreSlotExample"
        },
        "name" : "FRCoreSlotExample",
        "description" : "Exemple de ressource Slot.",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-slot"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-heartrate-body-location"
        },
        "name" : "Heart Rate Measurement Body Location Precoordinated value set",
        "description" : "SELECT SNOMED CT code system values that describe where on the body the heart rate was measured.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-heartrate-measurement-method"
        },
        "name" : "Heart Rate Measurement Method value set",
        "description" : "SELECT SNOMED CT code system values that describe how the heart rate was measured.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-height-meas-method"
        },
        "name" : "Height Length Measurement Method value set",
        "description" : "SELECT SNOMED CT code system values that describe how the height/length was measured.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/hopitaltest-dept-11003-endocrino"
        },
        "name" : "hopitaltest-dept-11003-endocrino",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/hopitaltest-eg-4-members"
        },
        "name" : "hopitaltest-eg-4-members",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-etablissement"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/hopitaltest-ej-350005179"
        },
        "name" : "hopitaltest-ej-350005179",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-etablissement"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Location"
          }
        ],
        "reference" : {
          "reference" : "Location/hopitaltest-endocrino-ch04"
        },
        "name" : "hopitaltest-endocrino-ch04",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Location"
          }
        ],
        "reference" : {
          "reference" : "Location/hopitaltest-endocrino-ch04-litF"
        },
        "name" : "hopitaltest-endocrino-ch04-litF",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/hopitaltest-pole-1150-med-spe"
        },
        "name" : "hopitaltest-pole-1150-med-spe",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Location"
          }
        ],
        "reference" : {
          "reference" : "Location/hopitaltest-salle-examen-01"
        },
        "name" : "hopitaltest-salle-examen-01",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/hopitaltest-service-11006-endocrino-diabo"
        },
        "name" : "hopitaltest-service-11006-endocrino-diabo",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/hopitaltest-service-11007-dietetique"
        },
        "name" : "hopitaltest-service-11007-dietetique",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/hopitaltest-uac-4420-uac-01"
        },
        "name" : "hopitaltest-uac-4420-uac-01",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uac"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/hopitaltest-uac-4420-uac-02"
        },
        "name" : "hopitaltest-uac-4420-uac-02",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uac"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/hopitaltest-uf-4420-dialyse"
        },
        "name" : "hopitaltest-uf-4420-dialyse",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/hopitaltest-uf-4701-endocrino-diab"
        },
        "name" : "hopitaltest-uf-4701-endocrino-diab",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/hopitaltest-uf-4705-nutrition"
        },
        "name" : "hopitaltest-uf-4705-nutrition",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-spo2-body-location"
        },
        "name" : "Oxygen Saturation Body Location value set",
        "description" : "Select SNOMED CT codes. An set of codes for the location at which oxygen saturation was assessed.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-patient-multiple-birth-r5"
        },
        "name" : "Rang Gémellaire",
        "description" : "Extension créée pour exprimer le rang gémellaire, notamment utile dans le cadre des attestations de droits à l'assurance maladie. Cette extension implemente l'élément PatientMultipleBirth de R5 https://www.hl7.org/fhir/patient-definitions.html#Patient.multipleBirth_x.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-respiratory-rate-meas-method"
        },
        "name" : "Respiratory Rate Measurement Method value set",
        "description" : "SELECT SNOMED CT code system values that describe how the respiratory rate was measured.",
        "exampleBoolean" : false
      }
    ],
    "page" : {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "toc.html"
        }
      ],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "index.html"
            }
          ],
          "nameUrl" : "index.html",
          "title" : "Accueil",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "profile_list.html"
            }
          ],
          "nameUrl" : "profile_list.html",
          "title" : "Liste des profils",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "bonnes_pratiques.html"
            }
          ],
          "nameUrl" : "bonnes_pratiques.html",
          "title" : "Bonnes pratiques d'usage du guide d'implémentation",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "known_problems.html"
            }
          ],
          "nameUrl" : "known_problems.html",
          "title" : "Problématiques connues",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "autres_ressources.html"
            }
          ],
          "nameUrl" : "autres_ressources.html",
          "title" : "Autres Ressources",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "downloads.html"
            }
          ],
          "nameUrl" : "downloads.html",
          "title" : "Téléchargements et usages",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "a_propos.html"
            }
          ],
          "nameUrl" : "a_propos.html",
          "title" : "A propos",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "change_notes.html"
            }
          ],
          "nameUrl" : "change_notes.html",
          "title" : "Historique des changements",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "structure_intro.html"
            }
          ],
          "nameUrl" : "structure_intro.html",
          "title" : "Introduction",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "structure_entites.html"
            }
          ],
          "nameUrl" : "structure_entites.html",
          "title" : "Entités",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "structure_relations.html"
            }
          ],
          "nameUrl" : "structure_relations.html",
          "title" : "Relations entre entités",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "structure_contraintes.html"
            }
          ],
          "nameUrl" : "structure_contraintes.html",
          "title" : "Contraintes sur les profils",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "structure_nomenclatures.html"
            }
          ],
          "nameUrl" : "structure_nomenclatures.html",
          "title" : "Nomenclatures",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "structure_ref_loi.html"
            }
          ],
          "nameUrl" : "structure_ref_loi.html",
          "title" : "Références",
          "generation" : "markdown"
        }
      ]
    },
    "parameter" : [
      {
        "code" : "path-resource",
        "value" : "input/capabilities"
      },
      {
        "code" : "path-resource",
        "value" : "input/examples"
      },
      {
        "code" : "path-resource",
        "value" : "input/extensions"
      },
      {
        "code" : "path-resource",
        "value" : "input/models"
      },
      {
        "code" : "path-resource",
        "value" : "input/operations"
      },
      {
        "code" : "path-resource",
        "value" : "input/profiles"
      },
      {
        "code" : "path-resource",
        "value" : "input/resources"
      },
      {
        "code" : "path-resource",
        "value" : "input/vocabulary"
      },
      {
        "code" : "path-resource",
        "value" : "input/maps"
      },
      {
        "code" : "path-resource",
        "value" : "input/testing"
      },
      {
        "code" : "path-resource",
        "value" : "input/history"
      },
      {
        "code" : "path-resource",
        "value" : "fsh-generated/resources"
      },
      {
        "code" : "path-pages",
        "value" : "template/config"
      },
      {
        "code" : "path-pages",
        "value" : "input/images"
      },
      {
        "code" : "path-tx-cache",
        "value" : "input-cache/txcache"
      }
    ]
  }
}

```
