Extension: FRCorePractitionerRoleCodeCategorieProfessionnelle
Id: fr-core-role-code-categorie-professionnelle
Title: "FR Core Practitioner Role Code Categorie Professionnelle"
Description: "Catégorie professionnelle selon le MOS de l'ANS. Indispensable pour discriminer les étudiants (internes, élèves, etc.)"
* ^purpose = "Discriminer les étudiants des professionnels de sa,nté diplômés."
* ^context.type = #element
* ^context.expression = "PractitionerRole.code"
* . ^short = "Catégorie professionnnelle selon le MOS de l'ANS"
* . ^comment = "Seul moyen de discriminer les étudiants selon le MOS qui reflète l'implémentation du système CPS et du RPPS. Si l'extension n'est pas instanciée, le rôle du PS n'est pas étudiant. Il s'agit d'un PS diplômé. Un étudiant n'a pas les mêmes habilitations ni capacités que le professionnel diplômé"

* value[x] only CodeableConcept
* value[x] ^requirements = "code de la catégorie professionnelle selon le MOS de l'ANS"

* value[x].coding 1..1
* value[x].coding from $fr-practitioner-role-categorie-professionnelle (required)
* value[x].coding ^short = "code de TRE_R09-CategorieProfessionnelle du MOS de l'ANS."
* value[x].coding ^definition = "Le code de la catégorie professionnelle selon le système de codage TRE_R09-CategorieProfessionnelle du MOS de l'ANS."
* value[x].coding ^comment = "Ce système de codage comporte 4 valeurs dont seule \"E\" est utile en production de soins pour discriminer les étudiants des différentes professions de santé réglementées."
* value[x].coding ^requirements = "Le seul moyen de discriminer les étudiants dans le MOS qui traduit l'implémentation du système CPS et du RPPS."
* value[x].coding ^binding.description = "MOS ANS / TRE_R09-CategorieProfessionnelle"