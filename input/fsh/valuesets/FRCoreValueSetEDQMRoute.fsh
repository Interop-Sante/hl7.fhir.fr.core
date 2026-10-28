ValueSet: FRCoreValueSetEDQMRoute
Id: fr-core-vs-edqm-route
Title: "FR Core ValueSet EDQM Route"
Description: "Voies d'administration (EDQM Standard Terms, classe ROA) utilisées pour coder la voie d'administration d'un médicament (dosage.route)."
* insert SetValueset
* ^experimental = false

* include codes from system https://smt.esante.gouv.fr/terminologie-standardterms
    where concept is-a #ROA
