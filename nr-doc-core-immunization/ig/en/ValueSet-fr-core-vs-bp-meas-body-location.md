# Blood Pressure Measurement Body Location Precoordinated value set - Guide d'implémentation FR Core v2.2.0

## ValueSet: Blood Pressure Measurement Body Location Precoordinated value set 

 
SELECT SNOMED CT code system values that describe the location on the body where the blood pressure was measured. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-bp-meas-body-location",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-bp-meas-body-location",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetBloodPressureMeasurementBodyLocation",
  "title" : "Blood Pressure Measurement Body Location Precoordinated value set",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-29T10:25:23+00:00",
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
  "description" : "SELECT SNOMED CT code system values that describe the location on the body where the blood pressure was measured.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "49256001",
        "display" : "Structure of dorsal digital artery of foot (body structure)"
      },
      {
        "code" : "368469003",
        "display" : "Structure of proper volar digital arteries (body structure)"
      },
      {
        "code" : "17137000",
        "display" : "Structure of brachial artery (body structure)"
      },
      {
        "code" : "723961002",
        "display" : "Structure of left brachial artery (body structure)"
      },
      {
        "code" : "723962009",
        "display" : "Structure of right brachial artery (body structure)"
      },
      {
        "code" : "7657000",
        "display" : "Structure of femoral artery (body structure)"
      },
      {
        "code" : "113270003",
        "display" : "Structure of left femoral artery (body structure)"
      },
      {
        "code" : "69833005",
        "display" : "Structure of right femoral artery (body structure)"
      },
      {
        "code" : "45631007",
        "display" : "Structure of radial artery (body structure)"
      },
      {
        "code" : "368504007",
        "display" : "Structure of left radial artery (body structure)"
      },
      {
        "code" : "368503001",
        "display" : "Structure of right radial artery (body structure)"
      },
      {
        "code" : "13363002",
        "display" : "Structure of posterior tibial artery (body structure)"
      },
      {
        "code" : "214912001",
        "display" : "Structure of left posterior tibial artery (body structure)"
      },
      {
        "code" : "214811007",
        "display" : "Structure of right posterior tibial artery (body structure)"
      },
      {
        "code" : "54247002",
        "display" : "Ascending aorta structure (body structure)"
      },
      {
        "code" : "281130003",
        "display" : "Descending aorta structure (body structure)"
      },
      {
        "code" : "57034009",
        "display" : "Aortic arch structure (body structure)"
      },
      {
        "code" : "7832008",
        "display" : "Abdominal aorta structure (body structure)"
      }]
    }]
  }
}

```
