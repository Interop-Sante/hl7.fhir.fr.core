# FR Core Method Extension - Guide d'implémentation FR Core v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Method Extension**

## Extension: FR Core Method Extension 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-method-extension | *Version*:2.2.0 |
| Active as of 2026-06-15 | *Computable Name*:FRCoreMethodExtension |

Extension permettant d’indiquer la méthode utilisée : techniques biologiques (ex. : titration, agglutination…), techniques d’imagerie dans les demandes d’examen (ultrasound, tomographie, IRM…), des méthodes de mesure spécifiques, etc.

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [FR Core ServiceRequest Profile](StructureDefinition-fr-core-service-request.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-method-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-method-extension.csv), [Excel](StructureDefinition-fr-core-method-extension.xlsx), [Schematron](StructureDefinition-fr-core-method-extension.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-method-extension",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-method-extension",
  "version" : "2.2.0",
  "name" : "FRCoreMethodExtension",
  "title" : "FR Core Method Extension",
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
  "description" : "Extension permettant d'indiquer la méthode utilisée : techniques biologiques (ex. : titration, agglutination…), techniques d'imagerie dans les demandes d'examen (ultrasound, tomographie, IRM…), des méthodes de mesure spécifiques, etc.",
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
    "expression" : "FamilyMemberHistory"
  },
  {
    "type" : "element",
    "expression" : "ServiceRequest"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "FR Core Method Extension",
      "definition" : "Extension permettant d'indiquer la méthode utilisée : techniques biologiques (ex. : titration, agglutination…), techniques d'imagerie dans les demandes d'examen (ultrasound, tomographie, IRM…), des méthodes de mesure spécifiques, etc."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-method-extension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Méthode utilisée",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationMethod-cisis|20260420150249"
      }
    }]
  }
}

```
