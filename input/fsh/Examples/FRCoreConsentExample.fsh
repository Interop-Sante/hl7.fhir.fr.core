Instance: FRCoreConsentExample
InstanceOf: FRCoreConsentProfile
Usage: #example
Description: "Exemple de ressource Consent pour indiquer le consentement d'alimentation du DMP"
* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy "Privacy Consent"
* category = http://loinc.org#59284-0 "Consent Document"
* patient = Reference(FRCorePatientINSExample)
* dateTime = "2025-05-14T08:30:00+01:00"
* policy.authority = "https://esante.gouv.fr/"
* policy.uri = "https://esante.gouv.fr/doctrine/mon-espace-sante"
* provision.type = #permit
* provision.purpose = http://terminology.hl7.org/CodeSystem/v3-ActReason#TREAT "Treatment"
* provision.code = http://terminology.hl7.org/CodeSystem/consentaction#collect "Collect"
