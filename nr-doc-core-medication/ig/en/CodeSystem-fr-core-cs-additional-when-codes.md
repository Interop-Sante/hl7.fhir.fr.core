# FR Core CodeSystem Additional When Codes - Guide d'implémentation FR Core v2.2.0

## CodeSystem: FR Core CodeSystem Additional When Codes 

 
Codes additionnels pour des périodes d’occurrence qui ne sont pas définies dans FHIR. 

This Code system is referenced in the definition of the following value sets:

* [FRCoreValueSetAdditionalWhenCodes](ValueSet-fr-core-vs-additional-when-codes.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-additional-when-codes",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-additional-when-codes",
  "version" : "2.2.0",
  "name" : "FRCoreCodeSystemAdditionalWhenCodes",
  "title" : "FR Core CodeSystem Additional When Codes",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-13T08:08:00+00:00",
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
  "description" : "Codes additionnels pour des périodes d'occurrence qui ne sont pas définies dans FHIR.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 16,
  "concept" : [{
    "code" : "AGU",
    "display" : "L'événement se produit avant [offset] le levé / event occurs [offset] before getting up"
  },
  {
    "code" : "PGU",
    "display" : "L'événement se produit après [offset] le levé / event occurs [offset] after getting up"
  },
  {
    "code" : "AT",
    "display" : "L'événement se produit avant [offset] la toilette / event occurs [offset] before toilette (self grooming/washing)"
  },
  {
    "code" : "T",
    "display" : "L'événement se produit lors de la toilette / event occurs during toilette (self grooming/washing)"
  },
  {
    "code" : "PT",
    "display" : "L'événement se produit après [offset] la toilette / event occurs [offset] after toilette (self grooming/washing)"
  },
  {
    "code" : "ASK",
    "display" : "L'événement se produit avant [offset] la collation / event occurs [offset] before snack"
  },
  {
    "code" : "SK",
    "display" : "L'événement se produit lors de la collation / event occurs during snack"
  },
  {
    "code" : "PSK",
    "display" : "L'événement se produit après [offset] la collation / event occurs [offset] after snack"
  },
  {
    "code" : "AMS",
    "display" : "L'événement se produit avant [offset] la collation du matin / event occurs [offset] before morning snack"
  },
  {
    "code" : "MS",
    "display" : "L'événement se produit lors de la collation du matin / event occurs during morning snack"
  },
  {
    "code" : "PMS",
    "display" : "L'événement se produit après [offset] la collation du matin / event occurs [offset] after morning snack"
  },
  {
    "code" : "AAS",
    "display" : "L'événement se produit avant [offset] la collation de l'après-midi / event occurs [offset] before afternoon snack"
  },
  {
    "code" : "AS",
    "display" : "L'événement se produit lors de la collation de l'après-midi / event occurs during afternoon snack"
  },
  {
    "code" : "PAS",
    "display" : "L'événement se produit après [offset] la collation de l'après-midi / event occurs [offset] after afternoon snack"
  },
  {
    "code" : "ABT",
    "display" : "L'événement se produit avant [offset] le coucher / event occurs [offset] before going to bed (bedtime)"
  },
  {
    "code" : "PBT",
    "display" : "L'événement se produit après [offset] le coucher / event occurs [offset] after going to bed (bedtime)"
  }]
}

```
