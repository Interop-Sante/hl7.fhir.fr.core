# FR Core ValueSet Allergy Code - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Allergy Code 

 
Jeu de valeurs permettant de coder l’agent responsable d’une allergie : 
* Médicaments : CIP ou UCD
* Substances : SMS
* Aliments : CIM-11 Chapitre X Extensions – Allergènes ou substances non médicinales
* Agents environnementaux ou physiques : idem CIM-11 Chapitre X Extensions
* Allergènes pouvant induire une contre-indication vaccinale : jdv-allergie-vaccin-cisis
 

 **References** 

* [FR Core AllergyIntolerance Profile](StructureDefinition-fr-core-allergy-intolerance.md)

### Définition logique (CLD)

 

### 

No Expansion for this valueset (Unknown Code System)

-------

 . 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-allergy-code",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "informative"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  }],
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-allergy-code",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetAllergyCode",
  "title" : "FR Core ValueSet Allergy Code",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-29T09:28:38+00:00",
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
  "description" : "Jeu de valeurs permettant de coder l'agent responsable d'une allergie :\n- Médicaments : CIP ou UCD\n- Substances : SMS\n- Aliments : CIM-11 Chapitre X Extensions – Allergènes ou substances non médicinales\n- Agents environnementaux ou physiques : idem CIM-11 Chapitre X Extensions\n- Allergènes pouvant induire une contre-indication vaccinale : jdv-allergie-vaccin-cisis",
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
      "system" : "http://id.who.int/icd/release/11/mms"
    },
    {
      "valueSet" : ["https://smt.esante.gouv.fr/fhir/ValueSet/jdv-allergie-vaccin-cisis|20260420150251"]
    },
    {
      "system" : "https://smt.esante.gouv.fr/terminologie-sms",
      "version" : "2026-05"
    }]
  }
}

```
