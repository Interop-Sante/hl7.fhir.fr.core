# Artifacts Summary - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [FR Core Appointment Profile](StructureDefinition-fr-core-appointment.md) | Profile of the Appointment resource for France. This profile adds the operator who created/updated/canceled the appointment. It also allows to possibly reference an appointment canceled and a document associated with the appointment. Profil de la ressource Appointment pour la France. Ce profil ajoute l’opérateur qui a créé/modifié/annulé le RDV. Il permet également de référencer éventuellement un RDV annulé et/ou un document lié au RDV. |
| [FR Core Encounter Profile](StructureDefinition-fr-core-encounter.md) | This profil constrains the Encounter resource to represent either the patient visit or admission or the various movements that compose the patient stay. Ce profil de la ressource Encounter sert à la fois à définir la venue dans l’établissement et à représenter les mouvements du patient qui découpent cette venue. |
| [FR Core Healthcare Service Profile](StructureDefinition-fr-core-healthcare-service.md) | Profile of the HealthcareService resource for France. This profile adds the element serviceTypeDuration to associate the service with the duration of this service. This profile needs to be revised, in particular to ensure consistency with the ROR project (https://interop.esante.gouv.fr/ig/fhir/ror). Profil de la ressource HealthcareService pour l’usage en France. Ce profil ajoute l’élément serviceTypeDuration de façon à associer le service avec la durée du service. Ce profil doit être retravaillé, pour être notamment mis en cohérence avec le projet ROR (https://interop.esante.gouv.fr/ig/fhir/ror). |
| [FR Core Location Profile](StructureDefinition-fr-core-location.md) | Ressource Location adaptée au contexte français. Cette ressource est utilisée pour représenter un lieu physique, telle qu’une salle d’examen, un lit d’hôpital ou une chambre d’hôpital. |
| [FR Core Medication Administration Inhaled Oxygen Profile](StructureDefinition-fr-core-medication-administration-inhaled-oxygen.md) | Profile based on the MedicationAdministration resource to indicate inhaled oxygen. This profile makes it possible to complement the information from the Oxygen Saturation Observation resource with oxygen intake provided through mechanical ventilation. Profil se basant sur la ressource Medication Administration pour indiquer l’oxygène inhalé. Ce profil permet de compléter les informations de la ressource Observation saturation en oxygène avec les apports d’oxygène via une ventilation mécanique. |
| [FR Core Observation Blood Pressure Profile](StructureDefinition-fr-core-observation-bp.md) | French profile for blood pressure. Profil français de la pression artérielle. Profil basé sur le profil bp d’HL7 |
| [FR Core Observation Bmi Profile](StructureDefinition-fr-core-observation-bmi.md) | French profile based on HL7 Vital Sign Body mass index (BMI) [Ratio]. Profil français de l’indice de masse corporelle basé sur le profil HL7 Vital Sign BMI |
| [FR Core Observation Body Height Profile](StructureDefinition-fr-core-observation-body-height.md) | French profile for body height. Profil français de la mesure de la taille. Profil basé sur le profil bodyheight d’HL7 |
| [FR Core Observation Body Temperature Profile](StructureDefinition-fr-core-observation-body-temperature.md) | French profile for body temperature. Profil français de la mesure de la température. Profil basé sur le profil Vital Sign BodyTemperature d’HL7 |
| [FR Core Observation Body Weight Profile](StructureDefinition-fr-core-observation-body-weight.md) | French profile of body weight based on the FHIR profil BodyWeightMeas. Profil français Body weight basé sur le profil HL7 BodyWeightMeas de Vital Signs. |
| [FR Core Observation Head Circum Profile](StructureDefinition-fr-core-observation-head-circum.md) | French profile for Occipital-frontal circumference. Profil HL7 Vital Signs Circonférence de la tête |
| [FR Core Observation Heart Rate Profile](StructureDefinition-fr-core-observation-heartrate.md) | French profile for the FHIR Vital Sign Heart Rate Profile. Profilage français du profil Vital Signs Heart rate |
| [FR Core Observation Oxygen Saturation Profile](StructureDefinition-fr-core-observation-saturation-oxygen.md) | French profile for Oxygen saturation in Arterial blood. Profil de la saturation en oxygène du sang artériel. |
| [FR Core Observation Respiratory Rate Profile](StructureDefinition-fr-core-observation-resp-rate.md) | French profile for the ObservationResprate profile for France. Profil de la fréquence resporatoire pour l’usage en France |
| [FR Core Organization Etablissement Profile](StructureDefinition-fr-core-organization-etablissement.md) | Profil de la ressource Organization permettant de représenter des établissements sanitaires et sociaux. |
| [FR Core Organization Profile](StructureDefinition-fr-core-organization.md) | Profil de la ressource Organization pour la France. Il s’agit du profil de base pour les organisations en France. |
| [FR Core Organization UAC Profile](StructureDefinition-fr-core-organization-uac.md) | Ce profil permet de représenter les unités d’activité (UAC, parfois appelé PAC). L’UAC (Unité d’Activité) est le niveau élémentaire de recueil des activités en vue de la facturation. |
| [FR Core Organization UF Profile](StructureDefinition-fr-core-organization-uf.md) | Profil de la ressource Organization permettant de représenter les unités fonctionnelles en établissement. |
| [FR Core Patient INS Profile](StructureDefinition-fr-core-patient-ins.md) | FR Core Patient profile overspecified to comply with the requirements of the National Health Identity (INS) framework. The INS identifier can only be conveyed in the case of a qualified identity, which is why the identifier slices are defined in the FRCorePatientINS profile and not in the FRCorePatient profile. Profil FR Core Patient surspécifié pour être conforme aux exigences du référentiel d’Identité Nationale de Santé (INS). Le matricule INS ne peut être véhiculé que dans le cas d’une identité qualifiée, raison pour laquelle les slices identifier sont définies au niveau du FRCorePatientINS et non au niveau du FRCorePatient. |
| [FR Core Patient Profile](StructureDefinition-fr-core-patient.md) | Profile of the Patient resource for France. This profile specifies the patient’s identifiers for France. It uses international extensions (birtplace and nationality) and adds specific French extensions. Ce profil spécifie les identifiants de patient utilisés en France. Il utilise des extensions internationales (birthplace et nationalité) et ajoute des extensions propres à la France.) |
| [FR Core Practitioner Profile](StructureDefinition-fr-core-practitioner.md) | Profil de la ressource Practitionner pour la France. |
| [FR Core Practitioner Role](StructureDefinition-fr-core-practitioner-role.md) | Profile of the PractitionerRole resource for France. This profil specifies the role of the practitioner for the organization Spécification du profil de la ressource PractitionerRole pour un usage en France. Ce profil permet de spécifier le rôle (la situation d’exercice) du PS dans le contexte d’une organisation. |
| [FR Core Related Person Profile](StructureDefinition-fr-core-related-person.md) | Profile of the RelatedPerson resource for France. Profil de la ressource RelatedPerson pour l’usage en France |
| [FR Core Schedule Profile](StructureDefinition-fr-core-schedule.md) | Profile of the Schedule resource for France. This profile redefines the element serviceType to associate the service with the duration of this service. It also adds an extension sepcifying the periods of avalability/non-availabilty times of the Schedule Profil de la ressource Schedule pour l’usage en France. Ce profil redéfinit l’élément serviceType de façon à associer le service avec la durée du service. Il ajoute également une extension qui précise les périodes de disponibilités/non disponibilités de la vacation. |
| [FR Core Slot Profile](StructureDefinition-fr-core-slot.md) | Profil of the Slot resource for France. Profil de la ressource Slot pour la France |

