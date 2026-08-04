# FR Core ValueSet Identity Reliability Supplement - Guide d'implémentation FR Core v2.2.0

## ValueSet: FR Core ValueSet Identity Reliability Supplement 

 
ValueSet permettant de commenter / de rajouter des attributs sur la fiabilité d’une identité. Ces codes sont destinés à être utilisés dans l’élément identityReliabilityComment de l’extension FRCoreExtensionIdentityReliability. 

 **References** 

* [FR Core Patient Ident Reliability Extension](StructureDefinition-fr-core-identity-reliability.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "git",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/git",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetIdentityReliabilitySupplement",
  "title" : "FR Core ValueSet Identity Reliability Supplement",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-04T15:42:07+00:00",
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
  "description" : "ValueSet permettant de commenter / de rajouter des attributs sur la fiabilité d'une identité. Ces codes sont destinés à être utilisés dans l'élément identityReliabilityComment de l'extension FRCoreExtensionIdentityReliability.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-identity-reliability-supplement",
      "version" : "2.2.0"
    }]
  }
}

```
