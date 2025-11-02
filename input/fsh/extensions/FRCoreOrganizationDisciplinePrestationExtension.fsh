// TODO - extension utilisée nulle part, à étudier 

Extension: FRCoreOrganizationDisciplinePrestationExtension
Id: fr-core-organization-discipline-prestation
Title: "FR Core Organization Extension - Discipline Prestation"
Description: "Discipline de prestation d'une UAC"
Context: FRCoreOrganizationUACProfile

* ^version = "1.0.0"
* ^status = #active

* value[x] only Coding
* value[x] from FRCoreValueSetDisciplinePrestation (extensible)