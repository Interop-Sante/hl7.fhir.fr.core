// Profil source (IG Document Core) :
//   https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/profils/FRAdverseEventDocument.fsh
//
// Profil EU Core (héritage direct) : non disponible
// ─────────────────────────────────────────────────────────────────────────────

// ─────────────────────────────────────────────────────────────────────────────
// Extensions locales (backport R5→R4) : AdverseEvent.code et AdverseEvent.outcome n'ont pas d'extension cross-version officielle dans l'IG xver R5→R4 (https://hl7.org/fhir/uv/xver-r5.r4/0.1.0/artifacts.html ne couvre pas AdverseEvent.code ni AdverseEvent.outcome), contrairement au pattern habituel $xxx-r5 (alias vers http://hl7.org/fhir/5.0/StructureDefinition/extension-...). Elles sont donc définies ici et leur ^url fixé au format officiel des backports R5→R4 (http://hl7.org/fhir/5.0/StructureDefinition/extension-<Resource>.<Element>, ex. extension-AdverseEvent.contributingFactor), même si HL7 ne publie pas lui-même de définition à cette adresse pour code/outcome (vérifié absente de hl7.fhir.uv.xver-r5.r4, hl7.fhir.uv.extensions et 404 sur hl7.org).
// ─────────────────────────────────────────────────────────────────────────────

// Mime AdverseEvent.code (R5) — renommage de AdverseEvent.event (R4, binding Example SNOMED CT) sans équivalent bindable en R4 pour le JDV français.
Extension: FRCoreAdverseEventCodeExtension
Id: extension-AdverseEvent.code
Title: "FR Core AdverseEvent Extension - Code (backport R5→R4)"
Description: "Mime AdverseEvent.code (R5, renommage de AdverseEvent.event en R4) — non couvert par l'IG cross-version xver-r5.r4. Porte l'origine de l'effet indésirable (jdv-origine-effet-indesirable-cisis)."
Context: AdverseEvent
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-AdverseEvent.code"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-origine-effet-indesirable-cisis (required)
* valueCodeableConcept ^short = "Origine de l'effet indésirable (backport code R5→R4)"

// Mime AdverseEvent.outcome (R5, binding Example) — en R4 le binding est Required vers un valueset HL7 figé, donc impossible à re-binder sur jdv-evolution-cisis. Non couvert par l'IG cross-version xver-r5.r4.
Extension: FRCoreAdverseEventOutcomeExtension
Id: extension-AdverseEvent.outcome
Title: "FR Core AdverseEvent Extension - Outcome (backport R5→R4)"
Description: "Mime AdverseEvent.outcome (R5, binding Example) — en R4 outcome a un binding Required qui interdit tout re-binding vers jdv-evolution-cisis. Non couvert par l'IG cross-version xver-r5.r4."
Context: AdverseEvent
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-AdverseEvent.outcome"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-evolution-cisis (required)
* valueCodeableConcept ^short = "Évolution de l'effet indésirable (backport outcome R5→R4)"

Profile: FRCoreAdverseEventProfile
Parent: AdverseEvent
Id: fr-core-adverse-event
Title: "FR Core AdverseEvent Profile"
Description: "FRCoreAdverseEventProfile permet de décrire un effet indésirable prévisible lié à un médicament"

* category 1..1 // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..*)
// Fixé à medication-mishap : ce code vient de la révision R5 du CodeSystem terminology.hl7.org/CodeSystem/adverse-event-category (partagé R4/R5, binding extensible dès R4) — FRCore/Doc Core AdverseEvent ne couvre que les effets indésirables médicamenteux (cf. https://www.hl7.org/fhir/adverseevent.html). Le binding JDV d'origine (jdv-origine-effet-indesirable-cisis) est déplacé vers l'extension "code" (backport R5→R4, voir en tête de fichier).
* category.coding.system = $adverse-event-category
* category.coding.code = #medication-mishap
* category ^short = "Type d'effet indésirable — fixé à medication-mishap (code R5)"

// Extension backport mimant AdverseEvent.code (R5) — voir définition en tête de fichier. Porte le JDV d'origine, précédemment (à tort) sur category.
* extension contains FRCoreAdverseEventCodeExtension named code 1..1
* extension[code] ^short = "Origine de l'effet indésirable (backport R5→R4)"

// event (R4 natif, binding Example SNOMED CT) neutralisé : remplacé par l'extension "code" qui reprend le rôle de AdverseEvent.code (R5, renommage de event) pour porter le JDV d'origine.
* event 0..0

// date de début de l'effet indésirable ; la période complète (début + fin) peut aussi être portée par l'extension "occurrence" ci-dessous (backport officiel xver de AdverseEvent.occurrence[x], Period), en alternative à resultingCondition.abatementDateTime pour la date de fin.
* date ^short = "Date de début de l'effet indésirable"

// Extension officielle xver-r5.r4 (http://hl7.org/fhir/5.0/StructureDefinition/extension-AdverseEvent.occurrence) backportant AdverseEvent.occurrence[x] (R5) ; restreinte à Period pour porter la période complète de l'effet indésirable.
* extension contains $adverse-event-occurrence-r5 named occurrence 0..1
* extension[occurrence].value[x] only Period
* extension[occurrence] ^short = "Période de l'effet indésirable (backport R5 occurrence[x], Period)"

* suspectEntity 1.. // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..*)

* suspectEntity ^short = "Agent soupçonné d'être à l'origine de l'événement indésirable"
* suspectEntity.instance only Reference(MedicationAdministration) // * suspectEntity.instance only Reference(FRCoreMedicationAdministrationProfile)
* suspectEntity.instance ^short = "Médicament, substance incriminée, posologie"

* resultingCondition only Reference(Condition) // * resultingCondition only Reference(FRCoreConditionProfile)
* resultingCondition ^short = "Réaction observée"

* suspectEntity.causality 0..1 // Application de la cardinalité de FHIR R5 base : passage à 0..1
* suspectEntity.causality ^short = "Imputabilité"

* suspectEntity.causality.assessment 1..
* suspectEntity.causality.assessment from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-imputabilite-cisis (required)
* suspectEntity.causality.assessment ^short = "Niveau d'imputabilité"

* seriousness 1.. // Contrainte ajoutée uniquement par IG Document Core (FHIR R5 base : 0..1)
* seriousness from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-gravite-cisis (required)
* seriousness ^short = "Gravité de l'effet indésirable"

// outcome (R4 natif) neutralisé : binding Required vers un valueset HL7 figé, incompatible avec jdv-evolution-cisis. Remplacé par l'extension "outcome" (backport R5→R4, voir définition en tête de fichier) qui mime le binding Example de R5, librement re-bindable.
* outcome 0..0

* extension contains FRCoreAdverseEventOutcomeExtension named outcome 0..1
* extension[outcome] ^short = "Évolution de l'effet indésirable (backport R5→R4)"
