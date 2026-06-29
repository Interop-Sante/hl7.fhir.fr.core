// Source : https://github.com/ansforge/interop-IG-document-core/blob/main/input/fsh/RessourcesFHIRCorps/valueSets/FRValueSetEDQMDocument.fsh
ValueSet: FRCoreValueSetEDQM
Id: fr-core-vs-edqm
Title: "FR Core ValueSet EDQM"
Description: "Formes galéniques issues du CodeSystem EDQM fourni par le SMT (classe PDF)."
* insert SetValueset

* include codes from system https://smt.esante.gouv.fr/terminologie-standardterms
    where concept is-a #PDF
