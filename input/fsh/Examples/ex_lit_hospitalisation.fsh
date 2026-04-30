Instance: hopitaltest-endocrino-ch04-litF
InstanceOf: FRCoreLocationProfile
Usage: #example

* type = $fr-location-type#LIT "Lit"
* type.text = "Lit"
* status = #active

* extension[0].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location-position-lit"
* extension[=].valueCoding = $fr-location-position-lit#FNTR "Fenêtre"

* telecom.system = #phone
* telecom.value = "84921"
* name = "Lit Fenetre - chambre 04"

* managingOrganization = Reference(Organization/hopitaltest-uf-4701-endocrino-diab)
* partOf = Reference(Location/hopitaltest-endocrino-ch04)
