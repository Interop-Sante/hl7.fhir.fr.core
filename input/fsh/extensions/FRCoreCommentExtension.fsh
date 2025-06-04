Extension: FRCoreCommentExtension
Id: fr-core-comment
Title: "FR Core Comment Extension"
Description: "Ajout d'un commentaire sur un dataElement d'une ressource.\r\nAdd a comment on a dataElement  of a resource"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fhir
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^context.type = #element
* ^context.expression = "Patient.contact"
* . ^short = "Comment on element Patient.contact | Commentaire sur l'élément Patient.contact"
* value[x] only string

// TODO : demander à Isabelle : est-ce que cette extension est utilisée ? Dans quel cadre ? est-ce uqe les extensions structuredefinition-wg et structuredefinition-fmm ont un sens ?