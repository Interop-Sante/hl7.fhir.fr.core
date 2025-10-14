Instance: FRCoreLocationExample
InstanceOf: Location
Usage: #example
Description: "Exemple de ressource Location pour décrire la localisation du centre de radiologie de l'hôpital Z"

* id = "loc-radiologie-z"
* identifier[0].use = #official
* identifier[0].system = "urn:oid:1.2.250.1.1.1.2"  // exemple d’OID
* identifier[0].value = "HOSPZ-RADIO"
* status = #active
* name = "Centre de radiologie Hôpital Z"
* description = "Imagerie médicale, radiographies, scanners, IRM"
* mode = #instance   // ce site est une instance opérationnelle de location
* telecom[0].system = #email
* telecom[0].value = "radiologie@hosp-z.fr"
* address[0].line[0] = "10 rue de la Santé"
* address[0].postalCode = "75014"
* address[0].city = "Paris"
* address[0].district = "14e arrondissement"
* address[0].country = "FRA"

* physicalType = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-physical-type#BTMNT "Bâtiment"

* position[0].latitude = 48.8333
* position[0].longitude = 2.3333
* position[0].altitude = 35   // en mètres

* managingOrganization = Reference(FRCoreOrganizationExample)