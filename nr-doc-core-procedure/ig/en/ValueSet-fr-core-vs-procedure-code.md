# FR Core ValueSet Procedure code - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Procedure code 

 
Codes autorisés pour indiquer un acte. Inclut : 
* Terminologie CCAM
* NCIT (code C25218 : ‘Intervention’) si l’acte n’est pas trouvé dans CCAM
* CISIS jdv-absent-or-unknown-procedure-cisis pour actes chirurgicaux inconnus ou absents.
 
Si aucun code approprié n’est disponible, l’acte peut être décrit en texte libre. 

 **References** 

* [FR Core Procedure Profile](StructureDefinition-fr-core-procedure.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-procedure-code",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-procedure-code",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetProcedureCode",
  "title" : "FR Core ValueSet Procedure code",
  "status" : "active",
  "date" : "2026-07-23T09:09:32+00:00",
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
  "description" : "Codes autorisés pour indiquer un acte.\nInclut :\n- Terminologie CCAM\n- NCIT (code C25218 : 'Intervention') si l'acte n'est pas trouvé dans CCAM\n- CISIS jdv-absent-or-unknown-procedure-cisis pour actes chirurgicaux inconnus ou absents.\n\nSi aucun code approprié n'est disponible, l'acte peut être décrit en texte libre.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://smt.esante.gouv.fr/terminologie-ccam",
      "version" : "v83.00"
    },
    {
      "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
      "concept" : [{
        "code" : "C25218"
      }]
    },
    {
      "valueSet" : ["https://smt.esante.gouv.fr/fhir/ValueSet/jdv-absent-or-unknown-procedure-cisis|20260619134042"]
    }]
  }
}

```
