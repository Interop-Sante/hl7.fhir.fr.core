// Source : https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/valueSets/FRValueSetProcedureCodeDocument.fsh
ValueSet: FRCoreValueSetProcedureCode
Id: fr-core-vs-procedure-code
Title: "FR Core ValueSet Procedure code"
Description: """
Codes autorisés par défaut pour indiquer un acte.
Inclut :
- CCAM : terminologie facturante pour la production d'actes.
- CISIS jdv-absent-or-unknown-procedure-cisis pour actes chirurgicaux inconnus ou absents.

Deux additional bindings extensibles, portés par FRCoreProcedureProfile.code, complètent ce binding par défaut :
- ValueSet IPS procedures-uv-ips (SNOMED CT, identique au parent EU Core) pour la demande d'acte ou de report d'actes à des fins internationales (en cours de validation en Europe).
- fr-core-vs-procedure-code-autre (CISIS "Autre acte") si l'acte n'est pas trouvé dans CCAM ni SNOMED CT.

Si aucun code approprié n'est disponible, l'acte peut être décrit en texte libre.
"""
* insert SetValueset

// CCAM - terminologie facturante pour la production d'actes
* include codes from system https://smt.esante.gouv.fr/terminologie-ccam

// CISIS absent/unknown
* include codes from valueset https://smt.esante.gouv.fr/fhir/ValueSet/jdv-absent-or-unknown-procedure-cisis

// SVS profile
* ^experimental = false
