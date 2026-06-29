# FR Core ValueSet Medication translation - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Medication translation 

 
Systèmes de codification autorisés pour les médicaments : CIP, UCD, ATC, MV (médicament virtuel) et NUVA (vaccins). 

 **References** 

* [FR Core Medication Profile](StructureDefinition-fr-core-medication.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-medication-translation",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-medication-translation",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetMedicationTranslation",
  "title" : "FR Core ValueSet Medication translation",
  "status" : "active",
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
  "description" : "Systèmes de codification autorisés pour les médicaments : CIP, UCD, ATC, MV (médicament virtuel) et NUVA (vaccins).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://smt.esante.gouv.fr/terminologie-bdpm",
      "version" : "2026-05-05"
    },
    {
      "system" : "https://smt.esante.gouv.fr/terminologie-cip_ucd"
    },
    {
      "system" : "https://smt.esante.gouv.fr/terminologie-atc",
      "version" : "2026-02"
    },
    {
      "system" : "https://smt.esante.gouv.fr/terminologie-medicabase"
    },
    {
      "system" : "https://smt.esante.gouv.fr/terminologie-nuva/"
    }]
  }
}

```
