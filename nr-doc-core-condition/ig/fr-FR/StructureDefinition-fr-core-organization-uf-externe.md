# FR Core Organization Extension - UF Externe - Guide d'implémentation FR Core v2.2.0

## : FR Core Organization Extension - UF Externe 

Indicateur permettant de définir si une UF est externe à l’établissement

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [FR Core Organization UF Profile](StructureDefinition-fr-core-organization-uf.md)
* Exemples pour ce/t/te Extension: [UF Dialyse](Organization-hopitaltest-uf-4420-dialyse.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-organization-uf-externe)

### 

 . 

*   
*   
*   
*   

#### Contraintes

** Résumé **

Extension simple avec le type boolean : Indicateur permettant de définir si une UF est externe à l'établissement

 **Differential View** 

#### Contraintes

** Résumé **

Extension simple avec le type boolean : Indicateur permettant de définir si une UF est externe à l'établissement

 

 , ,  



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-organization-uf-externe",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf-externe",
  "version" : "2.2.0",
  "name" : "FRCoreOrganizationUFExterneExtension",
  "title" : "FR Core Organization Extension - UF Externe",
  "status" : "active",
  "date" : "2026-06-29T15:18:50+00:00",
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
  "description" : "Indicateur permettant de définir si une UF est externe à l'établissement",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Organization"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "FR Core Organization Extension - UF Externe",
      "definition" : "Indicateur permettant de définir si une UF est externe à l'établissement"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf-externe"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
