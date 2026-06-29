# FR Core Appointment Profile - Guide d'implémentation FR Core v2.2.0

## Profil de ressource: FR Core Appointment Profile 

 
Profile of the Appointment resource for France. This profile adds the operator who created/updated/canceled the appointment. It also allows to possibly reference an appointment canceled and a document associated with the appointment. 
Profil de la ressource Appointment pour la France. Ce profil ajoute l’opérateur qui a créé/modifié/annulé le RDV. Il permet également de référencer éventuellement un RDV annulé et/ou un document lié au RDV. 

**Utilisations:**

* Référence ce Profil: [FR Core Encounter Profile](StructureDefinition-fr-core-encounter.md)
* Exemples pour ce/t/te Profil: [Appointment/FRCoreAppointmentExample](Appointment-FRCoreAppointmentExample.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-appointment)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Appointment](http://hl7.org/fhir/R4/appointment.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Appointment](http://hl7.org/fhir/R4/appointment.html) 

** Résumé **

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Slot Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-slot|2.2.0)](StructureDefinition-fr-core-slot.md)
* [Device (http://hl7.org/fhir/StructureDefinition/Device|4.0.1)](http://hl7.org/fhir/R4/device.html)
* [PractitionerRole (http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1)](http://hl7.org/fhir/R4/practitionerrole.html)
* [FR Core Related Person Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person|2.2.0)](StructureDefinition-fr-core-related-person.md)
* [FR Core Healthcare Service Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-healthcare-service|2.2.0)](StructureDefinition-fr-core-healthcare-service.md)
* [FR Core Practitioner Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0)](StructureDefinition-fr-core-practitioner.md)
* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0)](StructureDefinition-fr-core-patient.md)
* [FR Core Location Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location|2.2.0)](StructureDefinition-fr-core-location.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-appointment-operator|2.2.0](StructureDefinition-fr-core-appointment-operator.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Appointment.meta.profile

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [Appointment](http://hl7.org/fhir/R4/appointment.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Appointment](http://hl7.org/fhir/R4/appointment.html) 

** Résumé **

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Slot Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-slot|2.2.0)](StructureDefinition-fr-core-slot.md)
* [Device (http://hl7.org/fhir/StructureDefinition/Device|4.0.1)](http://hl7.org/fhir/R4/device.html)
* [PractitionerRole (http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1)](http://hl7.org/fhir/R4/practitionerrole.html)
* [FR Core Related Person Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person|2.2.0)](StructureDefinition-fr-core-related-person.md)
* [FR Core Healthcare Service Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-healthcare-service|2.2.0)](StructureDefinition-fr-core-healthcare-service.md)
* [FR Core Practitioner Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0)](StructureDefinition-fr-core-practitioner.md)
* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0)](StructureDefinition-fr-core-patient.md)
* [FR Core Location Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location|2.2.0)](StructureDefinition-fr-core-location.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-appointment-operator|2.2.0](StructureDefinition-fr-core-appointment-operator.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Appointment.meta.profile

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-core-appointment.csv), [Excel](../StructureDefinition-fr-core-appointment.xlsx), [Schematron](../StructureDefinition-fr-core-appointment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-appointment",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-appointment",
  "version" : "2.2.0",
  "name" : "FRCoreAppointmentProfile",
  "title" : "FR Core Appointment Profile",
  "status" : "active",
  "date" : "2026-06-29T10:03:57+00:00",
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
  "description" : "Profile of the Appointment resource for France. This profile adds the operator who created/updated/canceled the appointment. It also allows to possibly reference an appointment canceled and a document associated with the appointment.\r\n\nProfil de la ressource Appointment pour la France. Ce profil ajoute l'opérateur qui a créé/modifié/annulé le RDV. Il permet également de référencer éventuellement un RDV annulé et/ou un document lié au RDV.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "ical",
    "uri" : "http://ietf.org/rfc/2445",
    "name" : "iCalendar"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Appointment",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Appointment|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Appointment",
      "path" : "Appointment"
    },
    {
      "id" : "Appointment.meta.profile",
      "path" : "Appointment.meta.profile",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this"
        }],
        "description" : "Slice based on the canonical url value",
        "rules" : "open"
      }
    },
    {
      "id" : "Appointment.meta.profile:fr-canonical",
      "path" : "Appointment.meta.profile",
      "sliceName" : "fr-canonical",
      "min" : 0,
      "max" : "1",
      "patternCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-appointment|2.2.0"
    },
    {
      "id" : "Appointment.extension",
      "path" : "Appointment.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Appointment.extension:appointmentOperator",
      "path" : "Appointment.extension",
      "sliceName" : "appointmentOperator",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-appointment-operator|2.2.0"]
      }]
    },
    {
      "id" : "Appointment.specialty",
      "path" : "Appointment.specialty",
      "binding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
          "valueString" : "specialty"
        }],
        "strength" : "required",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-practitioner-specialty|2.2.0"
      }
    },
    {
      "id" : "Appointment.slot",
      "path" : "Appointment.slot",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-slot|2.2.0"]
      }]
    },
    {
      "id" : "Appointment.participant.actor",
      "path" : "Appointment.participant.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Device|4.0.1",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person|2.2.0",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-healthcare-service|2.2.0",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.2.0",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location|2.2.0"]
      }]
    }]
  }
}

```
