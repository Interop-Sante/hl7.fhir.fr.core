// Source : ValueSet IPS procedures-uv-ips (https://github.com/HL7/fhir-ips/blob/master/input/fsh/valuesets/ProceduresUvIps.fsh),
// binding du parent EU Core procedure-eu-core. Périmètre SNOMED CT repris à l'identique, hors "No known procedures"
// (787480003), déjà couvert dans FRCore par jdv-absent-or-unknown-procedure-cisis.
ValueSet: FRCoreValueSetProcedureCodeSnomed
Id: fr-core-vs-procedure-code-snomed
Title: "FR Core ValueSet Procedure code - SNOMED CT"
Description: "Terminologie SNOMED CT pour la demande d'acte ou de report d'actes à des fins internationales (en cours de validation en Europe). Périmètre repris du ValueSet IPS procedures-uv-ips (parent EU Core procedure-eu-core)."
* insert SetValueset

* include codes from system $SCT
    where concept descendent-of #71388002 "Procedure (procedure)"
* exclude codes from system $SCT
    where concept is-a #14734007 "Administrative procedure (procedure)"
* exclude codes from system $SCT
    where concept is-a #59524001 "Blood bank procedure (procedure)"
* exclude codes from system $SCT
    where concept is-a #389067005 "Community health procedure (procedure)"
* exclude codes from system $SCT
    where concept is-a #442006003 "Determination of information related to transfusion (procedure)"
* exclude codes from system $SCT
    where concept is-a #225288009 "Environmental care procedure (procedure)"
* exclude codes from system $SCT
    where concept is-a #308335008 "Patient encounter procedure (procedure)"
* exclude codes from system $SCT
    where concept is-a #710135002 "Promotion (procedure)"
* exclude codes from system $SCT
    where concept is-a #389084004 "Staff related procedure (procedure)"

// SVS profile
* ^experimental = false
