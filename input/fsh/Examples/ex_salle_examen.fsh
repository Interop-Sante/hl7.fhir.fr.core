Instance: hopitaltest-salle-examen-01
InstanceOf: FRCoreLocationProfile
Usage: #example
Description: "Exemple de salle d'examen (Location de type salle d'examen)"

* type = $fr-location-type#SL_EXM "Salle d'examen"
* type.text = "Salle d'examen"
* status = #active

* telecom.system = #phone
* telecom.value = "84900"
* name = "Salle d'examen 01"

* managingOrganization = Reference(Organization/hopitaltest-uf-4701-endocrino-diab)