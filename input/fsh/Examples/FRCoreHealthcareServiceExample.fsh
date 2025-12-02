Instance: FRCoreHealthcareServiceExample
InstanceOf: FRCoreHealthcareServiceProfile
Usage: #example
Description: "Exemple de ressource HealthcareService pour décrire le service de cardiologie de l’hôpital X"
* id = "svc-cardiologie-1"
* identifier[0].use = #official
* identifier[0].system = "urn:oid:1.2.250.1.1.1.1"
* identifier[0].value = "HOSP-X-CARDIO"
* active = true
* providedBy = Reference(FRCoreOrganizationExample)
* category = http://terminology.hl7.org/CodeSystem/service-category#2 "Aged Care"
* specialty[0] = https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale#SM04 "Cardio et Maladies vasculaires"

* name = "Service de cardiologie"
* comment = "Ce service prend en charge les pathologies cardiaques."

* telecom[0].system = #email
* telecom[0].value = "cardio@hosp-x.fr"

* appointmentRequired = true

* availableTime[0].daysOfWeek[0] = #mon
* availableTime[0].daysOfWeek[+] = #tue
* availableTime[0].daysOfWeek[+] = #wed
* availableTime[0].daysOfWeek[+] = #thu
* availableTime[0].daysOfWeek[+] = #fri
* availableTime[0].allDay = false
* availableTime[0].availableStartTime = "08:00:00"
* availableTime[0].availableEndTime = "17:30:00"

* availableTime[1].daysOfWeek = #sat
* availableTime[1].allDay = false
* availableTime[1].availableStartTime = "09:00:00"
* availableTime[1].availableEndTime = "12:00:00"

* notAvailable[0].description = "Fermeture annuelle"
* notAvailable[0].during.start = "2025-08-01"
* notAvailable[0].during.end = "2025-08-31"


* extension[serviceTypeDuration].extension[serviceType].valueCodeableConcept = https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale#SM04 "Cardio et Maladies vasculaires"
* extension[serviceTypeDuration].extension[duration].valueDuration.value = 30
* extension[serviceTypeDuration].extension[duration].valueDuration.unit = "min"
* extension[serviceTypeDuration].extension[duration].valueDuration.system = "http://unitsofmeasure.org"
* extension[serviceTypeDuration].extension[duration].valueDuration.code = #min