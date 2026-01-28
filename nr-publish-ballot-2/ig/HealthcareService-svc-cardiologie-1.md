# FRCoreHealthcareServiceExample - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FRCoreHealthcareServiceExample**

## Example HealthcareService: FRCoreHealthcareServiceExample

Profil: [FR Core Healthcare Service Profile](StructureDefinition-fr-core-healthcare-service.md)

> **FR Core Service Type Duration Extension**
* serviceType: Cardio et Maladies vasculaires
* duration: Pas daffichage pour {0} (value : 30; unit : min; system : http://unitsofmeasure.org; code : min)

**identifier**: `urn:oid:1.2.250.1.1.1.1`/HOSP-X-CARDIO (utilisation : official, )

**active**: true

**providedBy**: [Organization HOPITAL INTERCOMMUNAL DE LA PRESQU'ILE G](Organization-FRCoreOrganizationExample.md)

**category**: Aged Care

**specialty**: Cardio et Maladies vasculaires

**name**: Service de cardiologie

**comment**: Ce service prend en charge les pathologies cardiaques.

**telecom**: [cardio@hosp-x.fr](mailto:cardio@hosp-x.fr)

**appointmentRequired**: true

> **availableTime****daysOfWeek**: Monday, Tuesday, Wednesday, Thursday, Friday**allDay**: false**availableStartTime**: 08:00:00**availableEndTime**: 17:30:00

> **availableTime****daysOfWeek**: Saturday**allDay**: false**availableStartTime**: 09:00:00**availableEndTime**: 12:00:00

### NotAvailables

| | | |
| :--- | :--- | :--- |
| - | **Description** | **During** |
| * | Fermeture annuelle | 2025-08-01 --> 2025-08-31 |



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "svc-cardiologie-1",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-healthcare-service"
    ]
  },
  "extension" : [
    {
      "extension" : [
        {
          "url" : "serviceType",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale",
                "code" : "SM04",
                "display" : "Cardio et Maladies vasculaires"
              }
            ]
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
        }
      ],
      "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-service-type-duration"
    }
  ],
  "identifier" : [
    {
      "use" : "official",
      "system" : "urn:oid:1.2.250.1.1.1.1",
      "value" : "HOSP-X-CARDIO"
    }
  ],
  "active" : true,
  "providedBy" : {
    "reference" : "Organization/FRCoreOrganizationExample"
  },
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/service-category",
          "code" : "2",
          "display" : "Aged Care"
        }
      ]
    }
  ],
  "specialty" : [
    {
      "coding" : [
        {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale",
          "code" : "SM04",
          "display" : "Cardio et Maladies vasculaires"
        }
      ]
    }
  ],
  "name" : "Service de cardiologie",
  "comment" : "Ce service prend en charge les pathologies cardiaques.",
  "telecom" : [
    {
      "system" : "email",
      "value" : "cardio@hosp-x.fr"
    }
  ],
  "appointmentRequired" : true,
  "availableTime" : [
    {
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
    }
  ],
  "notAvailable" : [
    {
      "description" : "Fermeture annuelle",
      "during" : {
        "start" : "2025-08-01",
        "end" : "2025-08-31"
      }
    }
  ]
}

```
