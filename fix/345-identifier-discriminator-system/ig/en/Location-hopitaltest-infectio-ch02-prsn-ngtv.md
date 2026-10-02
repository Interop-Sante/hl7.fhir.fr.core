# hopitaltest-infectio-ch02-prsn-ngtv - Guide d'implémentation FR Core v2.2.0

## Example Location: hopitaltest-infectio-ch02-prsn-ngtv

-------

**English**

-------

Profile: [FR Core Location Profile](StructureDefinition-fr-core-location.md)

**FR Core Location Extension - Type de chambre**: [FR Core CodeSystem Type Chambre: PRSN_NGTV](CodeSystem-fr-core-cs-location-type-chambre.md#fr-core-cs-location-type-chambre-PRSN_NGTV) (Pression négative)

**status**: Active

**name**: Chambre 02 - Pression négative

**type**: Chambre

**managingOrganization**: [Organization CHRU CENTRE VILLE](Organization-hopitaltest-eg-4-members.md)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "hopitaltest-infectio-ch02-prsn-ngtv",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location"]
  },
  "extension" : [{
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location-type-chambre",
    "valueCoding" : {
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-type-chambre",
      "code" : "PRSN_NGTV",
      "display" : "Pression négative"
    }
  }],
  "status" : "active",
  "name" : "Chambre 02 - Pression négative",
  "type" : [{
    "coding" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-type",
      "code" : "CHAMB",
      "display" : "Chambre"
    }],
    "text" : "Chambre"
  }],
  "managingOrganization" : {
    "reference" : "Organization/hopitaltest-eg-4-members"
  }
}

```
