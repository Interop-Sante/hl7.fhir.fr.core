Instance: FRCoreObservationBPExample
InstanceOf: fr-core-observation-bp
Usage: #example
* status = #final
* subject = Reference(FRCorePatientExample)
  * type = "Patient"
* effectiveDateTime = "2012-09-17"
* performer  = Reference(FRCorePractititionerExample)
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#L "low"
* interpretation.text = "Below low normal"
* bodySite = https://mos.esante.gouv.fr/NOS/TRE_R309-FMA/FHIR/TRE-R309-FMA#24890 "Bras"

// Systoic BP
* component[SystolicBP].code = http://loinc.org#8480-6 "Systolic blood pressure"
* component[SystolicBP].valueQuantity = 107 'mm[Hg]' "mm[Hg]"
* component[SystolicBP].interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"
* component[SystolicBP].interpretation.text = "Normal"


// Diastolic BP
* component[DiastolicBP].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[DiastolicBP].valueQuantity = 60 'mm[Hg]' "mm[Hg]"
* component[DiastolicBP].interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#L "low"
* component[DiastolicBP].interpretation.text = "En dessous de la normale"