### Usage

Le profil hérite de FRCorePatient enrichi de l'identité INS récupérée par le téléservice INSi et potentiellement qualifiée.

Ce profil permet d'indiquer les contraintes fortes nécessaires pour modéliser un patient avec les traits INS et le matricule INS, marqués en MustSupport (carré rouge contenant un S).

Les 5 traits INS doivent être ceux renvoyés par le téléservice INSi.

Une ressource conforme au profil FRCorePatientINSProfile sera également conforme au profil FRCorePatientProfile grâce au principe d'héritage, il n'est donc pas nécessaire d'avoir une instance de chaque profil pour un même patient.

Les identifiants INS-NIR ne peuvent être véhiculés uniquement dans le cas d'un patient qualifié (cf EXI 12 du référentiel INS version 2.1), raison pour laquelle les slices identifier sont définies au niveau du FrCorePatientINS et non au niveau du FRCorePatient.

Pour plus d'informations sur le contexte du patient INS, consultez le référentiel national d'identitovigilance (RNIV) et la documentation du référentiel INS de l'ANS :

* [Référentiel INS](https://esante.gouv.fr/produits-services/referentiel-ins)
* [Annexe – Prise en Charge de l'INS dans les volets du CI-SIS](https://esante.gouv.fr/annexe-prise-en-charge-de-lins-dans-les-volets-du-ci-sis)