# FR Core ValueSet Procedure code - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Procedure code 

 
Codes autorisés par défaut pour indiquer un acte. Inclut : 
* CCAM : terminologie facturante pour la production d’actes.
* CISIS jdv-absent-or-unknown-procedure-cisis pour actes chirurgicaux inconnus ou absents.
 
Deux additional bindings extensibles, portés par FRCoreProcedureProfile.code, complètent ce binding par défaut : 
* ValueSet IPS procedures-uv-ips (SNOMED CT, identique au parent EU Core) pour la demande d’acte ou de report d’actes à des fins internationales (en cours de validation en Europe).
* fr-core-vs-procedure-code-autre (CISIS “Autre acte”) si l’acte n’est pas trouvé dans CCAM ni SNOMED CT.
 
Si aucun code approprié n’est disponible, l’acte peut être décrit en texte libre. 

 **References** 

* [FR Core Procedure Profile](StructureDefinition-fr-core-procedure.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "experimental" : false,
  "date" : "2026-09-17T13:16:49+00:00",
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
  "description" : "Codes autorisés par défaut pour indiquer un acte.\nInclut :\n- CCAM : terminologie facturante pour la production d'actes.\n- CISIS jdv-absent-or-unknown-procedure-cisis pour actes chirurgicaux inconnus ou absents.\n\nDeux additional bindings extensibles, portés par FRCoreProcedureProfile.code, complètent ce binding par défaut :\n- ValueSet IPS procedures-uv-ips (SNOMED CT, identique au parent EU Core) pour la demande d'acte ou de report d'actes à des fins internationales (en cours de validation en Europe).\n- fr-core-vs-procedure-code-autre (CISIS \"Autre acte\") si l'acte n'est pas trouvé dans CCAM ni SNOMED CT.\n\nSi aucun code approprié n'est disponible, l'acte peut être décrit en texte libre.",
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
      "version" : "v84.00"
    },
    {
      "valueSet" : ["https://smt.esante.gouv.fr/fhir/ValueSet/jdv-absent-or-unknown-procedure-cisis|20260716085852"]
    }]
  }
}

```
