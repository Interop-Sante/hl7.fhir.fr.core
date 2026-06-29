# FR Core ValueSet Organization type - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Organization type 

 
Types de structures 

 **References** 

* [FR Core Organization Profile](StructureDefinition-fr-core-organization.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-organization-type",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-organization-type",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetOrganizationType",
  "title" : "FR Core ValueSet Organization type",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-29T09:30:52+00:00",
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
  "description" : "Types de structures",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307",
      "version" : "2.2.0",
      "concept" : [{
        "code" : "GHT",
        "display" : "Groupement hospitalier de territoire"
      },
      {
        "code" : "GROUP",
        "display" : "Groupe privé/hospitalier"
      },
      {
        "code" : "STRUCT-INTERNE",
        "display" : "Structure interne"
      },
      {
        "code" : "SECTEUR",
        "display" : "Secteur"
      },
      {
        "code" : "DEPARTEMENT",
        "display" : "Département"
      },
      {
        "code" : "SERVICE",
        "display" : "Service"
      },
      {
        "code" : "UM",
        "display" : "Unité médicale"
      },
      {
        "code" : "POLE",
        "display" : "Pôle"
      },
      {
        "code" : "CENTRE-RESP",
        "display" : "Centre de responsabilité"
      },
      {
        "code" : "CENTRE-ACTIVITE",
        "display" : "Centre d'activité"
      }]
    }]
  }
}

```
