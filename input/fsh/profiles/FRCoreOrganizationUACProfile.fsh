Profile: FRCoreOrganizationUACProfile
Parent: FRCoreOrganizationProfile
Id: fr-core-organization-uac
Title: "FR Core Organization UAC Profile"
Description: """Ce profil permet de représenter les unités d'activité (UAC, parfois appelé PAC). L'UAC (Unité d'Activité) est le niveau élémentaire de recueil des activités en vue de la facturation."""

* extension contains
    FRCoreOrganizationDisciplinePrestationExtension named disciplinePrestation 0..1 and
    FRCoreOrganizationTarifExtension named tarif 0..1 

* type = $fr-core-v2-3307#UAC (exactly) 

* partOf only Reference(FRCoreOrganizationUFProfile)