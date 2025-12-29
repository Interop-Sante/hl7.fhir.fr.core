# FR Core Patient Birth List Given name Extension - Guide d'implémentation FR Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Patient Birth List Given name Extension**

## Extension: FR Core Patient Birth List Given name Extension 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-birth-list-given-name | *Version*:2.2.0-ballot |
| Active as of 2025-12-29 | *Computable Name*:FRCorePatientBirthListGivenName |

Prénoms de l’acte de naissance

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [FR Core Patient Profile](StructureDefinition-fr-core-patient.md)
* Exemples pour ce Extension: [Patient/FRCorePatientExample](Patient-FRCorePatientExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-patient-birth-list-given-name)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-patient-birth-list-given-name.csv), [Excel](StructureDefinition-fr-core-patient-birth-list-given-name.xlsx), [Schematron](StructureDefinition-fr-core-patient-birth-list-given-name.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-patient-birth-list-given-name",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-birth-list-given-name",
  "version" : "2.2.0-ballot",
  "name" : "FRCorePatientBirthListGivenName",
  "title" : "FR Core Patient Birth List Given name Extension",
  "status" : "active",
  "date" : "2025-12-29T10:22:56+00:00",
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
  "description" : "Prénoms de l'acte de naissance",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Patient.name"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
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
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
