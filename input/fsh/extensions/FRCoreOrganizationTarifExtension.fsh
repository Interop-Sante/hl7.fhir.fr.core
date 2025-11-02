Extension: FRCoreOrganizationTarifExtension
Id: fr-core-organization-tarif
Title: "FR Core Organization Extension - Tarif Soin"
Description: "Tarif de soin associé à l'unité d'activité (UAC, parfois appelé PAC). Le PAC ou l’UAC est le niveau élémentaire de recueil des activités en vue de la facturation. Il est lié à une discipline de prestation et à un tarif (lié à la discipline de prestation). Le PAC ne sert qu’à la facturation du séjour. Il permet d’associer des tarifs de soins différents pour la prise en charge d’un patient."
Context: FRCoreOrganizationUACProfile

* ^version = "1.0.0"
* ^status = #active

* value[x] only Coding
* value[x] from FRCoreValueSetOrganizationCodeTarifTNJP (extensible)