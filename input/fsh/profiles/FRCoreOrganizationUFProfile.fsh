Profile: FRCoreOrganizationUFProfile
Parent: FRCoreOrganizationProfile
Id: fr-core-organization-uf
Title: "FR Core Organization UF Profile"
Description: "Profil de la ressource Organization permettant de représenter les unités fonctionnelles en établissement."

* ^version = "1.0.0"
* ^status = #active
* ^kind = #resource
* ^fhirVersion = #4.0.1
* ^abstract = false

* extension contains
    FRCoreOrganizationDisciplineEquipementExtension named discplineEquipement 0..1 and
    FRCoreOrganizationTypeActiviteExtension named typeActivite 0..1 and
    FRCoreOrganizationChampActiviteExtension named champActivite 0..1 and
    FRCoreOrganizationPlaceHebergementTheoriqueExtension named placeHebergement 0..1 and
    FRCoreOrganizationUFExterneExtension named externe 0..1 and
    FRCoreOrganizationUFIndicateurExtension named indicateur 0..* and
    FRCoreOrganizationDemandeuseActeExtension named demandeuseActe 0..1 and
    FRCoreOrganizationExecutanteActeExtension named executanteActe 0..1 

* type = $fr-core-v2-3307#UF (exactly)

//* partOf ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy"
//* partOf ^type.extension.valueBoolean = true

//* type from FRCoreValueSetOrganizationUFType (required)