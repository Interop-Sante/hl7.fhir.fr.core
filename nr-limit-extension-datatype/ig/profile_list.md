# Liste des profils - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* **Liste des profils**

## Liste des profils

Cette page contient la liste des profils définis dans le cadre du guide d’implémentation FrCore, ordonnés par catégories.

### Les profils structures des établissements

| | |
| :--- | :--- |
| Titre du profil | Description |
| [FRCoreLocationProfile](StructureDefinition-fr-core-location.md) | Ressource Location adaptée au contexte français. Cette ressource est utilisée pour représenter un lieu physique, telle qu'une salle d'examen, un lit d'hôpital ou une chambre d'hôpital. |
| [FRCoreOrganizationEtablissementProfile](StructureDefinition-fr-core-organization-etablissement.md) | Profil de la ressource Organization permettant de représenter des établissements sanitaires et sociaux. |
| [FRCoreOrganizationUACProfile](StructureDefinition-fr-core-organization-uac.md) | Ce profil permet de représenter les unités d'activité (UAC, parfois appelé PAC). L'UAC (Unité d'Activité) est le niveau élémentaire de recueil des activités en vue de la facturation. |
| [FRCoreOrganizationUFProfile](StructureDefinition-fr-core-organization-uf.md) | Profil de la ressource Organization permettant de représenter les unités fonctionnelles en établissement. |
| [FRCoreOrganizationProfile](StructureDefinition-fr-core-organization.md) | Profil de la ressource Organization pour la France. Il s'agit du profil de base pour les organisations en France. |

### Les profils administratifs

| | |
| :--- | :--- |
| Titre du profil | Description |
| [FRCoreEncounterProfile](StructureDefinition-fr-core-encounter.md) | This profil constrains the Encounter resource to represent either the patient visit or admission or the various movements that compose the patient stay.Ce profil de la ressource Encounter sert à la fois à définir la venue dans l'établissement et à représenter les mouvements du patient qui découpent cette venue. |
| [FRCoreHealthcareServiceProfile](StructureDefinition-fr-core-healthcare-service.md) | Profile of the HealthcareService resource for France. This profile adds the element serviceTypeDuration to associate the service with the duration of this service. This profile needs to be revised, in particular to ensure consistency with the ROR project (https://interop.esante.gouv.fr/ig/fhir/ror).Profil de la ressource HealthcareService pour l'usage en France. Ce profil ajoute l'élément serviceTypeDuration de façon à associer le service avec la durée du service. Ce profil doit être retravaillé, pour être notamment mis en cohérence avec le projet ROR (https://interop.esante.gouv.fr/ig/fhir/ror). |
| [FRCorePatientINSProfile](StructureDefinition-fr-core-patient-ins.md) | FR Core Patient profile overspecified to comply with the requirements of the National Health Identity (INS) framework. The INS identifier can only be conveyed in the case of a qualified identity, which is why the identifier slices are defined in the FRCorePatientINS profile and not in the FRCorePatient profile.Profil FR Core Patient surspécifié pour être conforme aux exigences du référentiel d'Identité Nationale de Santé (INS). Le matricule INS ne peut être véhiculé que dans le cas d'une identité qualifiée, raison pour laquelle les slices identifier sont définies au niveau du FRCorePatientINS et non au niveau du FRCorePatient. |
| [FRCorePatientProfile](StructureDefinition-fr-core-patient.md) | Profile of the Patient resource for France. This profile specifies the patient's identifiers for France. It uses international extensions (birtplace and nationality) and adds specific French extensions.Ce profil spécifie les identifiants de patient utilisés en France. Il utilise des extensions internationales (birthplace et nationalité) et ajoute des extensions propres à la France.) |
| [FRCorePractitionerRoleProfile](StructureDefinition-fr-core-practitioner-role.md) | Profile of the PractitionerRole resource for France. This profil specifies the role of the practitioner for the organizationSpécification du profil de la ressource PractitionerRole pour un usage en France. Ce profil permet de spécifier le rôle (la situation d'exercice) du PS dans le contexte d'une organisation. |
| [FRCorePractitionerProfile](StructureDefinition-fr-core-practitioner.md) | Profil de la ressource Practitionner pour la France. |
| [FRCoreRelatedPersonProfile](StructureDefinition-fr-core-related-person.md) | Profile of the RelatedPerson resource for France.Profil de la ressource RelatedPerson pour l'usage en France |

### Les profils mesures de santé (vital signs)

| | |
| :--- | :--- |
| Titre du profil | Description |
| [FRCoreObservationBmiProfile](StructureDefinition-fr-core-observation-bmi.md) | French profile based on HL7 Vital Sign Body mass index (BMI) [Ratio].Profil français de l'indice de masse corporelle basé sur le profil HL7 Vital Sign BMI |
| [FRCoreObservationBodyHeightProfile](StructureDefinition-fr-core-observation-body-height.md) | French profile for body height.Profil français de la mesure de la taille. Profil basé sur le profil bodyheight d'HL7 |
| [FRCoreObservationBodyTemperatureProfile](StructureDefinition-fr-core-observation-body-temperature.md) | French profile for body temperature.Profil français de la mesure de la température. Profil basé sur le profil Vital Sign BodyTemperature d'HL7 |
| [FRCoreObservationBodyWeightProfile](StructureDefinition-fr-core-observation-body-weight.md) | French profile of body weight based on the FHIR profil BodyWeightMeas.Profil français Body weight basé sur le profil HL7 BodyWeightMeas de Vital Signs. |
| [FRCoreObservationBpProfile](StructureDefinition-fr-core-observation-bp.md) | French profile for blood pressure.Profil français de la pression artérielle. Profil basé sur le profil bp d'HL7 |
| [FRCoreObservationHeadCircumProfile](StructureDefinition-fr-core-observation-head-circum.md) | French profile for Occipital-frontal circumference.Profil HL7 Vital Signs Circonférence de la tête |
| [FRCoreObservationHeartRateProfile](StructureDefinition-fr-core-observation-heartrate.md) | French profile for the FHIR Vital Sign Heart Rate Profile.Profilage français du profil Vital Signs Heart rate |
| [FRCoreObservationRespRateProfile](StructureDefinition-fr-core-observation-resp-rate.md) | French profile for the ObservationResprate profile for France.Profil de la fréquence resporatoire pour l'usage en France |
| [FRCoreObservationOxygenSaturationProfile](StructureDefinition-fr-core-observation-saturation-oxygen.md) | French profile for Oxygen saturation in Arterial blood.Profil de la saturation en oxygène du sang artériel. |

### Les profils agenda

| | |
| :--- | :--- |
| Titre du profil | Description |
| [FRCoreAppointmentProfile](StructureDefinition-fr-core-appointment.md) | Profile of the Appointment resource for France. This profile adds the operator who created/updated/canceled the appointment. It also allows to possibly reference an appointment canceled and a document associated with the appointment.Profil de la ressource Appointment pour la France. Ce profil ajoute l'opérateur qui a créé/modifié/annulé le RDV. Il permet également de référencer éventuellement un RDV annulé et/ou un document lié au RDV. |
| [FRCoreScheduleProfile](StructureDefinition-fr-core-schedule.md) | Profile of the Schedule resource for France. This profile redefines the element serviceType to associate the service with the duration of this service. It also adds an extension sepcifying the periods of avalability/non-availabilty times of the ScheduleProfil de la ressource Schedule pour l'usage en France. Ce profil redéfinit l'élément serviceType de façon à associer le service avec la durée du service. Il ajoute également une extension qui précise les périodes de disponibilités/non disponibilités de la vacation. |
| [FRCoreSlotProfile](StructureDefinition-fr-core-slot.md) | Profil of the Slot resource for France.Profil de la ressource Slot pour la France |

### Les autres profils

| | |
| :--- | :--- |
| Titre du profil | Description |
| [FRCoreMedicationAdministrationInhaledOxygenProfile](StructureDefinition-fr-core-medication-administration-inhaled-oxygen.md) | Profile based on the MedicationAdministration resource to indicate inhaled oxygen. This profile makes it possible to complement the information from the Oxygen Saturation Observation resource with oxygen intake provided through mechanical ventilation.Profil se basant sur la ressource Medication Administration pour indiquer l'oxygène inhalé. Ce profil permet de compléter les informations de la ressource Observation saturation en oxygène avec les apports d'oxygène via une ventilation mécanique. |

