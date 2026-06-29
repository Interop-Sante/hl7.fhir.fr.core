# FR Core AllergyIntolerance Profile - Guide d'implémentation FR Core v2.2.0

## : FR Core AllergyIntolerance Profile 

 
FRCoreAllergyIntoleranceProfile est un profil utilisé pourdécrire une allergie ou une hypersensibilité non allergique ou une intolérance ou une idiosyncrasie. 

**Utilisations:**

* Ce Profil n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-allergy-intolerance)

### 

 . 

*   
*   
*   
*   

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

** Résumé **

Obligatoire : 0 élément(1 élément obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Patient INS Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins|2.2.0)](StructureDefinition-fr-core-patient-ins.md)
* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0)](StructureDefinition-fr-core-patient.md)

#### Bindings terminologiques (différentiel)

 **View** 

#### Bindings terminologiques

#### Contraintes

** Résumé **

Obligatoire : 0 élément(1 élément obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Patient INS Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins|2.2.0)](StructureDefinition-fr-core-patient-ins.md)
* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0)](StructureDefinition-fr-core-patient.md)

 

 ,  



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-allergy-intolerance",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-allergy-intolerance",
  "version" : "2.2.0",
  "name" : "FRCoreAllergyIntoleranceProfile",
  "title" : "FR Core AllergyIntolerance Profile",
  "status" : "active",
  "date" : "2026-06-29T09:28:38+00:00",
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
  "description" : "FRCoreAllergyIntoleranceProfile est un profil utilisé pourdécrire une allergie ou une hypersensibilité non allergique ou une intolérance ou une idiosyncrasie.",
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
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AllergyIntolerance",
  "baseDefinition" : "http://hl7.eu/fhir/base/StructureDefinition/allergyIntolerance-eu-core|2.0.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "AllergyIntolerance",
      "path" : "AllergyIntolerance"
    },
    {
      "id" : "AllergyIntolerance.clinicalStatus",
      "path" : "AllergyIntolerance.clinicalStatus",
      "short" : "Statut clinique"
    },
    {
      "id" : "AllergyIntolerance.verificationStatus",
      "path" : "AllergyIntolerance.verificationStatus",
      "short" : "Certitude"
    },
    {
      "id" : "AllergyIntolerance.type",
      "path" : "AllergyIntolerance.type",
      "short" : "Type d'allergie ou d'intolérance",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-allergy-intolerance-type|2.2.0"
      }
    },
    {
      "id" : "AllergyIntolerance.criticality",
      "path" : "AllergyIntolerance.criticality",
      "short" : "Criticité"
    },
    {
      "id" : "AllergyIntolerance.code",
      "path" : "AllergyIntolerance.code",
      "short" : "agent allergique",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-allergy-code|2.2.0"
      }
    },
    {
      "id" : "AllergyIntolerance.patient",
      "path" : "AllergyIntolerance.patient",
      "short" : "Patient concerné par l'allergie ou intolérance",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins|2.2.0",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0"]
      }]
    },
    {
      "id" : "AllergyIntolerance.onset[x]",
      "path" : "AllergyIntolerance.onset[x]",
      "short" : "Date d'identification d'allergie ou d'intolérance"
    },
    {
      "id" : "AllergyIntolerance.onset[x]:onsetPeriod",
      "path" : "AllergyIntolerance.onset[x]",
      "sliceName" : "onsetPeriod",
      "short" : "Dates de début et de fin",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "AllergyIntolerance.onset[x]:onsetPeriod.start",
      "path" : "AllergyIntolerance.onset[x].start",
      "min" : 1
    },
    {
      "id" : "AllergyIntolerance.reaction",
      "path" : "AllergyIntolerance.reaction",
      "short" : "Réaction observée"
    },
    {
      "id" : "AllergyIntolerance.reaction.substance",
      "path" : "AllergyIntolerance.reaction.substance",
      "short" : "Substance responsable de la réaction",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-allergy-substance|2.2.0"
      }
    },
    {
      "id" : "AllergyIntolerance.reaction.manifestation",
      "path" : "AllergyIntolerance.reaction.manifestation",
      "short" : "Symptômes/signes cliniques associés à l'événement"
    },
    {
      "id" : "AllergyIntolerance.reaction.onset",
      "path" : "AllergyIntolerance.reaction.onset",
      "short" : "Dates de début et de fin du problème"
    },
    {
      "id" : "AllergyIntolerance.reaction.severity",
      "path" : "AllergyIntolerance.reaction.severity",
      "short" : "Sévérité"
    },
    {
      "id" : "AllergyIntolerance.reaction.note",
      "path" : "AllergyIntolerance.reaction.note",
      "short" : "Commentaire",
      "max" : "1"
    }]
  }
}

```
