# FR Core ValueSet BodyStructure location - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet BodyStructure location 

 
Codes SNOMED CT autorisés pour décrire une localisation anatomique ou une voie d’abord. Inclut : 
* Les structures anatomiques pour body site : http://hl7.org/fhir/ValueSet/body-site
* Les structures anatomiques pour voie d’abord (approach-site-codes) : http://hl7.org/fhir/ValueSet/approach-site-codes
 

 **References** 

* [FR Core BodyStructure Profile](StructureDefinition-fr-core-body-structure.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-body-structure-location",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-body-structure-location",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetBodyStructureLocation",
  "title" : "FR Core ValueSet BodyStructure location",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-28T09:03:50+00:00",
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
  "description" : "Codes SNOMED CT autorisés pour décrire une localisation anatomique ou une voie d'abord.\nInclut :\n- Les structures anatomiques pour body site : http://hl7.org/fhir/ValueSet/body-site\n- Les structures anatomiques pour voie d'abord (approach-site-codes) : http://hl7.org/fhir/ValueSet/approach-site-codes",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "valueSet" : ["http://hl7.org/fhir/ValueSet/body-site|4.0.1"]
    },
    {
      "valueSet" : ["http://hl7.org/fhir/ValueSet/approach-site-codes|4.0.1"]
    }]
  }
}

```
