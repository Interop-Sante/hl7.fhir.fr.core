# FR Core Patient Death Place Extension - Guide d'implémentation FR Core v2.2.0

## : FR Core Patient Death Place Extension 

Précise le lieu de décès du patient (hôpital, sur la voie publique, au domicile, etc.).

Carries the death place of the patient

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [FR Core Patient Profile](StructureDefinition-fr-core-patient.md)
* Exemples pour ce/t/te Extension: [Patient/FRCorePatientDeceasedExample](Patient-FRCorePatientDeceasedExample.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-patient-death-place)

### 

 . 

*   
*   
*   
*   

#### Contraintes

** Résumé **

Extension simple avec le type Address : Précise le lieu de décès du patient (hôpital, sur la voie publique, au domicile, etc.).

Carries the death place of the patient

 **Differential View** 

#### Contraintes

** Résumé **

Extension simple avec le type Address : Précise le lieu de décès du patient (hôpital, sur la voie publique, au domicile, etc.).

Carries the death place of the patient

 

 , ,  



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
  "date" : "2026-06-04T15:08:19+00:00",
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
