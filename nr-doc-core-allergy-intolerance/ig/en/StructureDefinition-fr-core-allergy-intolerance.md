# FR Core AllergyIntolerance Profile - Guide d'implémentation FR Core v2.2.0

## Resource Profile: FR Core AllergyIntolerance Profile 

 
FRCoreAllergyIntoleranceProfile est un profil utilisé pourdécrire une allergie ou une hypersensibilité non allergique ou une intolérance ou une idiosyncrasie. 

**Usages:**

* Examples for this Profile: [AllergyIntolerance/FRCoreAllergyIntoleranceExample](AllergyIntolerance-FRCoreAllergyIntoleranceExample.md), [AllergyIntolerance/FRCoreAllergyIntoleranceExampleHypersensibilite](AllergyIntolerance-FRCoreAllergyIntoleranceExampleHypersensibilite.md), [AllergyIntolerance/FRCoreAllergyIntoleranceExampleIdiosyncrasie](AllergyIntolerance-FRCoreAllergyIntoleranceExampleIdiosyncrasie.md) and [AllergyIntolerance/FRCoreAllergyIntoleranceExampleIntolerance](AllergyIntolerance-FRCoreAllergyIntoleranceExampleIntolerance.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.core|current/StructureDefinition/StructureDefinition-fr-core-allergy-intolerance.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-core-allergy-intolerance.csv), [Excel](../StructureDefinition-fr-core-allergy-intolerance.xlsx), [Schematron](../StructureDefinition-fr-core-allergy-intolerance.sch) 



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
  "date" : "2026-09-17T13:27:58+00:00",
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
      "path" : "AllergyIntolerance",
      "constraint" : [{
        "key" : "fr-core-allergy-intolerance-1",
        "severity" : "warning",
        "human" : "Si type = allergie, les manifestations doivent être codées avec le ValueSet CIM-11 Chapitre 04, Bloc Affections allergiques ou d'hypersensibilité (fr-core-vs-allergyintolerance-manifestation-allergie).",
        "expression" : "type = 'allergy' implies reaction.manifestation.all(memberOf('https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-allergyintolerance-manifestation-allergie'))",
        "source" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-allergy-intolerance|2.2.0"
      },
      {
        "key" : "fr-core-allergy-intolerance-2",
        "severity" : "warning",
        "human" : "Si type = hypersensibilité non allergique, les manifestations doivent être codées avec le ValueSet CIM-11 Chapitre 21 (fr-core-vs-allergyintolerance-manifestation-hypersensibilite).",
        "expression" : "type.extension('http://hl7.org/fhir/5.0/StructureDefinition/extension-AllergyIntolerance.type').value.coding.exists(system = 'http://snomed.info/sct' and code = '609396006') implies reaction.manifestation.all(memberOf('https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-allergyintolerance-manifestation-hypersensibilite'))",
        "source" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-allergy-intolerance|2.2.0"
      },
      {
        "key" : "fr-core-allergy-intolerance-3",
        "severity" : "warning",
        "human" : "Si type = intolérance, les manifestations doivent être codées avec le ValueSet CIM-11 Chapitre 21 (fr-core-vs-allergyintolerance-manifestation-intolerance).",
        "expression" : "type = 'intolerance' implies reaction.manifestation.all(memberOf('https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-allergyintolerance-manifestation-intolerance'))",
        "source" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-allergy-intolerance|2.2.0"
      },
      {
        "key" : "fr-core-allergy-intolerance-4",
        "severity" : "warning",
        "human" : "Si type = idiosyncrasie, les manifestations doivent être codées avec le ValueSet CIM-11 Chapitre 21 (fr-core-vs-allergyintolerance-manifestation-idiosyncrasie).",
        "expression" : "type.extension('http://hl7.org/fhir/5.0/StructureDefinition/extension-AllergyIntolerance.type').value.coding.exists(system = 'http://snomed.info/sct' and code = '56840009') implies reaction.manifestation.all(memberOf('https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-allergyintolerance-manifestation-idiosyncrasie'))",
        "source" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-allergy-intolerance|2.2.0"
      }]
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
      "short" : "Type d'allergie ou d'intolérance"
    },
    {
      "id" : "AllergyIntolerance.type.extension",
      "path" : "AllergyIntolerance.type.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "AllergyIntolerance.type.extension:type",
      "path" : "AllergyIntolerance.type.extension",
      "sliceName" : "type",
      "short" : "Type d'allergie ou d'intolérance étendu (backport R5 : idiosyncrasie, hypersensibilité non allergique)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-AllergyIntolerance.type|0.1.0"]
      }]
    },
    {
      "id" : "AllergyIntolerance.type.extension:type.extension",
      "path" : "AllergyIntolerance.type.extension.extension",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.type.extension:type.value[x]",
      "path" : "AllergyIntolerance.type.extension.value[x]",
      "binding" : {
        "strength" : "preferred",
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
      "short" : "Symptômes/signes cliniques associés à l'événement",
      "binding" : {
        "extension" : [{
          "extension" : [{
            "url" : "purpose",
            "valueCode" : "extensible"
          },
          {
            "url" : "valueSet",
            "valueCanonical" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-allergyintolerance-manifestation-allergie|2.2.0"
          },
          {
            "url" : "documentation",
            "valueMarkdown" : "Si type = allergie : CIM-11 Chapitre 04, Bloc Affections allergiques ou d'hypersensibilité."
          },
          {
            "url" : "shortDoco",
            "valueString" : "Allergie"
          }],
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
        },
        {
          "extension" : [{
            "url" : "purpose",
            "valueCode" : "extensible"
          },
          {
            "url" : "valueSet",
            "valueCanonical" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-allergyintolerance-manifestation-hypersensibilite|2.2.0"
          },
          {
            "url" : "documentation",
            "valueMarkdown" : "Si type = hypersensibilité non allergique : CIM-11 Chapitre 21, Symptômes, signes ou résultats d'examen clinique, non classés ailleurs."
          },
          {
            "url" : "shortDoco",
            "valueString" : "Hypersensibilité non allergique"
          }],
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
        },
        {
          "extension" : [{
            "url" : "purpose",
            "valueCode" : "extensible"
          },
          {
            "url" : "valueSet",
            "valueCanonical" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-allergyintolerance-manifestation-intolerance|2.2.0"
          },
          {
            "url" : "documentation",
            "valueMarkdown" : "Si type = intolérance : CIM-11 Chapitre 21, Symptômes, signes ou résultats d'examen clinique, non classés ailleurs."
          },
          {
            "url" : "shortDoco",
            "valueString" : "Intolérance"
          }],
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
        },
        {
          "extension" : [{
            "url" : "purpose",
            "valueCode" : "extensible"
          },
          {
            "url" : "valueSet",
            "valueCanonical" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-allergyintolerance-manifestation-idiosyncrasie|2.2.0"
          },
          {
            "url" : "documentation",
            "valueMarkdown" : "Si type = idiosyncrasie : CIM-11 Chapitre 21, Symptômes, signes ou résultats d'examen clinique, non classés ailleurs."
          },
          {
            "url" : "shortDoco",
            "valueString" : "Idiosyncrasie"
          }],
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
        }],
        "strength" : "preferred",
        "description" : "Type of allergy or intolerance reaction expected to be used in MyHealth@EU",
        "valueSet" : "http://hl7.org/fhir/uv/ips/ValueSet/allergy-reaction-uv-ips"
      }
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
    }]
  }
}

```
