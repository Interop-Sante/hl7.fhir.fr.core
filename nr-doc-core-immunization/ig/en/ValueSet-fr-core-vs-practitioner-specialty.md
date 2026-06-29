# FR Core ValueSet Practitioner specialty - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Practitioner specialty 

 
The modalities of exercice of the practitioner, registered by an official organization for a period of time. 

 **References** 

* [FR Core Appointment Profile](StructureDefinition-fr-core-appointment.md)
* [FR Core Healthcare Service Profile](StructureDefinition-fr-core-healthcare-service.md)
* [FR Core Practitioner Role](StructureDefinition-fr-core-practitioner-role.md)
* [FR Core Practitioner Specialty Extension](StructureDefinition-fr-core-practitioner-specialty.md)
* [FR Core Schedule Profile](StructureDefinition-fr-core-schedule.md)
* [FR Core Slot Profile](StructureDefinition-fr-core-slot.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-practitioner-specialty",
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
    "valueInteger" : 5
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
    "valueCode" : "pc"
  }],
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-practitioner-specialty",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetPractitionerSpecialty",
  "title" : "FR Core ValueSet Practitioner specialty",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-29T10:21:29+00:00",
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
  "description" : "The modalities of exercice of the practitioner, registered by an official organization for a period of time.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "immutable" : true,
  "compose" : {
    "include" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale",
      "version" : "20240531120000"
    }]
  }
}

```
