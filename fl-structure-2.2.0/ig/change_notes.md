# Historique des changements - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* **Historique des changements**

## Historique des changements

### Release 2.2.0 de l’Implementation Guide FRCore

[Modifications apportées dans la release 2.2.0](https://github.com/Interop-Sante/hl7.fhir.fr.core/milestone/10?closed=1) :

* Restructuration des profils Organization avec : 
* Simplification du profil de base FRCoreOrganizationProfile
* Création du nouveau profil FRCoreOrganizationEtablissementProfile pour les établissements
* Suppression du profil FRCoreOrganizationPoleProfile
* Refonte des profils FRCoreOrganizationUFProfile, FRCoreOrganizationUACProfile et FRCoreLocationProfile
 
* Amélioration du profil Location pour mieux supporter la structuration hospitalière (chambres, lits)
* Ajout de 8 nouveaux CodeSystems et 11 nouveaux ValueSets pour supporter ces structures 
* Nouveaux CodeSystems ajoutés : 
* FRCoreCodeSystemChampActiviteField : Champ d’activité clinique (MCO, SMR, HAD, PSY, EHPAD, etc.)
* FRCoreCodeSystemCodeTarifTNJP : Codes tarifaires TNJP
* FRCoreCodeSystemDisciplineEquipement : Discipline d’équipement
* FRCoreCodeSystemDisciplinePrestation : Discipline de prestation
* FRCoreCodeSystemPositionLit : Position du lit dans la chambre
* FRCoreCodeSystemTypeActivite : Type d’activité
* FRCoreCodeSystemTypeChambre : Type de chambre
* FRCoreCodeSystemUFIndicateur : Indicateurs UF
 
* CodeSystems modifiés : 
* FRCoreCodeSystemLocationType : Ajout de codes pour lit et chambre
* FRCoreCodeSystemv2-3307
 
* Nouveaux ValueSets ajoutés : 
* FRCoreValueSetCategorieSAEEtablissement
* FRCoreValueSetLocationPositionLit (remplace LocationPositionRoom)
* FRCoreValueSetLocationTypeChambre
* FRCoreValueSetOrganizationChampActivite (remplace OrganizationActivityField)
* FRCoreValueSetOrganizationCodeTarifTNJP
* FRCoreValueSetOrganizationDisciplineEquipement
* FRCoreValueSetOrganizationDisciplinePrestation
* FRCoreValueSetOrganizationEtablissementType
* FRCoreValueSetOrganizationTypeActivite
* FRCoreValueSetOrganizationUACType
* FRCoreValueSetOrganizationUFIndicateur
 
* ValueSets supprimés : 
* FRCoreValueSetLocationIdentifierType
* FRCoreValueSetLocationPhysicalType
* FRCoreValueSetLocationPositionRoom
* FRCoreValueSetOrganizationActivityField
* FRCoreValueSetOrganizationUFActivityField
 
* ValueSets modifiés : 
* FRCoreValueSetLocationType
* FRCoreValueSetOrganizationType
 
 
* Refonte des extensions Organization avec renommage et réorganisation 
* Nouvelles extensions Organization : 
* FRCoreOrganizationChampActiviteExtension (remplace ActivityFieldExtension)
* FRCoreOrganizationDemandeuseActeExtension (remplace ApplicantActExtension)
* FRCoreOrganizationDisciplineEquipementExtension
* FRCoreOrganizationDisciplinePrestationExtension
* FRCoreOrganizationExecutanteActeExtension (remplace ExecutantExtension)
* FRCoreOrganizationExterneExtension (remplace ExternalExtension)
* FRCoreOrganizationMemberExtension
* FRCoreOrganizationPlaceHebergementTheoriqueExtension (remplace TotalNumberOfTheoricalAccomodationSpaceExtension)
* FRCoreOrganizationRaisonSocialeExtension
* FRCoreOrganizationSAECategoryExtension
* FRCoreOrganizationTarifExtension
* FRCoreOrganizationTypeActiviteExtension (remplace ActivityTypeExtension)
* FRCoreOrganizationUFIndicateurExtension
 
* Extensions Organization supprimées : 
* FRCoreOrganizationActivityFieldExtension
* FRCoreOrganizationActivityTypeExtension
* FRCoreOrganizationAnalysisSectionExtension
* FRCoreOrganizationApplicantActExtension
* FRCoreOrganizationBudgetLetterExtension
* FRCoreOrganizationDescriptionExtension
* FRCoreOrganizationExecutantExtension
* FRCoreOrganizationExternalExtension
* FRCoreOrganizationFieldExtension
* FRCoreOrganizationPrestationDisciplineExtension
* FRCoreOrganizationTotalNumberOfTheoricalAccomodationSpaceExtension
 
* Nouvelles extensions Location : 
* FRCoreLocationPositionLitExtension (position du lit dans la chambre)
* FRCoreLocationTypeChambreExtension (type de chambre)
 
* Extensions Location supprimées : 
* FRCoreLocationPartOfPositionRoomExtension
* FRCoreLocationUsePeriodExtension
 
* Extensions modifiées : 
* FRCoreOrganizationShortNameExtension
 
 
* Ajout de 14 nouveaux exemples illustrant la hiérarchie organisationnelle (EJ, EG, pôles, départements, services, UF, UAC, lieux)
* Patient.extension[nationality] : passage de la cardinalité 0..1 à 0..* (un patient peut avoir plusieurs nationalités) [#265](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/265)
* Patient.extension[deathPlace] Passage du datatype string à Address pour être uniforme avec birthPlace. Le mode string est toujours possible avec l’attribut Address.line [#265](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/265)

Dans la version 2.1.0, le lieu de naissance était indiqué dans une extension de type `string`.

```
{
  "resourceType" : "Patient",
  "extension" : [
    {
      "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-death-place",
      "valueString" : "27 rue des Tilleuls, 34070 Montpellier"
    }
  ]
}

```

A partir de la version 2.2.0, le lieu de naissance est indiqué dans une extension de type `address`. Indiquer une adresse sous forme de chaîne de caractères reste possible grâce à l’attribut `Address.line`.

```
{
  "resourceType" : "Patient",
  "extension" : [
    {
      "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-death-place",
      "valueAddress" : {
        "line" : "27 rue des Tilleuls, 34070 Montpellier"
      }
    }
  ]
}

```

* Mise à jour et uniformisation des titres et description des artifacts [#184](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/184) [#186](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/186) [#188](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/188) [#203](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/203) [#209](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/209) [#264](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/264)
* Mise à jour FrCorePatientINSProfile.fsh (correction d’erreurs) [#163](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/163) [#197](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/197)
* Suppression du numéro ADELI suite au décommissionnement national [#189](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/189)
* Mise à jour et uniformisation des cardinalités des identifier (Patient, Practitioner, Organization) [#190](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/190)
* Mise à jour du emailType short dans FRCoreContactPointProfile.fsh [#193](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/193)
* Mise à jour de la page à propos (contribution, version FHIR, bonnes pratiques) [#198](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/198)
* Mise à jour de la requête qui liste les profils [#199](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/199)
* Mise à jour de la description d’idnatps FRCorePractitionerProfile.fsh [#200](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/200)
* Mise à jour du short de idnatstruct FRCoreOrganizationProfile.fsh [#201](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/201)
* Mise à jour de l’URL du CodeSystem des communes (Commune –> CommuneOM) [#204](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/204)
* FIX discriminateur Patient.contact.relationship [#206](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/206)
* Mise à jour du HumanName use (cardinalité et suppression de lignes inutiles héritées) [#208](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/208)
* Ajout de nouvelles méthodes de collectes d’identité dans le cadre de l’INS [#210](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/210)
* Ajout de l’extension MultipleBirth pour indiquer le rang gémellaire d’un patient [#212](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/212)
* Patient: assouplissement de la contrainte sur identifier[PI].use via binding à un VS dédié [#215](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/215)
* Résolution erreurs QA : mise à jour et ajout d’exemples, définition concepts CS, path Extension [#216](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/216)
* Ajout page : bonnes pratiques, problématiques connues, et mise à jour de l’index pour expliciter l’intérêt de FRCore [#220](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/220)
* Ajout de la page change notes pour faciliter l’accès à l’historique des modifications [#221](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/221)
* Mise à jour du texte sur le patient INS sur la définition des identifiants NIR [#227](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/227)
* Relaxation de la contrainte Encounter.subject pour qu’il puisse également pointer un Group [#228](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/228)
* Suppression des contraintes de HumanName sur la civiliteexercice, déplacé dans Practitioner [#230](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/230)
* Refacto - uniformisation des namings et correction QA [#232](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/232)
* Suppression MLLE dans les civilités [#237](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/237)
* Mise à jour identifiants INS Patient [#238](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/238)
* Mise à jour du texte de l’identifiant de l’IDNatStruct de la ressource FRCoreOrganization [#264](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/264)
* MAJ package terminologies à LATEST [#239](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/239)
* Ajout du template InteropSanté [#242](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/242)
* Retrait du genre “other” sur le profil FrCorePatient INS [#243](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/243)
* Mise à jour des profils patient et exemples (quick fix et refacto) [#244](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/244) [#245](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/245)
* Ajout d’un invariant qui renvoie un warning si le COG de naissance 99999 est utilisé pour une identité validée [#262](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/262)
* Ajout du numéro AMELI au profil PractitionerRole [#260](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/260)

### Release 2.1.0 de l’Implementation Guide FRCore

[Modifications apportées dans la release 2.1.0](https://github.com/Interop-Sante/hl7.fhir.fr.core/milestone/9?closed=1) :

* PatientINS: ajout des slices de test et demo pour le NIR, Organization: séparation des slices SIREN & SIRET [#163](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/163)
* Mise à jour du discriminant d’Organization [#166](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/166)
* Suppression des tags MS (copier coller erroné de l’annuaire santé) [#171](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/171)
* Relaxation cardinalité FrPatient.identifier[PI] à 0..* au lieu de 0..1 [#172](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/172)
* Mise à jour de la page index et préparation pour publication [#174](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/174)
* Ajour d’une description du profil FrPractitioner : comment l’utiliser ? [#175](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/175)
* Mise à jour de l’URL de la TRE R13 [#176](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/176)
* Update practitioner qualification discriminator [#180](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/180)
* Préparation publication 2.1.0 [#183](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/183)
* Ajout de la page à propos [#182](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/182)
* Fusion des deux profils PractitionerRole en un seul FRCorePractitionerRole [#61](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/61)
* Add MS Tag to FrCorePatientINS [#167](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/167)
* Uniformisation des noms de profils pour avoir le format FRCore[…] [#179](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/179)
* Ajout d’une intro note pour le profil Patient INS [#169](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/169)

### Release 2.0.1 de l’Implementation Guide FRCore

[Modifications apportées dans la release 2.0.1](https://github.com/Interop-Sante/hl7.fhir.fr.core/milestone/11?closed=1) :

* Suppression des urls interopsante.org au profit de hl7.fr pour FrPractitioner et FrOrganization [#152](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/152)

### Release 2.0.0 de l’Implementation Guide FRCore

[Modifications apportées dans la release 2.0.0](https://github.com/Interop-Sante/hl7.fhir.fr.core/milestone/6?closed=1) :

* Update list (ref. IHE PAM France 2.10) [#68](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/68)
* Fusion des extensions Patient identity : method collection & reliability [#67](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/67)
* Issue #34: Réintégrer les profils FrPractionerRoleExercice & FrPracti… [#42](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/42)
* Add ‘bonnes pratiques’ page & rm location.identifier mandatory [#102](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/102)
* Resolve more qa errors [#96](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/96)
* TRE Commune (R13) URL was wrong [#83](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/83)
* Ajout du code “PACS” dans le marital status [#119](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/119)
* Ajout d’identifier slices pour Fr Core Practitioner et Fr Core Organization [#127](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/127)
* Changement de la cardinalité identifier[NDP] de 0..* à 0..1 [#123](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/123)
* Mise à jour et éclaircissement du Patient identifier [#115](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/115)
* Uniformisation des id des CS et des VS [#121](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/121)
* Mise à jour de la taille de l’encart de la page d’accueil [#132](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/132)
* MAJ NIR - DESCR NIR FrCorePatientINS.fsh + Ajout NSS au FrCorePatient [#129](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/129)
* Correction Encounter.identifier.type binding - system not existing [#136](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/136)
* Fix typo practioner [#137](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/137)
* Ajout exemples [#139](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/139)
* Mise à jour des spécialités [#138](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/138)
* Mise à jour de l’identifiant patient INS [#133](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/133)
* Suppression de lignes inutiles et relâchement de contraintes pour perm ttre l’héritage Annuaire – FrCore [#145](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/145)
* [Style] Maj description des profils, ajout contributeurs, ajout page loste des profils [#146](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/146)
* Update publication-request for release [#147](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/147)
* FrPatient : mise à jour du nom et ajout du titre [#14](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/14)
* Codesystem : uniformisation des name et ajout des title CodeSystem [#13](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/13)
* Mise à jour de l’id ValueSet fr core practitioner pour uniformisation [#9](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/9)
* StructureDefinition - Uniformisation name et ajout des title [#16](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/16)
* ValueSet : uniformisation name et ajout title [#17](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/17)
* Passage au format IG [#54](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/54)
* Ajout des workflows [#55](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/55)
* Ajout des données dans l’ensemble des meta.profile [#59](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/59)
* Mise à jour de Patient.identifier.type [#58](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/58)
* FrPatient : Mise à jour du titre [#15](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/15)
* Suppression classnotes [#65](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/65)
* Suppression slice identityReliability [#57](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/57)
* Création d’un dossier datatype-profiles [#66](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/66)
* FRCorePratitioner : ajout de meta.profile [#56](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/56)
* Ajout du profil FrCorePatientINS et résolution du problème nom de patientt [#64](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/64)
* Ajout gitignore et ajout du profil nationality [#62](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/62)
* Mise à jour des URLs des profils et suppression de profils obsolète [#11](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/11)
* Suppression des bindings des Observation.interpretation [#60](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/60)
* Patient : Utilisation du profil FrAddress dans l’extension birthplace [#63](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/63)
* Création d’un ValueSet pour que Patient.gender INS permette uniquement es valeurs male female unknown [#73](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/73)
* Mise à jour des alias [#76](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/76)
* Correction typo practioner –> practitioner [#79](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/79)
* Modification des urls canoniques http –> https [#69](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/69)
* Suppression du binding identifier.type qui duplique celui hérité de FHIR Core [#70](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/70)
* Correction d’erreurs (espaces en fin de string et ajout d’un title manq ant à un ValueSet) [#94](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/94)
* Cleaning des urls, suppression url interopsanté [#84](https://github.com/Interop-Sante/hl7.fhir.fr.core/pull/84)

### Versions antérieures

La création de ces profils a été initiée en 2017 sur [la plateforme simplifier](https://simplifier.net/frenchprofiledfhirar) (Participants : Eric Dufour, Isabelle Gibaud, François Macary et Yohann Poiron).

En 2024, l’ensemble des ressources de conformité a été mis au sein de ce [guide d’implémentation](https://hl7.fr/ig/fhir/core) pour simplifier leur usage et leur accès, rendant les anciens profils simplifier obsolètes (Participants : Marie Brulliard, Sylvain Demey, Isabelle Gibaud, Yohann Poiron et Nicolas Riss).

