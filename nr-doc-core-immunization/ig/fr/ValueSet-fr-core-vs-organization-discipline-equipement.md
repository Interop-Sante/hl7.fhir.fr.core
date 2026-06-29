# FR Core ValueSet Organization Discipline d'Equipement - nomenclature SAE - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Organization Discipline d'Equipement - nomenclature SAE 

 
Valeurs permettant de coder les disciplines d’équipement. 

 **References** 

* [FR Core Organization Extension - Discipline d'équipement](StructureDefinition-fr-core-organization-discipline-equipement.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-organization-discipline-equipement",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-organization-discipline-equipement",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetOrganizationDisciplineEquipement",
  "title" : "FR Core ValueSet Organization Discipline d'Equipement - nomenclature SAE",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-29T10:03:57+00:00",
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
  "description" : "Valeurs permettant de coder les disciplines d'équipement.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-discipline-equipement",
      "version" : "2.2.0"
    }]
  }
}

```
