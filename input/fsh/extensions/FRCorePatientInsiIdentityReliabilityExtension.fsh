// N'a pas l'air utilisé : à supprimer ?

// Extension: FRCorePatientInsiIdentityReliabilityExtension
// Id: fr-core-patient-insi-identity-reliability
// Title: "FR Core Patient Insi Identity Reliability Extension"
// * ^context.type = #element
// * ^context.expression = "Patient"

// * extension ^slicing.discriminator.type = #value
// * extension ^slicing.discriminator.path = "url"
// * extension ^slicing.rules = #open
// * extension contains
//     identityreliability 1..1 and
//     validationDateIdentity 1..1

// * extension[identityreliability].value[x] only Coding
// * extension[identityreliability].value[x] from FRCoreValueSetIdentityReliability (extensible)

// * extension[validationDateIdentity].value[x] only Period

// TODO : doublon INSI identity reliability & identreliability ?