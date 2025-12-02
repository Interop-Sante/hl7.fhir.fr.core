# FR Core Patient Death Place Extension - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Patient Death Place Extension**

## Extension: FR Core Patient Death Place Extension 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-death-place | *Version*:2.2.0-ballot |
| Active as of 2025-12-02 | *Computable Name*:FRCorePatientDeathPlaceExtension |

Précise le lieu de décès du patient (hôpital, sur la voie publique, au domicile, etc.).

Carries the death place of the patient

Place where the patient is dead.

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [FR Core Patient Profile](StructureDefinition-fr-core-patient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-patient-death-place)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-patient-death-place.csv), [Excel](StructureDefinition-fr-core-patient-death-place.xlsx), [Schematron](StructureDefinition-fr-core-patient-death-place.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-patient-death-place",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-death-place",
  "version" : "2.2.0-ballot",
  "name" : "FRCorePatientDeathPlaceExtension",
  "title" : "FR Core Patient Death Place Extension",
  "status" : "active",
  "date" : "2025-12-02T21:43:16+00:00",
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
  "description" : "Précise le lieu de décès du patient (hôpital, sur la voie publique, au domicile, etc.).\n\rCarries the death place of the patient",
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
  "purpose" : "Place where the patient is dead.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "FR Core Patient Death Place Extension",
        "definition" : "Précise le lieu de décès du patient (hôpital, sur la voie publique, au domicile, etc.).\n\rCarries the death place of the patient"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-death-place"
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
