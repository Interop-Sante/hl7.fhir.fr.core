# FR Core Patient Death Place Extension - Guide d'implémentation FR Core v2.2.0

## Extension: FR Core Patient Death Place Extension 

Précise le lieu de décès du patient (hôpital, sur la voie publique, au domicile, etc.).

Carries the death place of the patient

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [FR Core Patient Profile](StructureDefinition-fr-core-patient.md)
* Examples for this Extension: [Patient/FRCorePatientDeceasedExample](Patient-FRCorePatientDeceasedExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.core|current/StructureDefinition/StructureDefinition-fr-core-patient-death-place.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-core-patient-death-place.csv), [Excel](../StructureDefinition-fr-core-patient-death-place.xlsx), [Schematron](../StructureDefinition-fr-core-patient-death-place.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-patient-death-place",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-death-place",
  "version" : "2.2.0",
  "name" : "FRCorePatientDeathPlaceExtension",
  "title" : "FR Core Patient Death Place Extension",
  "status" : "active",
  "date" : "2026-06-29T10:25:23+00:00",
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
  "description" : "Précise le lieu de décès du patient (hôpital, sur la voie publique, au domicile, etc.).\n\rCarries the death place of the patient",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "purpose" : "Place where the patient is dead.",
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
    "expression" : "Patient"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
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
      "short" : "Lieu de décès du patient | Place where the patient is dead",
      "type" : [{
        "code" : "Address",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address|2.2.0"]
      }]
    }]
  }
}

```
