# FR Core ValueSet Organization Type Activité - nomenclature SAE - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Organization Type Activité - nomenclature SAE 

 
Valeurs permettant de coder les types d’activité. 

 **References** 

* [FR Core Organization Extension - Type d'activité](StructureDefinition-fr-core-organization-type-activite.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-oragnization-type-activite",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-oragnization-type-activite",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetOrganizationTypeActivite",
  "title" : "FR Core ValueSet Organization Type Activité - nomenclature SAE",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-29T12:42:10+00:00",
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
  "description" : "Valeurs permettant de coder les types d'activité.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-type-activite",
      "version" : "2.2.0"
    }]
  }
}

```
