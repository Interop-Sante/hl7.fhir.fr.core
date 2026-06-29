# FR Core Patient Birth List Given name Extension - Guide d'implémentation FR Core v2.2.0

## Extension: FR Core Patient Birth List Given name Extension 

Prénoms de l’acte de naissance

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [FR Core Patient Profile](StructureDefinition-fr-core-patient.md)
* Examples for this Extension: [Patient/FRCorePatientINSExample](Patient-FRCorePatientINSExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.core|current/StructureDefinition/StructureDefinition-fr-core-patient-birth-list-given-name.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-core-patient-birth-list-given-name.csv), [Excel](../StructureDefinition-fr-core-patient-birth-list-given-name.xlsx), [Schematron](../StructureDefinition-fr-core-patient-birth-list-given-name.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-patient-birth-list-given-name",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-birth-list-given-name",
  "version" : "2.2.0",
  "name" : "FRCorePatientBirthListGivenName",
  "title" : "FR Core Patient Birth List Given name Extension",
  "status" : "active",
  "date" : "2026-06-29T15:19:05+00:00",
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
  "description" : "Prénoms de l'acte de naissance",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Patient.name"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Dans le cas d’une identité créée ou modifiée par un appel au téléservice INSi, il s’agit de la liste des prénoms retournée par le téléservice. Ce composant contient tous les prénoms du patient, y compris le premier, que l'on retrouve également dans le champ name.given. Il s'agit de la liste des prénoms du patient, qu'elle soit issue d'une saisie locale ou du retour à l'appel au téléservice INSi. Conformément aux spécifications INS, cette liste est constituée des prénoms, séparés par des espaces.",
      "definition" : "Prénoms de l'acte de naissance"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-birth-list-given-name"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
