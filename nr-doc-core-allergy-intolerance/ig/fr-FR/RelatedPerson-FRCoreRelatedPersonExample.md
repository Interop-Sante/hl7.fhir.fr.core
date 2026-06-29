# FRCoreRelatedPersonExample - Guide d'implémentation FR Core v2.2.0

##  RelatedPerson: FRCoreRelatedPersonExample

Profil: [FR Core Related Person Profile](StructureDefinition-fr-core-related-person.md)

> **Patient Nationality**
* code: France (la)

**identifier**: `urn:oid:1.2.250.1.213.1.4.8`/P98765

**patient**: [Pierre Durand (official) Male, Date de Naissance :1974-12-25 ( NIR définitif (use: official, ))](Patient-FRCorePatientINSExample.md)

**relationship**: Personne à prévenir en cas d'urgence, Mère

**name**: Marie Durand (Official)

**telecom**: ph: 06 12 34 56 78(Mobile)

**address**: 12 rue des Lilas Paris 75020 (home)



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "FRCoreRelatedPersonExample",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "code",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "France (la)"
        }]
      }
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-nationality"
  }],
  "identifier" : [{
    "system" : "urn:oid:1.2.250.1.213.1.4.8",
    "value" : "P98765"
  }],
  "patient" : {
    "reference" : "Patient/FRCorePatientINSExample"
  },
  "relationship" : [{
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass",
      "code" : "ECON",
      "display" : "Personne à prévenir en cas d'urgence"
    }]
  },
  {
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R216-HL7RoleCode/FHIR/TRE-R216-HL7RoleCode",
      "code" : "MTH",
      "display" : "Mère"
    }]
  }],
  "name" : [{
    "use" : "official",
    "family" : "Durand",
    "given" : ["Marie"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "06 12 34 56 78",
    "use" : "mobile"
  }],
  "address" : [{
    "use" : "home",
    "line" : ["12 rue des Lilas"],
    "city" : "Paris",
    "postalCode" : "75020"
  }]
}

```
