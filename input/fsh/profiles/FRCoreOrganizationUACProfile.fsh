Profile: FRCoreOrganizationUACProfile
Parent: FRCoreOrganizationProfile
Id: fr-core-organization-uac
Title: "FR Core Organization UAC Profile"
Description: """Ce profil permet de représenter les unités d'activité (UAC, parfois appelé PAC). Le PAC ou l’UAC est le niveau élémentaire de recueil des activités en vue de la facturation."""

* ^version = "1.0.0"
* ^status = #active
* ^kind = #resource
* ^fhirVersion = #4.0.1
* ^abstract = false

* extension contains
    FRCoreOrganizationDisciplinePrestationExtension named disciplinePrestation 0..1 and
    FRCoreOrganizationTarifExtension named tarif 0..1 

* type = $fr-core-v2-3307#UAC (exactly) 

* partOf only Reference(FRCoreOrganizationUFProfile)