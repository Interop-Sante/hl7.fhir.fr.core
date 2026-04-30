Instance: hopitaltest-infectio-ch02-prsn-ngtv
InstanceOf: FRCoreLocationProfile
Usage: #example
Description: "Exemple de chambre en pression négative (service d'infectiologie) illustrant l'extension typeChambre"

* extension[typeChambre].valueCoding = FRCoreCodeSystemTypeChambre#PRSN_NGTV "Pression négative"

* type = $fr-location-type#CHAMB "Chambre"
* type.text = "Chambre"
* status = #active

* name = "Chambre 02 - Pression négative"

* managingOrganization = Reference(Organization/hopitaltest-eg-4-members)
