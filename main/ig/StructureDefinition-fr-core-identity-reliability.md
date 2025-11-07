# FR Core Patient Ident Reliability Extension - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Patient Ident Reliability Extension**

## Extension: FR Core Patient Ident Reliability Extension 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability | *Version*:2.2.0-ballot |
| Active as of 2025-11-07 | *Computable Name*:FRCorePatientIdentityReliabilityExtension |

Précision sur le degré de fiabilité de l’identité du patient (si provisoire, validé… avec la justification : quelle type de pièce d’identité ?) accompagné de la méthode de collection.

Reliabilility of the patient’s identity

Permet de préciser le degré de fiabilité de l’identité du patient Reliabilility of the patient’s identity

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [FR Core Patient Profile](StructureDefinition-fr-core-patient.md)
* Examples for this Extension: [Patient/FRCorePatientExample](Patient-FRCorePatientExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-identity-reliability)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-identity-reliability.csv), [Excel](StructureDefinition-fr-core-identity-reliability.xlsx), [Schematron](StructureDefinition-fr-core-identity-reliability.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-identity-reliability",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability",
  "version" : "2.2.0-ballot",
  "name" : "FRCorePatientIdentityReliabilityExtension",
  "title" : "FR Core Patient Ident Reliability Extension",
  "status" : "active",
  "date" : "2025-11-07T16:50:39+00:00",
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
  "description" : "Précision sur le degré de fiabilité de l'identité du patient (si provisoire, validé... avec la justification : quelle type de pièce d'identité ?) accompagné de la méthode de collection.\n\rReliabilility of the patient's identity",
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
  "purpose" : "Permet de préciser le degré de fiabilité de l'identité du patient\r\nReliabilility of the patient's identity",
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
        "short" : "Reliabilility of the identity | Fiabilité de l'identité",
        "definition" : "Précision sur le degré de fiabilité de l'identité du patient (si provisoire, validé... avec la justification : quelle type de pièce d'identité ?) accompagné de la méthode de collection.\n\rReliabilility of the patient's identity"
      },
      {
        "id" : "Extension.extension:methodCollection",
        "path" : "Extension.extension",
        "sliceName" : "methodCollection",
        "short" : "The way the INS identity is collected | Mode d'obtention de l'INS (SM, CV, INSI, ...)",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:methodCollection.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:methodCollection.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "methodCollection"
      },
      {
        "id" : "Extension.extension:methodCollection.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-identity-method-collection"
        }
      },
      {
        "id" : "Extension.extension:dateCollection",
        "path" : "Extension.extension",
        "sliceName" : "dateCollection",
        "short" : "INS collection date| date d'interrogation du téléservice INSi",
        "definition" : "INS collection date| date d'interrogation du téléservice INSi",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:dateCollection.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:dateCollection.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "dateCollection"
      },
      {
        "id" : "Extension.extension:dateCollection.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "Extension.extension:identityStatus",
        "path" : "Extension.extension",
        "sliceName" : "identityStatus",
        "short" : "Il s'agit du statut de l'identité (VALI | PROV | FICT | DOUT | ...). Dans certains cas il peut également être nécessaire de véhiculer, la notion d’attribut d’identité. Les combinaisons autorisées entre statuts et attributs sont décrites dans le Référentiel National d’Identito-Vigilance.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:identityStatus.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:identityStatus.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "identityStatus"
      },
      {
        "id" : "Extension.extension:identityStatus.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-identity-reliability"
        }
      },
      {
        "id" : "Extension.extension:validationDate",
        "path" : "Extension.extension",
        "sliceName" : "validationDate",
        "short" : "Date de vérification de l'identité",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:validationDate.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:validationDate.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "validationDate"
      },
      {
        "id" : "Extension.extension:validationDate.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "Extension.extension:validationMode",
        "path" : "Extension.extension",
        "sliceName" : "validationMode",
        "short" : "Spécifie le type de document qui a été contrôlé par l'agent d'admission pour justifier le statut de l'identité. Seuls certains types de pièces définis dans le RNIV permettent de valider une identité (CN | PA | CS | ... )",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:validationMode.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:validationMode.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "validationMode"
      },
      {
        "id" : "Extension.extension:validationMode.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-mode-validation-identity"
        }
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
