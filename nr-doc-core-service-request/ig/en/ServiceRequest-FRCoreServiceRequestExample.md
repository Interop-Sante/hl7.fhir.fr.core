# FRCoreServiceRequestExample - Guide d'implémentation FR Core v2.2.0

## Example ServiceRequest: FRCoreServiceRequestExample

-------

**English**

-------

Profile: [FR Core ServiceRequest Profile](StructureDefinition-fr-core-service-request.md)

**FR Core Method Extension**: Ultrasonographie

**identifier**: Accession ID/AN-2024-00456

**status**: Active

**intent**: Order

**category**: imagerie

**code**: échographie de l'abdomen

**subject**: [Pierre Durand (official) Male, DoB: 1974-12-25 ( NIR définitif (use: official, ))](Patient-FRCorePatientINSExample.md)

**occurrence**: 2024-09-10

**bodySite**: abdomen

**note**: 

> 

Recherche de calculs biliaires, patient symptomatique.




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "FRCoreServiceRequestExample",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-service-request"]
  },
  "extension" : [{
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-method-extension",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationMethod",
        "code" : "0012",
        "display" : "Ultrasonographie"
      }]
    }
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "ACSN",
        "display" : "Accession ID"
      }]
    },
    "system" : "http://servicerequest-accession-number-system.org",
    "value" : "AN-2024-00456"
  }],
  "status" : "active",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "363679005",
      "display" : "imagerie"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "45036003",
      "display" : "échographie de l'abdomen"
    }]
  },
  "subject" : {
    "reference" : "Patient/FRCorePatientINSExample",
    "type" : "Patient"
  },
  "occurrenceDateTime" : "2024-09-10",
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "818983003",
      "display" : "abdomen"
    }]
  }],
  "note" : [{
    "text" : "Recherche de calculs biliaires, patient symptomatique."
  }]
}

```
