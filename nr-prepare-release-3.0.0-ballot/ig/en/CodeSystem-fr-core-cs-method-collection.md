# FR Core CodeSystem Method Collection - Guide d'implémentation FR Core v3.0.0-ballot

## CodeSystem: FR Core CodeSystem Method Collection 

This Code system is referenced in the definition of the following value sets:

* [FR Core ValueSet Identity method collection](ValueSet-fr-core-vs-identity-method-collection.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-method-collection",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-method-collection",
  "version" : "3.0.0-ballot",
  "name" : "FRCoreCodeSystemMethodCollection",
  "title" : "FR Core CodeSystem Method Collection",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-08T19:08:49+00:00",
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
  "description" : "Méthode de collection de l'identité",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "SM",
    "display" : "Saisie manuelle",
    "definition" : "Saisie manuelle"
  },
  {
    "code" : "CV",
    "display" : "Carte vitale",
    "definition" : "Carte vitale"
  },
  {
    "code" : "INSI",
    "display" : "Téléservice INSI",
    "definition" : "Téléservice INSI"
  },
  {
    "code" : "CB",
    "display" : "Code à barre",
    "definition" : "Code à barre"
  },
  {
    "code" : "RFID",
    "display" : "Puce RFID",
    "definition" : "Puce RFID"
  }]
}

```
