# FR Core CodeSystem Mode Validation Identite - Guide d'implémentation FR Core v2.2.0

## CodeSystem: FR Core CodeSystem Mode Validation Identite 

 
Mode de validation de l’identité 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* [FRCoreValueSetModeValidationIdentity](ValueSet-fr-core-vs-mode-validation-identity.md)
* [FRCoreValueSetModeValidationIdentityINS](ValueSet-fr-core-vs-mode-validation-identity-ins.md)

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
  "version" : "2.2.0",
  "name" : "FRCoreCodeSystemModeValidationIdentite",
  "title" : "FR Core CodeSystem Mode Validation Identite",
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
  "count" : 14,
  "concept" : [{
    "code" : "AN",
    "display" : "Extrait d'acte de naissance",
    "definition" : "Extrait d'acte de naissance"
  },
  {
    "code" : "CC",
    "display" : "Carnet de circulation",
    "definition" : "Carnet de circulation"
  },
  {
    "code" : "CE",
    "display" : "Carte Européenne",
    "definition" : "Carte Européenne"
  },
  {
    "code" : "CN",
    "display" : "Carte nationale d'identité",
    "definition" : "Carte nationale d'identité"
  },
  {
    "code" : "LE",
    "display" : "Livret de famille",
    "definition" : "Livret de famille"
  },
  {
    "code" : "PA",
    "display" : "Passeport",
    "definition" : "Passeport"
  },
  {
    "code" : "PC",
    "display" : "Permis de conduire",
    "definition" : "Permis de conduire"
  },
  {
    "code" : "TC",
    "display" : "Tiers de confiance",
    "definition" : "Tiers de confiance"
  },
  {
    "code" : "AC",
    "display" : "Acte de naissance + Carte vitale avec photo",
    "definition" : "Acte de naissance + Carte vitale avec photo"
  },
  {
    "code" : "AV",
    "display" : "Application Carte Vitale",
    "definition" : "Application Carte Vitale"
  },
  {
    "code" : "CS",
    "display" : "Carte de séjour",
    "definition" : "Carte de séjour ou titre de séjour"
  },
  {
    "code" : "IE",
    "display" : "Identification électronique EIDAS",
    "definition" : "Identification électronique EIDAS"
  },
  {
    "code" : "DC",
    "display" : "Document de Circulation pour étranger mineur",
    "definition" : "Document de Circulation pour étranger mineur"
  },
  {
    "code" : "CM",
    "display" : "Carte militaire",
    "definition" : "Carte militaire"
  }]
}

```
