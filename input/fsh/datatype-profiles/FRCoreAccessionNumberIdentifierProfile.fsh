// Profil source (IG Document Core) :
//   https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/dataType/FRAccessionNumberIdentifierDocument.fsh
//
// Profil EU Core (héritage direct) : non disponible
// ─────────────────────────────────────────────────────────────────────────────
/* Ce DataType existe déjà côté HL7.
Lors de la publication de la version HL7 correspondante, remplacer
ce profil par la version officielle.*/
Profile: FRCoreAccessionNumberIdentifierProfile
Parent: Identifier
Id: fr-core-accession-number-identifier
Title: "FR Core Accession Number Identifier Profile"
Description: "DataType définissant l'Accession Number d'une demande d'examen. Il s'agit d'un identifiant unique attribué à chaque demande d'examen."

* type 1..1
* type = http://terminology.hl7.org/CodeSystem/v2-0203#ACSN "Accession ID"

* system ^short = "L'espace de nommage pour l'identifiant"

* value 1..1
* value ^short = "La valeur de l'identifiant"
