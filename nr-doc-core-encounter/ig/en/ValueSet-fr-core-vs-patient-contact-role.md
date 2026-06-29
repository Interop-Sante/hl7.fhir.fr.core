# FR Core ValueSet Patient contact role - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Patient contact role 

 
ValueSet patient contact role 

 **References** 

* [FR Core Patient Profile](StructureDefinition-fr-core-patient.md)
* [FR Core Related Person Profile](StructureDefinition-fr-core-related-person.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-patient-contact-role",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/valueset-warning",
    "valueMarkdown" : "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.html) for a list of common identifier systems"
  }],
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-contact-role",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetPatientContactRole",
  "title" : "FR Core ValueSet Patient contact role",
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
  "description" : "ValueSet patient contact role",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass",
      "version" : "20240426120000"
    },
    {
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R217-ProtectionJuridique/FHIR/TRE-R217-ProtectionJuridique",
      "version" : "20231215120000"
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
      "version" : "3.0.0",
      "concept" : [{
        "code" : "O"
      },
      {
        "code" : "U"
      }]
    }]
  }
}

```
