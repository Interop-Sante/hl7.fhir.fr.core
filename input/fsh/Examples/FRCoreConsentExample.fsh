Instance: FRCoreConsentExample
InstanceOf: FRCoreConsentProfile
Usage: #example
Description: "Exemple de ressource Consent"
* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy
* category = http://loinc.org#59284-0
* patient = Reference(FRCorePatientINSExample)
* dateTime = "2026-10-08"
* performer = Reference(FRCoreOrganizationExample)
* organization = Reference(FRCoreOrganizationExample)
* provision.type = #permit
* provision.purpose = urn:oid:2.16.840.1.113883.5.8#TREAT
* provision.code = http://terminology.hl7.org/CodeSystem/consentaction#access
