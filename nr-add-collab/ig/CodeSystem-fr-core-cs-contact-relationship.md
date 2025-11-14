# FR Core CodeSystem Contact Relationship - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem Contact Relationship**

## CodeSystem: FR Core CodeSystem Contact Relationship 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-contact-relationship | *Version*:2.2.0-ballot |
| Draft as of 2025-11-14 | *Computable Name*:FRCoreCodeSystemContactRelationship |

 
Relationship type 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetContactRelationship](ValueSet-fr-core-vs-contact-relationship.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-contact-relationship",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-contact-relationship",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreCodeSystemContactRelationship",
  "title" : "FR Core CodeSystem Contact Relationship",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-11-14T08:50:36+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [
    {
      "name" : "Interop'Santé",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://interopsante.org/"
        }
      ]
    },
    {
      "name" : "InteropSanté",
      "telecom" : [
        {
          "system" : "email",
          "value" : "fhir@interopsante.org",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Relationship type",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "France"
        }
      ]
    }
  ],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 81,
  "concept" : [
    {
      "code" : "WRD",
      "display" : "Dépositaire de la tutelle judiciare",
      "definition" : "Dépositaire de la tutelle judiciare"
    },
    {
      "code" : "GRD",
      "display" : "Tuteur",
      "definition" : "Tuteur"
    },
    {
      "code" : "CUR",
      "display" : "Représentant légal",
      "definition" : "Représentant légal"
    },
    {
      "code" : "CURTL",
      "display" : "Curatelle",
      "definition" : "Curatelle"
    },
    {
      "code" : "EDUREF",
      "display" : "Educateur référent",
      "definition" : "Educateur référent"
    },
    {
      "code" : "SVG",
      "display" : "Sauvegarde juridique",
      "definition" : "Sauvegarde juridique"
    },
    {
      "code" : "K",
      "display" : "Personne de confiance",
      "definition" : "Personne de confiance"
    },
    {
      "code" : "P",
      "display" : "Personne à ne pas prévenir",
      "definition" : "Personne à ne pas prévenir"
    },
    {
      "code" : "FAMMEMB",
      "display" : "family member",
      "definition" : "family member"
    },
    {
      "code" : "CHILD",
      "display" : "child",
      "definition" : "child"
    },
    {
      "code" : "CHLDADOPT",
      "display" : "adopted child",
      "definition" : "adopted child"
    },
    {
      "code" : "DAUADOPT",
      "display" : "adopted daughter",
      "definition" : "adopted daughter"
    },
    {
      "code" : "SONADOPT",
      "display" : "adopted son",
      "definition" : "adopted son"
    },
    {
      "code" : "CHLDFOST",
      "display" : "foster child",
      "definition" : "foster child"
    },
    {
      "code" : "SONFOST",
      "display" : "foster son",
      "definition" : "foster son"
    },
    {
      "code" : "DAUC",
      "display" : "daughter",
      "definition" : "daughter"
    },
    {
      "code" : "STPDAU",
      "display" : "stepdaughter",
      "definition" : "stepdaughter"
    },
    {
      "code" : "SONC",
      "display" : "son",
      "definition" : "son"
    },
    {
      "code" : "STPSON",
      "display" : "stepson",
      "definition" : "stepson"
    },
    {
      "code" : "STPCHLD",
      "display" : "step child",
      "definition" : "step child"
    },
    {
      "code" : "EXT",
      "display" : "extended family member",
      "definition" : "extended family member"
    },
    {
      "code" : "AUNT",
      "display" : "aunt",
      "definition" : "aunt"
    },
    {
      "code" : "COUSN",
      "display" : "cousin",
      "definition" : "cousin"
    },
    {
      "code" : "GGRPRN",
      "display" : "great grandparent",
      "definition" : "great grandparent"
    },
    {
      "code" : "GGRFTH",
      "display" : "great grandfather",
      "definition" : "great grandfather"
    },
    {
      "code" : "GGRMTH",
      "display" : "great grandmather",
      "definition" : "great grandmather"
    },
    {
      "code" : "GRNDCHILD",
      "display" : "grandchild",
      "definition" : "grandchild"
    },
    {
      "code" : "GRNDDAU",
      "display" : "granddaughter",
      "definition" : "granddaughter"
    },
    {
      "code" : "GRNDSON",
      "display" : "grandson",
      "definition" : "grandson"
    },
    {
      "code" : "GRPRN",
      "display" : "grandparent",
      "definition" : "grandparent"
    },
    {
      "code" : "GRFTH",
      "display" : "grandfather",
      "definition" : "grandfather"
    },
    {
      "code" : "GRMTH",
      "display" : "grandmather",
      "definition" : "grandmather"
    },
    {
      "code" : "CHLDINLAW",
      "display" : "child in-law",
      "definition" : "child in-law"
    },
    {
      "code" : "DAUINLAW",
      "display" : "daughter in-law",
      "definition" : "daughter in-law"
    },
    {
      "code" : "PRNINLAW",
      "display" : "parent in-law",
      "definition" : "parent in-law"
    },
    {
      "code" : "FTHINLAW",
      "display" : "father in-law",
      "definition" : "father in-law"
    },
    {
      "code" : "MTHINLAW",
      "display" : "mother in-law",
      "definition" : "mother in-law"
    },
    {
      "code" : "SIBINLAW",
      "display" : "sibbling in-law",
      "definition" : "sibbling in-law"
    },
    {
      "code" : "BROINLAW",
      "display" : "brother in-law",
      "definition" : "brother in-law"
    },
    {
      "code" : "SISINLAW",
      "display" : "sister in-law",
      "definition" : "sister in-law"
    },
    {
      "code" : "NIENEPH",
      "display" : "niece/nephew",
      "definition" : "niece/nephew"
    },
    {
      "code" : "NEPHEW",
      "display" : "nephew",
      "definition" : "nephew"
    },
    {
      "code" : "NIECE",
      "display" : "niece",
      "definition" : "niece"
    },
    {
      "code" : "UNCLE",
      "display" : "uncle",
      "definition" : "uncle"
    },
    {
      "code" : "PRN",
      "display" : "parent",
      "definition" : "parent"
    },
    {
      "code" : "ADOPTP",
      "display" : "adoptive parent",
      "definition" : "adoptive parent"
    },
    {
      "code" : "ADOPTF",
      "display" : "adoptive father",
      "definition" : "adoptive father"
    },
    {
      "code" : "ADOPTM",
      "display" : "adoptive mother",
      "definition" : "adoptive mother"
    },
    {
      "code" : "FTH",
      "display" : "father",
      "definition" : "father"
    },
    {
      "code" : "FTHFOST",
      "display" : "foster father",
      "definition" : "foster father"
    },
    {
      "code" : "NFTH",
      "display" : "natural father",
      "definition" : "natural father"
    },
    {
      "code" : "STPFTH",
      "display" : "step father",
      "definition" : "step father"
    },
    {
      "code" : "MTH",
      "display" : "mother",
      "definition" : "mother"
    },
    {
      "code" : "MTHFOST",
      "display" : "foster mother",
      "definition" : "foster mother"
    },
    {
      "code" : "GESTM",
      "display" : "gestational mother",
      "definition" : "gestational mother"
    },
    {
      "code" : "NMTH",
      "display" : "natural mother",
      "definition" : "natural mother"
    },
    {
      "code" : "STPMTH",
      "display" : "stepmother",
      "definition" : "stepmother"
    },
    {
      "code" : "NPRN",
      "display" : "natural parent",
      "definition" : "natural parent"
    },
    {
      "code" : "STPPRN",
      "display" : "step parent",
      "definition" : "step parent"
    },
    {
      "code" : "SIB",
      "display" : "sibling",
      "definition" : "sibling"
    },
    {
      "code" : "BRO",
      "display" : "brother",
      "definition" : "brother"
    },
    {
      "code" : "HBRO",
      "display" : "half-brother",
      "definition" : "half-brother"
    },
    {
      "code" : "NBRO",
      "display" : "natural brother",
      "definition" : "natural brother"
    },
    {
      "code" : "TWINBRO",
      "display" : "twin brother",
      "definition" : "twin brother"
    },
    {
      "code" : "STPBRO",
      "display" : "stepbrother",
      "definition" : "stepbrother"
    },
    {
      "code" : "HSIB",
      "display" : "half-sibling",
      "definition" : "half-sibling"
    },
    {
      "code" : "HSIS",
      "display" : "half-sister",
      "definition" : "half-sister"
    },
    {
      "code" : "NSIB",
      "display" : "natural sibling",
      "definition" : "natural sibling"
    },
    {
      "code" : "NSIS",
      "display" : "natural sister",
      "definition" : "natural sister"
    },
    {
      "code" : "TWINSIS",
      "display" : "twin sister",
      "definition" : "twin sister"
    },
    {
      "code" : "TWIN",
      "display" : "twin",
      "definition" : "twin"
    },
    {
      "code" : "SIS",
      "display" : "sister",
      "definition" : "sister"
    },
    {
      "code" : "STPSIS",
      "display" : "stepsister",
      "definition" : "stepsister"
    },
    {
      "code" : "STPSIB",
      "display" : "step sibling",
      "definition" : "step sibling"
    },
    {
      "code" : "SIGOTHR",
      "display" : "significant other",
      "definition" : "significant other"
    },
    {
      "code" : "DOMPART",
      "display" : "domestic partner",
      "definition" : "domestic partner"
    },
    {
      "code" : "SPS",
      "display" : "spouse",
      "definition" : "spouse"
    },
    {
      "code" : "HUSB",
      "display" : "husband",
      "definition" : "husband"
    },
    {
      "code" : "WIFE",
      "display" : "wife",
      "definition" : "wife"
    },
    {
      "code" : "FRND",
      "display" : "unrelated friend",
      "definition" : "unrelated friend"
    },
    {
      "code" : "NBOR",
      "display" : "neighbor",
      "definition" : "neighbor"
    }
  ]
}

```
