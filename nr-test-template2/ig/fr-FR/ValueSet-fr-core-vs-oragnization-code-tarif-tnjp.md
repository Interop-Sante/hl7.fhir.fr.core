# FR Core ValueSet Codes Tarifs - nomenclature TNJP - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Codes Tarifs - nomenclature TNJP 

 
Valeurs permettant de coder les codes TNJP (Tarification nationale journalière des prestations). 

 **References** 

* [FR Core Organization Extension - Tarif Soin](StructureDefinition-fr-core-organization-tarif.md)

### Définition logique (CLD)

 

### 

-------

 . 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-oragnization-code-tarif-tnjp",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-oragnization-code-tarif-tnjp",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetOrganizationCodeTarifTNJP",
  "title" : "FR Core ValueSet Codes Tarifs - nomenclature TNJP",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Valeurs permettant de coder les codes TNJP (Tarification nationale journalière des prestations).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-code-tarif-tnjp",
      "version" : "2.2.0"
    }]
  }
}

```
