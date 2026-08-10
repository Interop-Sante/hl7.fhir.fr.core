# FR Core CodeSystem Method Collection - Guide d'implémentation FR Core v2.2.0

## CodeSystem: FR Core CodeSystem Method Collection 

 
Méthode de collection de l’identité 

This Code system is referenced in the definition of the following value sets:

* [FRCoreValueSetIdentityMethodCollection](ValueSet-fr-core-vs-identity-method-collection.md)

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
  "version" : "2.2.0",
  "name" : "FRCoreCodeSystemMethodCollection",
  "title" : "FR Core CodeSystem Method Collection",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-10T14:29:18+00:00",
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
  "count" : 6,
  "concept" : [{
    "code" : "SM",
    "display" : "Saisie manuelle",
    "definition" : "Saisie manuelle des traits d'identité, sans lecture de la carte Vitale ni interrogation du téléservice INSi."
  },
  {
    "code" : "CV",
    "display" : "Carte Vitale",
    "definition" : "Lecture de la carte Vitale physique de l'usager, permettant l'interrogation du téléservice INSi par ce canal."
  },
  {
    "code" : "INSI",
    "display" : "Téléservice INSi",
    "definition" : "Interrogation directe du téléservice INSi par saisie des traits d'identité, sans lecture de la carte Vitale."
  },
  {
    "code" : "CB",
    "display" : "Code à barre",
    "definition" : "Import de l'identité par scan du Datamatrix INS figurant sur un document de santé déjà porteur d'une identité qualifiée."
  },
  {
    "code" : "RFID",
    "display" : "Puce RFID",
    "definition" : "Lecture d'une puce RFID (ex. bracelet patient)"
  },
  {
    "code" : "AV",
    "display" : "Application carte Vitale",
    "definition" : "Obtention directe de l'INS par scan du QR code ou lecture NFC de l'Application carte Vitale ; l'identité ainsi obtenue est considérée comme qualifiée."
  }]
}

```
