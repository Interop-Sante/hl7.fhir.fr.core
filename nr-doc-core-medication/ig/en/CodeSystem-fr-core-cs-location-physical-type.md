# FR Core CodeSystem Location Physical Type - Guide d'implémentation FR Core v2.2.0

## CodeSystem: FR Core CodeSystem Location Physical Type 

 
Location physical type 

This Code system is referenced in the definition of the following value sets:

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-location-physical-type",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-physical-type",
  "version" : "2.2.0",
  "name" : "FRCoreCodeSystemLocationPhysicalType",
  "title" : "FR Core CodeSystem Location Physical Type",
  "status" : "draft",
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
  "description" : "Location physical type",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 12,
  "concept" : [{
    "code" : "FTL",
    "display" : "Emplacement fauteuil",
    "definition" : "Emplacement fauteuil"
  },
  {
    "code" : "BTMNT",
    "display" : "Bâtiment",
    "definition" : "Bâtiment"
  },
  {
    "code" : "L",
    "display" : "Lieu non spécifié",
    "definition" : "Lieu non spécifié"
  },
  {
    "code" : "ETG",
    "display" : "Etage",
    "definition" : "Etage"
  },
  {
    "code" : "AL",
    "display" : "Aile",
    "definition" : "Aile"
  },
  {
    "code" : "CLR",
    "display" : "Couloir",
    "definition" : "Couloir"
  },
  {
    "code" : "R",
    "display" : "Chambre",
    "definition" : "Chambre"
  },
  {
    "code" : "BX",
    "display" : "Box",
    "definition" : "Box"
  },
  {
    "code" : "PT",
    "display" : "Point",
    "definition" : "Point"
  },
  {
    "code" : "B",
    "display" : "Emplacement lit",
    "definition" : "Emplacement lit"
  },
  {
    "code" : "BLC",
    "display" : "Bloc",
    "definition" : "Bloc"
  },
  {
    "code" : "BR",
    "display" : "Bureau",
    "definition" : "Bureau"
  }]
}

```
