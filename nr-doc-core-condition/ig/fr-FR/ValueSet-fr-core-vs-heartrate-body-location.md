# Heart Rate Measurement Body Location Precoordinated value set - Guide d'implémentation FR Core v2.2.0

## ValueSet: Heart Rate Measurement Body Location Precoordinated value set 

 
SELECT SNOMED CT code system values that describe where on the body the heart rate was measured. 

 **References** 

* [FR Core Observation Heart Rate Profile](StructureDefinition-fr-core-observation-heartrate.md)

### Définition logique (CLD)

 

### 

-------

 . 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-core-vs-heartrate-body-location",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "url" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-heartrate-body-location",
  "version" : "2.2.0",
  "name" : "FRCoreValueSetHeartRateMeasurementBodyLocation",
  "title" : "Heart Rate Measurement Body Location Precoordinated value set",
  "status" : "active",
  "experimental" : false,
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
  "description" : "SELECT SNOMED CT code system values that describe where on the body the heart rate was measured.",
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
        "code" : "32062004",
        "display" : "Common carotid artery structure (body structure)"
      },
      {
        "code" : "113263003",
        "display" : "Left common carotid artery structure (body structure)"
      },
      {
        "code" : "65355003",
        "display" : "Right common carotid artery structure (body structure)"
      },
      {
        "code" : "13383001",
        "display" : "Structure of apex of heart (body structure)"
      },
      {
        "code" : "17137000",
        "display" : "Structure of brachial artery (body structure)"
      },
      {
        "code" : "86547008",
        "display" : "Structure of dorsalis pedis artery (body structure)"
      },
      {
        "code" : "7657000",
        "display" : "Structure of femoral artery (body structure)"
      },
      {
        "code" : "723961002",
        "display" : "Structure of left brachial artery (body structure)"
      },
      {
        "code" : "792817008",
        "display" : "Structure of left dorsalis pedis artery (body structure)"
      },
      {
        "code" : "113270003",
        "display" : "Structure of left femoral artery (body structure)"
      },
      {
        "code" : "25885001",
        "display" : "Structure of left popliteal artery (body structure)"
      },
      {
        "code" : "214912001",
        "display" : "Structure of left posterior tibial artery (body structure)"
      },
      {
        "code" : "50408007",
        "display" : "Structure of left pulmonary artery"
      },
      {
        "code" : "368504007",
        "display" : "Structure of left radial artery (body structure)"
      },
      {
        "code" : "1268741004",
        "display" : "Structure of left superficial temporal artery (body structure)"
      },
      {
        "code" : "368506009",
        "display" : "Structure of left ulnar artery (body structure)"
      },
      {
        "code" : "43899006",
        "display" : "Structure of popliteal artery (body structure)"
      },
      {
        "code" : "13363002",
        "display" : "Structure of posterior tibial artery (body structure)"
      },
      {
        "code" : "45631007",
        "display" : "Structure of radial artery (body structure)"
      },
      {
        "code" : "723962009",
        "display" : "Structure of right brachial artery (body structure)"
      },
      {
        "code" : "792816004",
        "display" : "Structure of right dorsalis pedis artery (body structure)"
      },
      {
        "code" : "69833005",
        "display" : "Structure of right femoral artery (body structure)"
      },
      {
        "code" : "57832007",
        "display" : "Structure of right popliteal artery (body structure)"
      },
      {
        "code" : "368503001",
        "display" : "Structure of right radial artery (body structure)"
      },
      {
        "code" : "214811007",
        "display" : "Structure of right posterior tibial artery (body structure)"
      },
      {
        "code" : "78480002",
        "display" : "Structure of right pulmonary artery (body structure)"
      },
      {
        "code" : "1268742006",
        "display" : "Structure of right superficial temporal artery (body structure)"
      },
      {
        "code" : "368505008",
        "display" : "Structure of right ulnar artery (body structure)"
      },
      {
        "code" : "15672000",
        "display" : "Structure of superficial temporal artery (body structure)"
      },
      {
        "code" : "44984001",
        "display" : "Structure of ulnar artery (body structure)"
      }]
    }]
  }
}

```
