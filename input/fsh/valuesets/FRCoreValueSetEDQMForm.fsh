ValueSet: FRCoreValueSetEDQMForm
Id: fr-core-vs-edqm-form
Title: "FR Core ValueSet EDQM Form"
Description: "Formes pharmaceutiques (EDQM Standard Terms, classes PDF, BDF et CDF) utilisées pour coder la forme galénique d'un médicament (Medication.form)."
* insert SetValueset
* ^experimental = false

* include codes from system https://smt.esante.gouv.fr/terminologie-standardterms
    where concept is-a #PDF
* include codes from system https://smt.esante.gouv.fr/terminologie-standardterms
    where concept is-a #BDF
* include codes from system https://smt.esante.gouv.fr/terminologie-standardterms
    where concept is-a #CDF
