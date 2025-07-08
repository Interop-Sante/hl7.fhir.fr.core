Extension: FRCorePatientMultipleBirthExtension
Id: fr-core-patient-multiple-birth-r5
Title: "Rang Gémellaire"
Description: "Extension crée pour exprimer le rang gémellaire, notamment utle dans le cadre des attestations de droits à l'assurance maladie. Cette extension implemente l'élément PatientMultipleBirth de R5 https://www.hl7.org/fhir/patient-definitions.html#Patient.multipleBirth_x."
* ^context.type = #element
* ^context.expression = "Patient"
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Patient.multipleBirth"
  
* value[x] only integer
* value[x] ^short = "Indicates the actual birth order (integer)."