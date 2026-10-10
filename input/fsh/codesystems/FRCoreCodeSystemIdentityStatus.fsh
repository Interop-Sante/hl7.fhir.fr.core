CodeSystem: FRCoreCodeSystemIdentityStatus
Id: fr-core-cs-identity-status
Title: "FR Core CodeSystem Fiabilité Identité"
Description: "CodeSystem définissant les 4 statuts de confiance de l'identité imposés par le référentiel national d'identitovigilance (RNIV) [EXI SI 07] : « Tout système d'information en santé doit permettre d'attribuer un des 4 statuts de confiance à chaque identité numérique stockée. » Ces statuts sont exclusifs les uns des autres et résultent du croisement de deux critères indépendants : la récupération ou non des traits d'identité via le téléservice INSi, et la réalisation ou non d'un contrôle de cohérence avec un dispositif d'identification à haut niveau de confiance."
* insert SetCodesystem

* ^caseSensitive = true
* ^content = #complete
* #PROV "Identité provisoire" "Statut d'une identité locale qui n'a pas été récupérée sur le téléservice INSi et qui n'a pas encore fait l'objet d'un contrôle de cohérence avec les traits portés par un dispositif d'identification à haut niveau de confiance ou son équivalent."
* #VALI "Identité validée" "Statut d'une identité qui n'a pas été récupérée sur le téléservice INSi mais qui a fait l'objet d'un contrôle de cohérence avec le jeu de traits portés par un dispositif d'identification à haut niveau de confiance, ce qui garantit l'absence d'erreur dans l'enregistrement des traits d'identité d'un usager."
* #RECUP "Identité récupérée" "Statut d'une identité locale qui a été récupérée sur le téléservice INSi après avoir été comparée avec succès aux traits de la personne physique mais qui n'a pas encore pu être contrôlée à partir d'un document d'identification à haut niveau de confiance."
* #QUAL "Identité qualifiée" "Statut d'une identité locale qui a été récupérée via le téléservice INSi, puis comparée avec succès aux traits de la personne physique prise en charge portés par un dispositif d'identification à haut niveau de confiance ou son équivalent."

// SCS profile
* ^experimental = false