# FR Core Organization Extension - Tarif Soin - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Organization Extension - Tarif Soin**

## Extension: FR Core Organization Extension - Tarif Soin 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-tarif | *Version*:2.2.0-ballot-2 |
| Active as of 2026-01-29 | *Computable Name*:FRCoreOrganizationTarifExtension |

Tarif de soin associé à l’unité d’activité (UAC, parfois appelé PAC). Le PAC ou l’UAC est le niveau élémentaire de recueil des activités en vue de la facturation. Il est lié à une discipline de prestation et à un tarif (lié à la discipline de prestation). Le PAC ne sert qu’à la facturation du séjour. Il permet d’associer des tarifs de soins différents pour la prise en charge d’un patient.

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [FR Core Organization UAC Profile](StructureDefinition-fr-core-organization-uac.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-organization-tarif)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-organization-tarif.csv), [Excel](StructureDefinition-fr-core-organization-tarif.xlsx), [Schematron](StructureDefinition-fr-core-organization-tarif.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-organization-tarif",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-tarif",
  "version" : "2.2.0-ballot-2",
  "name" : "FRCoreOrganizationTarifExtension",
  "title" : "FR Core Organization Extension - Tarif Soin",
  "status" : "active",
  "date" : "2026-01-29T08:41:18+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [
    {
      "name" : "Interop'Santé",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://interopsante.org"
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
  "description" : "Tarif de soin associé à l'unité d'activité (UAC, parfois appelé PAC). Le PAC ou l’UAC est le niveau élémentaire de recueil des activités en vue de la facturation. Il est lié à une discipline de prestation et à un tarif (lié à la discipline de prestation). Le PAC ne sert qu’à la facturation du séjour. Il permet d’associer des tarifs de soins différents pour la prise en charge d’un patient.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FRA",
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
      "expression" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uac#Organization"
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
        "short" : "FR Core Organization Extension - Tarif Soin",
        "definition" : "Tarif de soin associé à l'unité d'activité (UAC, parfois appelé PAC). Le PAC ou l’UAC est le niveau élémentaire de recueil des activités en vue de la facturation. Il est lié à une discipline de prestation et à un tarif (lié à la discipline de prestation). Le PAC ne sert qu’à la facturation du séjour. Il permet d’associer des tarifs de soins différents pour la prise en charge d’un patient."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-tarif"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-oragnization-code-tarif-tnjp|2.2.0-ballot-2"
        }
      }
    ]
  }
}

```
