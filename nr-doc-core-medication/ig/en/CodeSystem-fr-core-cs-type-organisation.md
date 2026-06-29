# FR Core CodeSystem Organization Type - Guide d'implémentation FR Core v2.2.0

## CodeSystem: FR Core CodeSystem Organization Type (Experimental) 

 
Organization type 

This Code system is referenced in the definition of the following value sets:

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-type-organisation",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-type-organisation",
  "version" : "2.2.0",
  "name" : "FRCoreCodeSystemTypesOrganisations",
  "title" : "FR Core CodeSystem Organization Type",
  "status" : "draft",
  "experimental" : true,
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
  "description" : "Organization type",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 17,
  "concept" : [{
    "code" : "LEGAL-ENTITY",
    "display" : "Entité légale",
    "definition" : "Entité légale"
  },
  {
    "code" : "GHT",
    "display" : "Groupement hospitalier de territoire",
    "definition" : "Groupement hospitalier de territoire"
  },
  {
    "code" : "GEOGRAPHICAL-ENTITY",
    "display" : "Entité géographique",
    "definition" : "Entité géographique"
  },
  {
    "code" : "GROUP",
    "display" : "Groupe privé/hospitalier",
    "definition" : "Groupe privé/hospitalier"
  },
  {
    "code" : "HEBERGEMENT",
    "display" : "Hébergement",
    "definition" : "Hébergement"
  },
  {
    "code" : "SOIN",
    "display" : "Soin",
    "definition" : "Soin"
  },
  {
    "code" : "ADMINISTRATIF",
    "display" : "Administration",
    "definition" : "Administration"
  },
  {
    "code" : "MEDICAL",
    "display" : "Médical",
    "definition" : "Médical"
  },
  {
    "code" : "TECHNIQUE",
    "display" : "Technique",
    "definition" : "Technique"
  },
  {
    "code" : "MEDICOTEC",
    "display" : "medico technique (radio, scanner …)",
    "definition" : "medico technique (radio, scanner …)"
  },
  {
    "code" : "UF",
    "display" : "Unité fonctionnelle",
    "definition" : "Unité fonctionnelle"
  },
  {
    "code" : "SERVICE",
    "display" : "Service",
    "definition" : "Service"
  },
  {
    "code" : "UM",
    "display" : "Unité médicale",
    "definition" : "Unité médicale"
  },
  {
    "code" : "UAC",
    "display" : "Unité d'activité",
    "definition" : "Unité d'activité"
  },
  {
    "code" : "POLE",
    "display" : "Pôle",
    "definition" : "Pôle"
  },
  {
    "code" : "CENTRE-RESP",
    "display" : "Centre de responsabilité",
    "definition" : "Centre de responsabilité"
  },
  {
    "code" : "CENTRE-ACTIVITE",
    "display" : "Centre d'activité",
    "definition" : "Centre d'activité"
  }]
}

```
