# FR Core ValueSet Organization Discipline de prestation - nomenclature SAE - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Organization Discipline de prestation - nomenclature SAE 

 
Valeurs permettant de coder les disciplines de prestation. 

 **References** 

* [FR Core Organization Extension - Discipline Prestation](StructureDefinition-fr-core-organization-discipline-prestation.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-discipline-prestation",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-discipline-prestation",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetDisciplinePrestation",
  "title" : "FR Core ValueSet Organization Discipline de prestation - nomenclature SAE",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Valeurs permettant de coder les disciplines de prestation.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-discipline-prestation",
      "version" : "2.2.0"
    }]
  }
}

```
