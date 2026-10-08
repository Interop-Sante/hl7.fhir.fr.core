# FR Core CodeSystem Mode Validation Identite - Guide d'implémentation FR Core v3.0.0-ballot

## CodeSystem: FR Core CodeSystem Mode Validation Identite 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* [FR Core ValueSet Mode validation identity](ValueSet-fr-core-vs-mode-validation-identity.md)
* [FR Core ValueSet Mode validation identity INS](ValueSet-fr-core-vs-mode-validation-identity-ins.md)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-mode-validation-identity",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-mode-validation-identity",
  "version" : "3.0.0-ballot",
  "name" : "FRCoreCodeSystemModeValidationIdentite",
  "title" : "FR Core CodeSystem Mode Validation Identite",
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
  "description" : "Mode de validation de l'identité",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 15,
  "concept" : [{
    "code" : "CN",
    "display" : "Carte nationale d'identité",
    "definition" : "Carte nationale d'identité"
  },
  {
    "code" : "PA",
    "display" : "Passeport",
    "definition" : "Passeport"
  },
  {
    "code" : "CS",
    "display" : "Carte de séjour",
    "definition" : "Carte de séjour ou titre de séjour"
  },
  {
    "code" : "eCN",
    "display" : "e-carte d'identité",
    "definition" : "e-carte d'identité"
  },
  {
    "code" : "IN",
    "display" : "Identité Numérique La Poste",
    "definition" : "Identité Numérique La Poste"
  },
  {
    "code" : "AV",
    "display" : "Application Carte Vitale",
    "definition" : "Application Carte Vitale"
  },
  {
    "code" : "LECV",
    "display" : "Livret de famille, accompagné de la carte Vitale avec photographie",
    "definition" : "Livret de famille, accompagné de la carte Vitale avec photographie"
  },
  {
    "code" : "AN",
    "display" : "Extrait d'acte de naissance",
    "definition" : "Extrait d'acte de naissance"
  },
  {
    "code" : "LE",
    "display" : "Livret de famille des parents",
    "definition" : "Livret de famille des parents"
  },
  {
    "code" : "CC",
    "display" : "Carnet de circulation",
    "definition" : "Carnet de circulation pour étranger mineur"
  },
  {
    "code" : "CIMS",
    "display" : "Carte d'identité professionnelle multiservices (CIMS)",
    "definition" : "Carte d'identité professionnelle multiservices (CIMS)"
  },
  {
    "code" : "ANCV",
    "display" : "Extrait d'acte de naissance, accompagné de la carte Vitale avec photographie",
    "definition" : "Extrait d'acte de naissance, accompagné de la carte Vitale avec photographie"
  },
  {
    "code" : "IE",
    "display" : "Identification électronique EIDAS",
    "definition" : "Identification électronique EIDAS"
  },
  {
    "code" : "CM",
    "display" : "Carte militaire",
    "definition" : "Carte militaire"
  },
  {
    "code" : "PC",
    "display" : "Permis de conduire",
    "definition" : "Permis de conduire"
  }]
}

```
