Profile: FRCoreLocationProfile
Parent: Location
Id: fr-core-location
Title: "FR Core Location Profile"
Description: """Ressource Location adaptée au contexte français. 
Cette ressource est utilisée pour représenter un lieu physique, telle qu'une salle d'examen, 
un lit d'hôpital ou une chambre d'hôpital. """

* ^version = "1.0.0"
* ^status = #active
* ^kind = #resource
* ^fhirVersion = #4.0.1
* ^abstract = false

* extension contains FRCoreLocationTypeChambreExtension named typeChambre 0..1
* obeys inv-location-type-chambre

* extension contains FRCoreLocationPositionLitExtension named positionLit 0..1
* obeys inv-location-type-lit

* type  from FRCoreValueSetLocationType (required)

Invariant: inv-location-type-chambre
Description: """Location Type Chambre"""
Severity: #error
Expression: "extension('http://fhir.fr/StructureDefinition/fr-core-location-type-chambre').exists() implies type.coding.where(code = 'CHAMB').exists()"

Invariant: inv-location-type-lit
Description: """Location Type Lit"""
Severity: #error
Expression: "extension('http://fhir.fr/StructureDefinition/fr-core-location-position-lit').exists() implies type.coding.where(code = 'LIT').exists()"
