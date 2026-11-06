# FRCoreHealthcareServiceExample - Guide d'implémentation FR Core v2.2.0

## Exemple HealthcareService: FRCoreHealthcareServiceExample

-------

**French**

-------

Profil: [FR Core Healthcare Service Profile](StructureDefinition-fr-core-healthcare-service.md)

Service de cardiologie by HOPITAL INTERCOMMUNAL DE LA PRESQU'ILE G (Entité légale, Secteur non défini) (Identification nationale de structure définie par l’ANS dans le CI_SIS: 2264403106 (use: official)) (urn:oid:1.2.250.1.1.1.1#HOSP-X-CARDIO (use: official))

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Actif : | true | Appointment Required: | true |
| Provided By: | [HOPITAL INTERCOMMUNAL DE LA PRESQU'ILE G (Entité légale, Secteur non défini) (Identification nationale de structure définie par l’ANS dans le CI_SIS: 2264403106 (use: official))](Organization-FRCoreOrganizationExample.md) | | |
| Category: | Aged Care | | |
| Specialty: | Cardio et Maladies vasculaires | | |
| Comment: | Ce service prend en charge les pathologies cardiaques. | | |
| Coordonnées | [cardio@hosp-x.fr](mailto:cardio@hosp-x.fr) | | |
| Availability: | * Monday, Tuesday, Wednesday, Thursday, Friday: 08:00:00 - 17:30:00
* Saturday: 09:00:00 - 12:00:00
* Not available: Fermeture annuelle (2025-08-01 --> 2025-08-31)
 | | |
| FR Core Service Type Duration Extension: | * serviceType: Cardio et Maladies vasculaires
* duration: 30 min (Détails : code UCUMmin = 'min')
 | | |



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "svc-cardiologie-1",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-healthcare-service"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "serviceType",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale",
          "code" : "SM04",
          "display" : "Cardio et Maladies vasculaires"
        }]
      }
    },
    {
      "url" : "duration",
      "valueDuration" : {
        "value" : 30,
        "unit" : "min",
        "system" : "http://unitsofmeasure.org",
        "code" : "min"
      }
    }],
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-service-type-duration"
  }],
  "identifier" : [{
    "use" : "official",
    "system" : "urn:oid:1.2.250.1.1.1.1",
    "value" : "HOSP-X-CARDIO"
  }],
  "active" : true,
  "providedBy" : {
    "reference" : "Organization/FRCoreOrganizationExample"
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/service-category",
      "code" : "2",
      "display" : "Aged Care"
    }]
  }],
  "specialty" : [{
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale",
      "code" : "SM04",
      "display" : "Cardio et Maladies vasculaires"
    }]
  }],
  "name" : "Service de cardiologie",
  "comment" : "Ce service prend en charge les pathologies cardiaques.",
  "telecom" : [{
    "system" : "email",
    "value" : "cardio@hosp-x.fr"
  }],
  "appointmentRequired" : true,
  "availableTime" : [{
    "daysOfWeek" : ["mon", "tue", "wed", "thu", "fri"],
    "allDay" : false,
    "availableStartTime" : "08:00:00",
    "availableEndTime" : "17:30:00"
  },
  {
    "daysOfWeek" : ["sat"],
    "allDay" : false,
    "availableStartTime" : "09:00:00",
    "availableEndTime" : "12:00:00"
  }],
  "notAvailable" : [{
    "description" : "Fermeture annuelle",
    "during" : {
      "start" : "2025-08-01",
      "end" : "2025-08-31"
    }
  }]
}

```
