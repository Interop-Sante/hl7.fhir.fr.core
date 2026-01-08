# Rang Gémellaire - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Rang Gémellaire**

## Extension: Rang Gémellaire 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/5.0/StructureDefinition/extension-Patient.multipleBirth | *Version*:2.2.0-ballot |
| Active as of 2026-01-08 | *Computable Name*:FRCorePatientMultipleBirthExtension |

Extension créée pour exprimer le rang gémellaire, notamment utile dans le cadre des attestations de droits à l’assurance maladie. Cette extension implemente l’élément PatientMultipleBirth de R5 https://www.hl7.org/fhir/patient-definitions.html#Patient.multipleBirth_x.

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [FR Core Patient Profile](StructureDefinition-fr-core-patient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-patient-multiple-birth-r5)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-patient-multiple-birth-r5.csv), [Excel](StructureDefinition-fr-core-patient-multiple-birth-r5.xlsx), [Schematron](StructureDefinition-fr-core-patient-multiple-birth-r5.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-patient-multiple-birth-r5",
  "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Patient.multipleBirth",
  "version" : "2.2.0-ballot",
  "name" : "FRCorePatientMultipleBirthExtension",
  "title" : "Rang Gémellaire",
  "status" : "active",
  "date" : "2026-01-08T13:12:39+00:00",
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
  "description" : "Extension créée pour exprimer le rang gémellaire, notamment utile dans le cadre des attestations de droits à l'assurance maladie. Cette extension implemente l'élément PatientMultipleBirth de R5 https://www.hl7.org/fhir/patient-definitions.html#Patient.multipleBirth_x.",
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
      "expression" : "Patient"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Rang Gémellaire",
        "definition" : "Extension créée pour exprimer le rang gémellaire, notamment utile dans le cadre des attestations de droits à l'assurance maladie. Cette extension implemente l'élément PatientMultipleBirth de R5 https://www.hl7.org/fhir/patient-definitions.html#Patient.multipleBirth_x."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Patient.multipleBirth"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Indicates the actual birth order (integer).",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      }
    ]
  }
}

```
