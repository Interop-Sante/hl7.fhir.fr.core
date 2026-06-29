# FR Core ValueSet Contact relationship - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Contact relationship 

 
A set of codes that can be used to indicate the relationship between a Patient and a Related Person. 

 **References** 

Ce jeu de valeurs n'est pas utilisé ici ; il peut être utilisé autre part (par exemple dans les spécifications et / ou implémentations qui utilisent ce contenu)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-contact-relationship",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/valueset-warning",
    "valueMarkdown" : "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.html) for a list of common identifier systems"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "informative"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
    "valueCode" : "fhir"
  }],
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-contact-relationship",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetContactRelationship",
  "title" : "FR Core ValueSet Contact relationship",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-29T12:39:39+00:00",
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
  "description" : "A set of codes that can be used to indicate the relationship between a Patient and a Related Person.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
      "version" : "3.0.0",
      "concept" : [{
        "code" : "O",
        "display" : "Other"
      },
      {
        "code" : "U",
        "display" : "Unknown"
      },
      {
        "code" : "N",
        "display" : "Next of kin"
      }]
    },
    {
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-contact-relationship",
      "version" : "2.2.0",
      "concept" : [{
        "code" : "WRD",
        "display" : "Dépositaire de la tutelle judiciare"
      },
      {
        "code" : "GRD",
        "display" : "Tuteur"
      },
      {
        "code" : "CUR",
        "display" : "Représentant légal"
      },
      {
        "code" : "CURTL",
        "display" : "Curatelle"
      },
      {
        "code" : "EDUREF",
        "display" : "Educateur référent"
      },
      {
        "code" : "SVG",
        "display" : "Sauvegarde juridique"
      },
      {
        "code" : "K",
        "display" : "Personne de confiance"
      },
      {
        "code" : "P",
        "display" : "Personne à ne pas prévenir"
      },
      {
        "code" : "FAMMEMB",
        "display" : "family member"
      },
      {
        "code" : "CHILD",
        "display" : "child"
      },
      {
        "code" : "CHLDADOPT",
        "display" : "adopted child"
      },
      {
        "code" : "DAUADOPT",
        "display" : "adopted daughter"
      },
      {
        "code" : "SONADOPT",
        "display" : "adopted son"
      },
      {
        "code" : "CHLDFOST",
        "display" : "foster child"
      },
      {
        "code" : "SONFOST",
        "display" : "foster son"
      },
      {
        "code" : "DAUC",
        "display" : "daughter"
      },
      {
        "code" : "STPDAU",
        "display" : "stepdaughter"
      },
      {
        "code" : "SONC",
        "display" : "son"
      },
      {
        "code" : "STPSON",
        "display" : "stepson"
      },
      {
        "code" : "STPCHLD",
        "display" : "step child"
      },
      {
        "code" : "EXT",
        "display" : "extended family member"
      },
      {
        "code" : "AUNT",
        "display" : "aunt"
      },
      {
        "code" : "COUSN",
        "display" : "cousin"
      },
      {
        "code" : "GGRPRN",
        "display" : "great grandparent"
      },
      {
        "code" : "GGRFTH",
        "display" : "great grandfather"
      },
      {
        "code" : "GGRMTH",
        "display" : "great grandmather"
      },
      {
        "code" : "GRNDCHILD",
        "display" : "grandchild"
      },
      {
        "code" : "GRNDDAU",
        "display" : "granddaughter"
      },
      {
        "code" : "GRNDSON",
        "display" : "grandson"
      },
      {
        "code" : "GRPRN",
        "display" : "grandparent"
      },
      {
        "code" : "GRFTH",
        "display" : "grandfather"
      },
      {
        "code" : "GRMTH",
        "display" : "grandmather"
      },
      {
        "code" : "CHLDINLAW",
        "display" : "child in-law"
      },
      {
        "code" : "DAUINLAW",
        "display" : "daughter in-law"
      },
      {
        "code" : "PRNINLAW",
        "display" : "parent in-law"
      },
      {
        "code" : "FTHINLAW",
        "display" : "father in-law"
      },
      {
        "code" : "MTHINLAW",
        "display" : "mother in-law"
      },
      {
        "code" : "SIBINLAW",
        "display" : "sibbling in-law"
      },
      {
        "code" : "BROINLAW",
        "display" : "brother in-law"
      },
      {
        "code" : "SISINLAW",
        "display" : "sister in-law"
      },
      {
        "code" : "NIENEPH",
        "display" : "niece/nephew"
      },
      {
        "code" : "NEPHEW",
        "display" : "nephew"
      },
      {
        "code" : "NIECE",
        "display" : "niece"
      },
      {
        "code" : "UNCLE",
        "display" : "uncle"
      },
      {
        "code" : "PRN",
        "display" : "parent"
      },
      {
        "code" : "ADOPTP",
        "display" : "adoptive parent"
      },
      {
        "code" : "ADOPTF",
        "display" : "adoptive father"
      },
      {
        "code" : "ADOPTM",
        "display" : "adoptive mother"
      },
      {
        "code" : "FTH",
        "display" : "father"
      },
      {
        "code" : "FTHFOST",
        "display" : "foster father"
      },
      {
        "code" : "NFTH",
        "display" : "natural father"
      },
      {
        "code" : "STPFTH",
        "display" : "step father"
      },
      {
        "code" : "MTH",
        "display" : "mother"
      },
      {
        "code" : "MTHFOST",
        "display" : "foster mother"
      },
      {
        "code" : "GESTM",
        "display" : "gestational mother"
      },
      {
        "code" : "NMTH",
        "display" : "natural mother"
      },
      {
        "code" : "STPMTH",
        "display" : "stepmother"
      },
      {
        "code" : "NPRN",
        "display" : "natural parent"
      },
      {
        "code" : "STPPRN",
        "display" : "step parent"
      },
      {
        "code" : "SIB",
        "display" : "sibling"
      },
      {
        "code" : "BRO",
        "display" : "brother"
      },
      {
        "code" : "HBRO",
        "display" : "half-brother"
      },
      {
        "code" : "NBRO",
        "display" : "natural brother"
      },
      {
        "code" : "TWINBRO",
        "display" : "twin brother"
      },
      {
        "code" : "STPBRO",
        "display" : "stepbrother"
      },
      {
        "code" : "HSIB",
        "display" : "half-sibling"
      },
      {
        "code" : "HSIS",
        "display" : "half-sister"
      },
      {
        "code" : "NSIB",
        "display" : "natural sibling"
      },
      {
        "code" : "NSIS",
        "display" : "natural sister"
      },
      {
        "code" : "TWINSIS",
        "display" : "twin sister"
      },
      {
        "code" : "TWIN",
        "display" : "twin"
      },
      {
        "code" : "SIS",
        "display" : "sister"
      },
      {
        "code" : "STPSIS",
        "display" : "stepsister"
      },
      {
        "code" : "STPSIB",
        "display" : "step sibling"
      },
      {
        "code" : "SIGOTHR",
        "display" : "significant other"
      },
      {
        "code" : "DOMPART",
        "display" : "domestic partner"
      },
      {
        "code" : "SPS",
        "display" : "spouse"
      },
      {
        "code" : "HUSB",
        "display" : "husband"
      },
      {
        "code" : "WIFE",
        "display" : "wife"
      },
      {
        "code" : "FRND",
        "display" : "unrelated friend"
      },
      {
        "code" : "NBOR",
        "display" : "neighbor"
      }]
    }]
  }
}

```
