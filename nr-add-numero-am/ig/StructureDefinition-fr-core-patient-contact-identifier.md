# FR Core Patient Contact Identifier Extension - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Patient Contact Identifier Extension**

## Extension: FR Core Patient Contact Identifier Extension 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-contact-identifier | *Version*:2.2.0-ballot |
| Active as of 2026-01-12 | *Computable Name*:FRCorePatientContactIdentifierExtension |

Identifiant de contact dans la ressource Patient

This extension carries the contact identifier in the patient resource

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [FR Core Patient Profile](StructureDefinition-fr-core-patient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-patient-contact-identifier)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-patient-contact-identifier.csv), [Excel](StructureDefinition-fr-core-patient-contact-identifier.xlsx), [Schematron](StructureDefinition-fr-core-patient-contact-identifier.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-patient-contact-identifier",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-contact-identifier",
  "version" : "2.2.0-ballot",
  "name" : "FRCorePatientContactIdentifierExtension",
  "title" : "FR Core Patient Contact Identifier Extension",
  "status" : "active",
  "date" : "2026-01-12T09:29:04+00:00",
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
  "description" : "Identifiant de contact dans la ressource Patient\n\rThis extension carries the contact identifier in the patient resource",
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
      "expression" : "Patient.contact"
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
        "short" : "FR Core Patient Contact Identifier Extension",
        "definition" : "Identifiant de contact dans la ressource Patient\n\rThis extension carries the contact identifier in the patient resource"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-contact-identifier"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      }
    ]
  }
}

```
