# FR Core BodyStructure Profile - Guide d'implémentation FR Core v2.2.0

## Resource Profile: FR Core BodyStructure Profile 

 
FRCoreBodyStructureProfile est un profil FRCore utilisé pour préciser les modificateurs topographiques associés à une localisation anatomique. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.core|current/StructureDefinition/StructureDefinition-fr-core-body-structure.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-core-body-structure.csv), [Excel](../StructureDefinition-fr-core-body-structure.xlsx), [Schematron](../StructureDefinition-fr-core-body-structure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-body-structure",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-body-structure",
  "version" : "2.2.0",
  "name" : "FRCoreBodyStructureProfile",
  "title" : "FR Core BodyStructure Profile",
  "status" : "active",
  "date" : "2026-07-21T12:10:10+00:00",
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
  "description" : "FRCoreBodyStructureProfile est un profil FRCore utilisé pour préciser les modificateurs topographiques associés à une localisation anatomique.",
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
    "identity" : "openehr",
    "uri" : "http://openehr.org",
    "name" : "Open EHR Archetype Mapping"
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
  "type" : "BodyStructure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/BodyStructure|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "BodyStructure",
      "path" : "BodyStructure"
    },
    {
      "id" : "BodyStructure.location",
      "path" : "BodyStructure.location",
      "short" : "Localisation anatomique ou voie d'abord",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-body-structure-location|2.2.0"
      }
    },
    {
      "id" : "BodyStructure.locationQualifier",
      "path" : "BodyStructure.locationQualifier",
      "short" : "Modificateurs topographiques",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modificateur-topographique-cisis|20260619134042"
      }
    }]
  }
}

```
