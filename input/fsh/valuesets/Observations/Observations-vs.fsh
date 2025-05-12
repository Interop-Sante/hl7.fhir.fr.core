// opencimi

//From http://hl7.org/fhir/us/vitals/ValueSet/bodyTempMeasBodyLocationPrecoordVS
ValueSet: FRCoreValueSetBodyTemperatureMeasurementBodyLocation
Id: fr-core-vsbody-temp-meas-body-location
Title: "Body Temperature Measurement Body Location value set"
Description: "SELECT SNOMED CT code system values that describe where on the body the temperature was measured."
* $SCT#117590005 "Ear structure (body structure)"
* $SCT#7569003 "Finger structure (body structure)"
* $SCT#52795006 "Forehead structure (body structure)"
* $SCT#279549004 "Nasal cavity structure (body structure)"
* $SCT#71836000 "Nasopharyngeal structure (body structure)"
* $SCT#74262004 "Oral cavity structure (body structure)"
* $SCT#34402009 "Rectum structure (body structure)"
* $SCT#422543003 "Structure of axillary fossa (body structure)"
* $SCT#29707007 "Toe structure (body structure)"
* $SCT#42859004 "Tympanic membrane structure (body structure)"
* $SCT#89837001 "Urinary bladder structure (body structure)"


//From http://hl7.org/fhir/us/vitals/ValueSet/heartRateMeasBodyLocationPrecoordVS
ValueSet: FRCoreValueSetHeartRateMeasurementBodyLocation
Id: fr-core-vs-heartrate-body-location
Title: "Heart Rate Measurement Body Location Precoordinated value set"
Description: "SELECT SNOMED CT code system values that describe where on the body the heart rate was measured."
* $SCT#32062004 "Common carotid artery structure (body structure)"
* $SCT#113263003 "Left common carotid artery structure (body structure)"
* $SCT#65355003 "Right common carotid artery structure (body structure)"
* $SCT#13383001 "Structure of apex of heart (body structure)"
* $SCT#17137000 "Structure of brachial artery (body structure)"
* $SCT#86547008 "Structure of dorsalis pedis artery (body structure)"
* $SCT#7657000 "Structure of femoral artery (body structure)"
* $SCT#723961002 "Structure of left brachial artery (body structure)"
* $SCT#792817008 "Structure of left dorsalis pedis artery (body structure)"
* $SCT#113270003 "Structure of left femoral artery (body structure)"
* $SCT#25885001 "Structure of left popliteal artery (body structure)"
* $SCT#214912001 "Structure of left posterior tibial artery (body structure)"
* $SCT#50408007 "Structure of left pulmonary artery"
* $SCT#368504007 "Structure of left radial artery (body structure)"
* $SCT#24781000205105 "Structure of left superficial temporal artery (body structure)"
* $SCT#368506009 "Structure of left ulnar artery (body structure)"
* $SCT#43899006 "Structure of popliteal artery (body structure)"
* $SCT#13363002 "Structure of posterior tibial artery (body structure)"
* $SCT#45631007 "Structure of radial artery (body structure)"
* $SCT#723962009 "Structure of right brachial artery (body structure)"
* $SCT#792816004 "Structure of right dorsalis pedis artery (body structure)"
* $SCT#69833005 "Structure of right femoral artery (body structure)"
* $SCT#57832007 "Structure of right popliteal artery (body structure)"
* $SCT#368503001 "Structure of right radial artery (body structure)"
* $SCT#214811007 "Structure of right posterior tibial artery (body structure)"
* $SCT#78480002 "Structure of right pulmonary artery (body structure)"
* $SCT#24791000205107 "Structure of right superficial temporal artery (body structure)"
* $SCT#368505008 "Structure of right ulnar artery (body structure)"
* $SCT#15672000 "Structure of superficial temporal artery (body structure)"
* $SCT#44984001 "Structure of ulnar artery (body structure)"


//From http://hl7.org/fhir/us/vitals/ValueSet/heightLengthMeasMethodVS
ValueSet: FRCoreValueSetHeightMeasurementMethod
Id: fr-core-vs-height-meas-method
Title: "Height Length Measurement Method value set"
Description: "SELECT SNOMED CT code system values that describe how the height/length was measured."
* $SCT#414135002 "Estimated (qualifier value)"
* $SCT#258104002 "Measured (qualifier value)"
* $SCT#733985002 "Reported (qualifier value)"


