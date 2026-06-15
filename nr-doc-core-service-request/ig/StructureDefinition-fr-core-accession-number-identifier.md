# FR Core Accession Number Identifier Profile - Guide d'implémentation FR Core v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Accession Number Identifier Profile**

## Data Type Profile: FR Core Accession Number Identifier Profile 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-accession-number-identifier | *Version*:2.2.0 |
| Active as of 2026-06-15 | *Computable Name*:FRCoreAccessionNumberIdentifierProfile |

 
DataType définissant l’Accession Number d’une demande d’examen. Il s’agit d’un identifiant unique attribué à chaque demande d’examen. 

**Utilisations:**

* Utilise ce/t/te profil de type de données: [FR Core ServiceRequest Profile](StructureDefinition-fr-core-service-request.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-accession-number-identifier)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-accession-number-identifier.csv), [Excel](StructureDefinition-fr-core-accession-number-identifier.xlsx), [Schematron](StructureDefinition-fr-core-accession-number-identifier.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-accession-number-identifier",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-accession-number-identifier",
  "version" : "2.2.0",
  "name" : "FRCoreAccessionNumberIdentifierProfile",
  "title" : "FR Core Accession Number Identifier Profile",
  "status" : "active",
  "date" : "2026-06-15T16:19:33+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [{
    "name" : "Interop'Santé",
    "telecom" : [{
      "system" : "url",
      "value" : "http://interopsante.org"
    }]
  },
  {
    "name" : "InteropSanté",
    "telecom" : [{
      "system" : "email",
      "value" : "fhir@interopsante.org",
      "use" : "work"
    }]
  }],
  "description" : "DataType définissant l'Accession Number d'une demande d'examen. Il s'agit d'un identifiant unique attribué à chaque demande d'examen.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Identifier",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Identifier|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Identifier",
      "path" : "Identifier"
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "ACSN",
          "display" : "Accession ID"
        }]
      }
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "short" : "L'espace de nommage pour l'identifiant"
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "La valeur de l'identifiant",
      "min" : 1
    }]
  }
}

```
