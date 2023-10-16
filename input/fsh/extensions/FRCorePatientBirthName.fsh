Extension: FRCorePatientBirthListGivenName
Id: fr-core-patient-birth-list-given-name
Title: "FR Core Patient Birth List Given name Extension"
Description: "Prénoms de l'acte de naissance"
* ^context.type = #fhirpath
* ^context.expression = "Patient.name"
* . ^short = "Dans le cas d’une identité créée ou modifiée par un appel au téléservice INSi, il s’agit de la liste des prénoms retournée par le téléservice. Ce composant contient tous les prénoms du patient, y compris le premier, que l'on retrouve également dans le champ name.given. Il s'agit de la liste des prénoms du patient, qu'elle soit issue d'une saisie locale ou du retour à l'appel au téléservice INSi. Conformément aux spécifications INS, cette liste est constituée des prénoms, séparés par des espaces."
* value[x] only string