//From http://hl7.org/fhir/us/vitals/ValueSet/bpmeasbodylocationprecoord
ValueSet: FRCoreValueSetBloodPressureMeasurementBodyLocation
Id: fr-core-vs-bp-meas-body-location
Title: "Blood Pressure Measurement Body Location Precoordinated value set"
Description: "SELECT SNOMED CT code system values that describe the location on the body where the blood pressure was measured."
* $SCT#49256001 "Structure of dorsal digital artery of foot (body structure)"
* $SCT#368469003 "Structure of proper volar digital arteries (body structure)"
* $SCT#17137000 "Structure of brachial artery (body structure)"
* $SCT#723961002 "Structure of left brachial artery (body structure)"
* $SCT#723962009 "Structure of right brachial artery (body structure)"
* $SCT#7657000 "Structure of femoral artery (body structure)"
* $SCT#113270003 "Structure of left femoral artery (body structure)"
* $SCT#69833005 "Structure of right femoral artery (body structure)"
* $SCT#45631007 "Structure of radial artery (body structure)"
* $SCT#368504007 "Structure of left radial artery (body structure)"
* $SCT#368503001 "Structure of right radial artery (body structure)"
* $SCT#13363002 "Structure of posterior tibial artery (body structure)"
* $SCT#214912001 "Structure of left posterior tibial artery (body structure)"
* $SCT#214811007 "Structure of right posterior tibial artery (body structure)"
* $SCT#54247002 "Ascending aorta structure (body structure)"
* $SCT#281130003 "Descending aorta structure (body structure)"
* $SCT#57034009 "Aortic arch structure (body structure)"
* $SCT#7832008 "Abdominal aorta structure (body structure)"


//From http://hl7.org/fhir/us/vitals/ValueSet/bpMeasMethodVS
ValueSet: FRCoreValueSetBloodPressureMeasurementMethod
Id: fr-core-vs-bp-meas-method
Title: "Blood Pressure Measurement Method value set"
Description: "SELECT SNOMED CT code system values that describe how a blood pressure was measured."
* $SCT#77938009 "Arterial pressure monitoring, invasive method (regime/therapy)"
* $SCT#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* $SCT#37931006 "Auscultation (procedure)"
* $SCT#765172009 "Doppler ultrasound (procedure)"
* $SCT#13385008 "Mediate auscultation (procedure)"
* $SCT#113011001 "Palpation (procedure)"
* $SCT#31813000 "Vascular oscillometry (procedure)"

//From http://hl7.org/fhir/us/vitals/ValueSet/bodyPositionVS
ValueSet: FRCoreValueSetBodyPosition
Id: fr-core-vs-body-position
Title: "Body Position value set"
Description: "SELECT SNOMED CT code system values the position in which the individual was in during a measurement."
* $SCT#30212006 "Fowler's position (finding)"
* $SCT#26527006 "Inverse Trendelenburg position (finding)"
* $SCT#102536004 "Left lateral decubitus position (finding)"
* $SCT#414585002 "Left lateral tilt (finding)"
* $SCT#10904000 "Orthostatic body position (finding)"
* $SCT#1240000 "Prone body position (finding)"
* $SCT#102538003 "Recumbent body position (finding)"
* $SCT#423413008 "Reverse trendelenburg positioning (finding)"
* $SCT#102535000 "Right lateral decubitus position (finding)"
* $SCT#415346000 "Right lateral tilt (finding)"
* $SCT#33586001 "Sitting position (finding)"
* $SCT#40199007 "Supine body position (finding)"
* $SCT#34106002 "Trendelenburg position (finding)"


// #FROM http://hl7.org/fhir/us/vitals/ValueSet/sPO2BodyLocationVS
ValueSet: FRCoreValueSetSPO2BodyLocation
Id: fr-core-vs-spo2-body-location
Title: "Oxygen Saturation Body Location value set"
Description: "Select SNOMED CT codes. An set of codes for the location at which oxygen saturation was assessed."
* $SCT#48800003 "Ear lobule structure (body structure)"
* $SCT#7569003 "Finger structure (body structure)"
* $SCT#52795006 "Forehead structure (body structure)"
* $SCT#29707007 "Toe structure (body structure)"



// FROM http://hl7.org/fhir/us/vitals/ValueSet/heartRateMeasMethodVS
ValueSet: FRCoreValueSetHeartRateMeasurementMethod
Id: fr-core-vs-heartrate-measurement-method
Title: "Heart Rate Measurement Method value set"
Description: "SELECT SNOMED CT code system values that describe how the heart rate was measured."
* $SCT#37931006 "Auscultation (procedure)"
* $SCT#268447006 "Doppler studies (procedure)"
* $SCT#29303009 "Electrocardiographic procedure (procedure)"
* $SCT#13385008 "Mediate auscultation (procedure)"
* $SCT#264598005 "Oximetry (procedure)"
* $SCT#113011001 "Palpation (procedure)"
* $SCT#277917001 "Thoracic impedance cardiography (procedure)"
* $SCT#239516002 "Monitoring procedure (regime/therapy)"


// From http://hl7.org/fhir/us/vitals/ValueSet/respiratoryRateMeasMethodVS
ValueSet: FRCoreValueSetRespiratoryRateMeasurementMethod
Id: fr-core-vs-respiratory-rate-meas-method
Title: "Respiratory Rate Measurement Method value set"
Description: "SELECT SNOMED CT code system values that describe how the respiratory rate was measured."
* $SCT#37931006 "Auscultation (procedure)"
* $SCT#32750006 "Inspection (procedure)"
* $SCT#239516002 "Monitoring procedure (regime/therapy)"