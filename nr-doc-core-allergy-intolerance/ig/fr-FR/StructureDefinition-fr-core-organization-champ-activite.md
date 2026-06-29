# FR Core Organization Extension - Champ d'activité - Guide d'implémentation FR Core v2.2.0

## : FR Core Organization Extension - Champ d'activité 

Champ d’activité d’une UF

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [FR Core Organization UF Profile](StructureDefinition-fr-core-organization-uf.md)
* Exemples pour ce/t/te Extension: [UF Dialyse](Organization-hopitaltest-uf-4420-dialyse.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-organization-champ-activite)

### 

 . 

*   
*   
*   
*   

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

** Résumé **

Extension simple avec le type Coding : Champ d'activité d'une UF

 **Differential View** 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

** Résumé **

Extension simple avec le type Coding : Champ d'activité d'une UF

 

 , ,  



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-organization-champ-activite",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-champ-activite",
  "version" : "2.2.0",
  "name" : "FRCoreOrganizationChampActiviteExtension",
  "title" : "FR Core Organization Extension - Champ d'activité",
  "status" : "active",
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
  "description" : "Champ d'activité d'une UF",
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
      "short" : "FR Core Organization Extension - Champ d'activité",
      "definition" : "Champ d'activité d'une UF"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-champ-activite"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-organization-champ-activite|2.2.0"
      }
    }]
  }
}

```