### Structures: Data Type Profiles 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [FR Core Address Profile](StructureDefinition-fr-core-address.md) | Profil du type de données Address pour la France, ce profil ajoute le code insee à l’adresse. Une cohérence entre code commune (COG), code postal et nom de commune doit être assurée. French profile of Address datatype |
| [FR Core Contact Point Profile](StructureDefinition-fr-core-contact-point.md) | Profil du type de données ContactPoint pour la France, ce profil ajoute le type d’e-mail tel que la bal mss. French profile of ContactPoint datatype |
| [FR Core Human Name Profile](StructureDefinition-fr-core-human-name.md) | Profilage du type de données HumanName pour prise en compte de la civilté au niveau de l’élément prefix et du titre au niveau de l’élément suffix .French profile of datatype HumanName with constraints on prefix and suffix |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [FR Core Address Insee Code Extension](StructureDefinition-fr-core-address-insee-code.md) | Extension d’ajout du code insee (5 chiffres) à l’adresse postale. This extension adds the insee code (5 digits) to the address |
| [FR Core Appointment Operator Extension](StructureDefinition-fr-core-appointment-operator.md) | Cette extension ajoute l’élément appointmentOperator à la ressource Appointment (opérateur de création/modification/annulation du RDV). This extension adds the element appointmentOperator to the Appointment resource (operator of creation/update/cancel of the appointment |
| [FR Core Assembly Order Extension](StructureDefinition-fr-core-human-name-assembly-order.md) | A code that represents the preferred display order of the components of this human name. |
| [FR Core Comment Extension](StructureDefinition-fr-core-comment.md) | Ajout d’un commentaire sur un dataElement d’une ressource. Add a comment on a dataElement of a resource |
| [FR Core Contact Point Email Type Extension](StructureDefinition-fr-core-contact-point-email-type.md) | Extension permettant d’indiquer le type d’adresse email d’un ContactPoint. This extension allows to specify the type of mail used to contact the person. |
| [FR Core Encounter Estimated Discharge Date Extension](StructureDefinition-fr-core-estimated-discharge-date.md) | This extension is used to specify the estimated discharge date of the patient |
| [FR Core Location Extension - Position du lit](StructureDefinition-fr-core-location-position-lit.md) | Position du lit dans la chambre |
| [FR Core Location Extension - Type de chambre](StructureDefinition-fr-core-location-type-chambre.md) | Type de chambre |
| [FR Core Lunar Date Extension](StructureDefinition-fr-core-lunar-date.md) | Date de naissance approximative du patient. Approximate birthdate of the patient |
| [FR Core Nationality Extension](StructureDefinition-fr-core-patient-nationality.md) | The nationality of the patient. |
| [FR Core Observation Body Position Ext Extension](StructureDefinition-fr-core-observation-body-position-ext.md) | Extension CIMI (upgardée en FHIR R4) définie dans le contexte du profil Respiratory rate. Cette extension permet de préciser la position du corps lors de la mesure de la fréquence respiratoire. CIMI extension (in FHIR R4) defined in the context of the Respiratory Rate profile. This extension is used to specify the body position during the respiratory rate observation |
| [FR Core Observation Height Body Position Extension](StructureDefinition-fr-core-observation-height-body-position.md) | Extension utilisée par le profil FrObservationBodyHeight permettant de préciser la position du corps durant la mesure de la taille (le jeu de valeur associé est limité aux 2 valeurs lying et standing). Extension on the FrObservationBodyHeight to specify the position of the body during the measure of the height. |
| [FR Core Observation Level Of Exertion Extension](StructureDefinition-fr-core-observation-level-of-exertion.md) | Extension française définie dans le contexte du profil Vital Signs Resprate. Cette extension permet de préciser le niveau d’exercice du patient durant la mesure de la fréquence respiratoire (au repos, pendant l’effort, après l’effort). French extension defined in the context of the Vital Signs Resprate profile. This extension is used to define the level of exertion ( at rest, during exertion, post exertion) during the respiratory rate measure |
| [FR Core Organization Extension - Catetgorie SAE](StructureDefinition-fr-core-organization-sae-category.md) | Categorie d’établissement de santé, suivant les valeurs de la SAE (Structure d’Activité d’Etablissement) |
| [FR Core Organization Extension - Champ d'activité](StructureDefinition-fr-core-organization-champ-activite.md) | Champ d’activité d’une UF |
| [FR Core Organization Extension - Demandeuse d'acte](StructureDefinition-fr-core-organization-demandeuse-acte.md) | Indicateur permettant de définir si une UF peut demander des actes |
| [FR Core Organization Extension - Discipline Prestation](StructureDefinition-fr-core-organization-discipline-prestation.md) | Discipline de prestation d’une UAC |
| [FR Core Organization Extension - Discipline d'équipement](StructureDefinition-fr-core-organization-discipline-equipement.md) | Discipline d’équipement |
| [FR Core Organization Extension - Exécutante d'acte](StructureDefinition-fr-core-organization-executante-acte.md) | Indicateur permettant de définir si une UF peut exécuter des actes |
| [FR Core Organization Extension - Indicateur d'une unité fonctionnelle](StructureDefinition-fr-core-organization-uf-indicateur.md) | Indicateur permettant de définir si une UF est d’hébergement, médicale, administrative ou de magasin. |
| [FR Core Organization Extension - Membre d'organisation](StructureDefinition-fr-core-organization-member.md) | Extension permettant de définir des membres d’une organisation. |
| [FR Core Organization Extension - Nombre total de places d'hébergement théoriques](StructureDefinition-fr-core-organization-place-hebergement-theorique.md) | Nombre total de places d’hébergement théoriques |
| [FR Core Organization Extension - Tarif Soin](StructureDefinition-fr-core-organization-tarif.md) | Tarif de soin associé à l’unité d’activité (UAC, parfois appelé PAC). Le PAC ou l’UAC est le niveau élémentaire de recueil des activités en vue de la facturation. Il est lié à une discipline de prestation et à un tarif (lié à la discipline de prestation). Le PAC ne sert qu’à la facturation du séjour. Il permet d’associer des tarifs de soins différents pour la prise en charge d’un patient. |
| [FR Core Organization Extension - Type d'activité](StructureDefinition-fr-core-organization-type-activite.md) | Type d’activité d’une UF |
| [FR Core Organization Extension - UF Externe](StructureDefinition-fr-core-organization-uf-externe.md) | Indicateur permettant de définir si une UF est externe à l’établissement |
| [FR Core Organization Raison Sociale Extension](StructureDefinition-fr-core-organization-raison-sociale.md) | Raison Sociale l’organisation |
| [FR Core Organization Short Name Extension](StructureDefinition-fr-core-organization-short-name.md) | Libellé court de l’organisation |
| [FR Core Patient Birth List Given name Extension](StructureDefinition-fr-core-patient-birth-list-given-name.md) | Prénoms de l’acte de naissance |
| [FR Core Patient Birthdate Update Indicator Extension](StructureDefinition-fr-core-patient-birthdate-update-indicator.md) | Indicateur booléen de mise à jour de la date de naissance |
| [FR Core Patient Contact Identifier Extension](StructureDefinition-fr-core-patient-contact-identifier.md) | Identifiant de contact dans la ressource Patient This extension carries the contact identifier in the patient resource |
| [FR Core Patient Death Place Extension](StructureDefinition-fr-core-patient-death-place.md) | Précise le lieu de décès du patient (hôpital, sur la voie publique, au domicile, etc.). Carries the death place of the patient |
| [FR Core Patient Ident Reliability Extension](StructureDefinition-fr-core-identity-reliability.md) | Précision sur le degré de fiabilité de l’identité du patient (si provisoire, validé… avec la justification : quelle type de pièce d’identité ?) accompagné de la méthode de collection. Reliabilility of the patient’s identity |
| [FR Core Practitioner Specialty Extension](StructureDefinition-fr-core-practitioner-specialty.md) | This extension adds the element “specialty” to the FHIR Practitioner resource. |
| [FR Core Schedule availability time Extension](StructureDefinition-fr-core-schedule-availability-time.md) | Cette extension permet de préciser une liste de période de temps (récurrentes ou non). Elle spécifie le type de Schedule, l’identifiant de la période, la période (récurrente ou non avec une règle de récurrence dans le cas d’une période récurrente, la date de création de la période et une priorité. This extension specifies a list of periods of time (recurrent or not). It specifies the type of Schedule, the identifier of the period, the period with a possibly recurrence rule, the date of creation of the period and the priority of this period |
| [FR Core Service Type Duration Extension](StructureDefinition-fr-core-service-type-duration.md) | Cette extension française permet d’associer le type de service avec la durée de ce service. This French extension allows to associate the type of service with the duration of this service |
| [Rang Gémellaire](StructureDefinition-fr-core-patient-multiple-birth-r5.md) | Extension créée pour exprimer le rang gémellaire, notamment utile dans le cadre des attestations de droits à l’assurance maladie. Cette extension implemente l’élément PatientMultipleBirth de R5 https://www.hl7.org/fhir/patient-definitions.html#Patient.multipleBirth_x. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Blood Pressure Measurement Body Location Precoordinated value set](ValueSet-fr-core-vs-bp-meas-body-location.md) | SELECT SNOMED CT code system values that describe the location on the body where the blood pressure was measured. |
| [Blood Pressure Measurement Method value set](ValueSet-fr-core-vs-bp-meas-method.md) | SELECT SNOMED CT code system values that describe how a blood pressure was measured. |
| [Body Position value set](ValueSet-fr-core-vs-body-position.md) | SELECT SNOMED CT code system values the position in which the individual was in during a measurement. |
| [Body Temperature Measurement Body Location value set](ValueSet-fr-core-vsbody-temp-meas-body-location.md) | SELECT SNOMED CT code system values that describe where on the body the temperature was measured. |
| [FR Core ValueSet Availability Schedule](ValueSet-fr-core-vs-availability-time-rule.md) | Spécifications des périodes récurrentes. Specification of the recurrent periods |
| [FR Core ValueSet BP measurement method](ValueSet-fr-core-vs-bp-method.md) | A coded type for the blood pressure measurement method |
| [FR Core ValueSet BodyPosition](ValueSet-fr-core-vs-height-body-position.md) | ValueSet Body Position |
| [FR Core ValueSet COG commune pays](ValueSet-fr-core-vs-cog-commune-pays.md) | Value set town and country COG |
| [FR Core ValueSet Categorie SAE Etablissement](ValueSet-fr-core-vs-categorie-sae-etablissement.md) | Catégrorie d’établissement de santé, suivant les valeurs de la SAE (Structure d’Activité d’Etablissement) 2024 |
| [FR Core ValueSet Codes Tarifs - nomenclature TNJP](ValueSet-fr-core-vs-oragnization-code-tarif-tnjp.md) | Valeurs permettant de coder les codes TNJP (Tarification nationale journalière des prestations). |
| [FR Core ValueSet Contact relationship](ValueSet-fr-core-vs-contact-relationship.md) | A set of codes that can be used to indicate the relationship between a Patient and a Related Person. |
| [FR Core ValueSet Email type](ValueSet-fr-core-vs-email-type.md) | The type of email |
| [FR Core ValueSet Encounter class](ValueSet-fr-core-vs-encounter-class.md) | A set of codes that can be used to indicate the class of the encounter. |
| [FR Core ValueSet Encounter discharge disposition](ValueSet-fr-core-vs-encounter-discharge-disposition.md) | Circonstances de sortie de l’hôpital. This value set defines a set of codes that can be used to where the patient left the hospital |
| [FR Core ValueSet Encounter identifier type](ValueSet-fr-core-vs-encounter-identifier-type.md) | A coded type for an identifier that can be used to determine which identifier to use for a specific purpose (Encounters). |
| [FR Core ValueSet Encounter type](ValueSet-fr-core-vs-encounter-type.md) | Jeu de valeurs des types de rencontre. A coded type for an encounter |
| [FR Core ValueSet INSEE code](ValueSet-fr-core-vs-insee-code.md) | the French Address Insee Codes |
| [FR Core ValueSet Identity method collection](ValueSet-fr-core-vs-identity-method-collection.md) | The validation mode of the identity. |
| [FR Core ValueSet Identity reliability](ValueSet-fr-core-vs-identity-reliability.md) | The reliability of the identity. |
| [FR Core ValueSet Location Position Lit](ValueSet-fr-core-vs-location-position-lit.md) | Position du lit dans la chambre |
| [FR Core ValueSet Location Type Chambre](ValueSet-fr-core-vs-location-type-chambre.md) | Type de chambre |
| [FR Core ValueSet Location type](ValueSet-fr-core-vs-location-type.md) | Jeu de valeurs du rôle joué par un lieu. A role for a location |
| [FR Core ValueSet Marital Status ValueSet](ValueSet-fr-core-vs-marital-status.md) | Patient Marital Status |
| [FR Core ValueSet Mode validation identity](ValueSet-fr-core-vs-mode-validation-identity.md) | The validation mode of the identity. |
| [FR Core ValueSet Mode validation identity INS](ValueSet-fr-core-vs-mode-validation-identity-ins.md) | The validation mode of the identity authorized for INS |
| [FR Core ValueSet Organization Champ Activite - Champ d'activité clinique de l'organisation type UF](ValueSet-fr-core-vs-organization-champ-activite.md) | Champ d’activité d’une organisation type UF. |
| [FR Core ValueSet Organization Discipline d'Equipement - nomenclature SAE](ValueSet-fr-core-vs-organization-discipline-equipement.md) | Valeurs permettant de coder les disciplines d’équipement. |
| [FR Core ValueSet Organization Discipline de prestation - nomenclature SAE](ValueSet-fr-core-vs-discipline-prestation.md) | Valeurs permettant de coder les disciplines de prestation. |
| [FR Core ValueSet Organization Etablisement type](ValueSet-fr-core-vs-organization-etablissement-type.md) | Types d’organisation représentant des établissements. |
| [FR Core ValueSet Organization Type Activité - nomenclature SAE](ValueSet-fr-core-vs-oragnization-type-activite.md) | Valeurs permettant de coder les types d’activité. |
| [FR Core ValueSet Organization UAC type](ValueSet-fr-core-vs-organization-uac-type.md) | Types de structure représentant des unités d’activité. |
| [FR Core ValueSet Organization UF Indicateur](ValueSet-fr-core-vs-organization-uf-indicateur.md) | Indicateur d’une unité fonctionnelle. |
| [FR Core ValueSet Organization identifier type](ValueSet-fr-core-vs-organization-identifier-type.md) | A coded type for an identifier that can be used to determine which identifier to use for a specific purpose (Organizations). |
| [FR Core ValueSet Organization type](ValueSet-fr-core-vs-organization-type.md) | Types de structures |
| [FR Core ValueSet Patient contact role](ValueSet-fr-core-vs-patient-contact-role.md) | ValueSet patient contact role |
| [FR Core ValueSet Patient gender](ValueSet-fr-core-vs-patient-gender.md) | Genres autorisés dans le cadre du genre administratif du Patient en France. Pour partager des genres suplémentaires (ex. biologique), cf gender harmony implementation guide. Permitted genders for French Patient gender. |
| [FR Core ValueSet Patient identifier type](ValueSet-fr-core-vs-patient-identifier-type.md) | A coded type for an identifier that can be used to determine which identifier to use for a specific purpose (identification of a patient). |
| [FR Core ValueSet Patient identifier use INS](ValueSet-fr-core-vs-patient-identifier-use-ins.md) | Use autorisés pour l’identifiant national de santé. Authorized use for INS identifier. |
| [FR Core ValueSet Patient identifier use PI](ValueSet-fr-core-vs-patient-identifier-use-pi.md) | Use autorisés pour les identifiants patients attribués par les hôpitaux (IPP). Authorized use for PI identifier. |
| [FR Core ValueSet Practitioner identifier type](ValueSet-fr-core-vs-practitioner-identifier-type.md) | A coded type for an identifier that can be used to determine which identifier to use for a specific purpose (providers identification) |
| [FR Core ValueSet Practitioner specialty](ValueSet-fr-core-vs-practitioner-specialty.md) | The modalities of exercice of the practitioner, registered by an official organization for a period of time. |
| [FR Core ValueSet PractitionerRole Exercice](ValueSet-fr-core-vs-practitioner-role-exercice.md) | The exercice(s) of the practitioner. |
| [FR Core ValueSet Schedule type](ValueSet-fr-core-vs-schedule-type.md) | Jeu de valeurs des types de Schedule. A Schedule type |
| [FR Core ValueSet Title](ValueSet-fr-core-vs-title.md) | The Patient or person civility |
| [FR Core ValueSet Unavailability Reason](ValueSet-fr-core-vs-schedule-unavailability-reason.md) | Raison d’indisponibilité |
| [FR Core ValueSet relation type](ValueSet-fr-core-vs-relation-type.md) | ValueSet relation type |
| [Heart Rate Measurement Body Location Precoordinated value set](ValueSet-fr-core-vs-heartrate-body-location.md) | SELECT SNOMED CT code system values that describe where on the body the heart rate was measured. |
| [Heart Rate Measurement Method value set](ValueSet-fr-core-vs-heartrate-measurement-method.md) | SELECT SNOMED CT code system values that describe how the heart rate was measured. |
| [Height Length Measurement Method value set](ValueSet-fr-core-vs-height-meas-method.md) | SELECT SNOMED CT code system values that describe how the height/length was measured. |
| [Oxygen Saturation Body Location value set](ValueSet-fr-core-vs-spo2-body-location.md) | Select SNOMED CT codes. An set of codes for the location at which oxygen saturation was assessed. |
| [Respiratory Rate Measurement Method value set](ValueSet-fr-core-vs-respiratory-rate-meas-method.md) | SELECT SNOMED CT code system values that describe how the respiratory rate was measured. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [FR Core CodeSystem Champ Activite - Codes du champ d'activité](CodeSystem-fr-core-cs-champ-activite.md) | Champ d’activité clinique de l’organisation type UF, tel que cité dans les fiches pratiques de comptabilité analytique hospitalière, de la DGOS. |
| [FR Core CodeSystem Circonstances Sortie](CodeSystem-fr-core-cs-circonstances-sortie.md) | Discharge Disposition |
| [FR Core CodeSystem Codes Tarifs - nomenclature TNJP](CodeSystem-fr-core-cs-code-tarif-tnjp.md) | La nomenclature des codes Tarif - Tarifs Nationaux Journaliers des Prestations |
| [FR Core CodeSystem Contact Relationship](CodeSystem-fr-core-cs-contact-relationship.md) | Relationship type |
| [FR Core CodeSystem Discipline d'Equipement - nomenclature SAE](CodeSystem-fr-core-cs-discipline-equipement.md) | La nomenclature de disciplines d’équipement est utilisée pour ventiler l’activité et le personnel entre les différentes disciplines de la section hôpital (MCO, PSY, HAD, SMR et SLD) et la discipline ‘administration, services hôteliers et techniques’. La nomenclature des disciplines d’équipement s’applique aux unités fonctionnelles et aux sections issues du fichier de structure des établissements. Les disciplines sociales, médico-sociales et de formation n’apparaissent pas, car elles ne font pas partie du champ de la SAE. |
| [FR Core CodeSystem Discipline de prestation - nomenclature SAE](CodeSystem-fr-core-cs-discipline-prestation.md) | La nomenclature des discipline de prestation. |
| [FR Core CodeSystem Fiabilité Identité](CodeSystem-fr-core-cs-fiabilite-identite.md) | French Identity reliabilty codes |
| [FR Core CodeSystem Identifier Type](CodeSystem-fr-core-cs-identifier-type.md) | Identifier type |
| [FR Core CodeSystem Location Identifier Type](CodeSystem-fr-core-cs-location-identifier-type.md) | Location identifier type |
| [FR Core CodeSystem Location Physical Type](CodeSystem-fr-core-cs-location-physical-type.md) | Location physical type |
| [FR Core CodeSystem Location Type](CodeSystem-fr-core-cs-location-type.md) | Location type |
| [FR Core CodeSystem Marital Status](CodeSystem-fr-core-cs-marital-status.md) | Marital status |
| [FR Core CodeSystem Mode Validation Identite](CodeSystem-fr-core-cs-method-collection.md) | Méthode de collection de l’identité |
| [FR Core CodeSystem Mode Validation Identite](CodeSystem-fr-core-cs-mode-validation-identity.md) | Mode de validation de l’identité |
| [FR Core CodeSystem Organization Type](CodeSystem-fr-core-cs-type-organisation.md) | Organization type |
| [FR Core CodeSystem Position du lit](CodeSystem-fr-core-cs-location-position-lit.md) | Position du lit dans la chambre |
| [FR Core CodeSystem Schedule Type](CodeSystem-fr-core-cs-schedule-type.md) | Schedule type |
| [FR Core CodeSystem Type Admission](CodeSystem-fr-core-cs-type-admission.md) | Admission type |
| [FR Core CodeSystem Type Chambre](CodeSystem-fr-core-cs-location-type-chambre.md) | Type de chambre |
| [FR Core CodeSystem Type d'activité - nomenclature SAE](CodeSystem-fr-core-cs-type-activite.md) | La nomenclature des types d’activité de la terminologie SAE (Statistique Annuelle des Etablissements de santé) maintenue par la DREES. |
| [FR Core CodeSystem UF Indicator - indicateur d'une unité fonctionnelle](CodeSystem-fr-core-cs-uf-indicateur.md) | Système de codage permettant de définir les indicateurs d’une unité fonctionnelle. |
| [FR Core CodeSystem v2-0203](CodeSystem-fr-core-cs-v2-0203.md) | HL7 v2 - Identifier type |
| [FR Core CodeSystem v2-0445](CodeSystem-fr-core-cs-v2-0445.md) | HL7 v2 - Table 0445 |
| [FR Core CodeSystem v2-3307](CodeSystem-fr-core-cs-v2-3307.md) | HL7 v2 - Table 3307 |
| [FR Core CodeSystem v2-3311](CodeSystem-fr-core-cs-v2-3311.md) | HL7 v2 - Table 3311 |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [FRCoreAppointmentExample](Appointment-FRCoreAppointmentExample.md) | Exemple de ressource Appointment pour décrire un état de rendez-vous médical |
| [FRCoreEncounterExample](Encounter-FRCoreEncounterExample.md) | Exemple de ressource Appointment pour décrire une rencontre dans un cadre médical |
| [FRCoreHealthcareServiceExample](HealthcareService-svc-cardiologie-1.md) | Exemple de ressource HealthcareService pour décrire le service de cardiologie de l’hôpital X |
| [FRCoreLocationExample](Location-loc-radiologie-z.md) | Exemple de ressource Location pour décrire la localisation du centre de radiologie de l’hôpital Z |
| [FRCoreObservationBMIExample](Observation-FRCoreObservationBMIExample.md) | Exemple de ressource Observation pour décrire un indice de masse corporelle (IMC) |
| [FRCoreObservationBPExample](Observation-FRCoreObservationBPExample.md) | Exemple de ressource Observation Pression artérielle |
| [FRCoreObservationBodyHeightExample](Observation-FRCoreObservationBodyHeightExample.md) | Exemple de ressource Observation pour décrire la taille du patient |
| [FRCoreObservationBodyTemperatureExample](Observation-FRCoreObservationBodyTemperatureExample.md) | Exemple de ressource Observation pour décrire la température du patient |
| [FRCoreObservationBodyWeightExample](Observation-FRCoreObservationBodyWeightExample.md) | Exemple de ressource Observation pour décrire le poids du patient |
| [FRCoreObservationHeadCircumExample](Observation-FRCoreObservationHeadCircumExample.md) | Exemple de ressource Observation pour décrire le périmètre cranien d’un patient |
| [FRCoreObservationHeartRateExample](Observation-FRCoreObservationHeartRateExample.md) | Exemple de ressource Observation pour décrire la fréquence cardiaque d’un patient |
| [FRCoreOrganizationExample](Organization-FRCoreOrganizationExample.md) | Exemple de ressource Organization pour décrire un hôpital |
| [FRCorePatientExample](Patient-FRCorePatientExample.md) | Exemple de ressource Patient (cas d’usage INS) |
| [FRCorePractitionerExample](Practitioner-FRCorePractitionerExample.md) | Exemple de ressource Practitioner pour décrire un practicien, ses diplômes et son inscription à l’ordre. |
| [FRCorePractitionerRoleExample](PractitionerRole-FRCorePractitionerRoleExample.md) | Exemple de ressource PractitionerRole pour décrire le rôle d’un practitien (situation d’exercice) |
| [FRCoreScheduleExample](Schedule-FRCoreScheduleExample.md) | Exemple de ressource Schedule pour décrire un agenda. |
| [FRCoreSlotExample](Slot-FRCoreSlotExample.md) | Exemple de ressource Slot. |
| [hopitaltest-dept-11003-endocrino](Organization-hopitaltest-dept-11003-endocrino.md) |  |
| [hopitaltest-eg-4-members](Organization-hopitaltest-eg-4-members.md) |  |
| [hopitaltest-ej-350005179](Organization-hopitaltest-ej-350005179.md) |  |
| [hopitaltest-endocrino-ch04](Location-hopitaltest-endocrino-ch04.md) |  |
| [hopitaltest-endocrino-ch04-litF](Location-hopitaltest-endocrino-ch04-litF.md) |  |
| [hopitaltest-pole-1150-med-spe](Organization-hopitaltest-pole-1150-med-spe.md) |  |
| [hopitaltest-salle-examen-01](Location-hopitaltest-salle-examen-01.md) |  |
| [hopitaltest-service-11006-endocrino-diabo](Organization-hopitaltest-service-11006-endocrino-diabo.md) |  |
| [hopitaltest-service-11007-dietetique](Organization-hopitaltest-service-11007-dietetique.md) |  |
| [hopitaltest-uac-4420-uac-01](Organization-hopitaltest-uac-4420-uac-01.md) |  |
| [hopitaltest-uac-4420-uac-02](Organization-hopitaltest-uac-4420-uac-02.md) |  |
| [hopitaltest-uf-4420-dialyse](Organization-hopitaltest-uf-4420-dialyse.md) |  |
| [hopitaltest-uf-4701-endocrino-diab](Organization-hopitaltest-uf-4701-endocrino-diab.md) |  |
| [hopitaltest-uf-4705-nutrition](Organization-hopitaltest-uf-4705-nutrition.md) |  |

