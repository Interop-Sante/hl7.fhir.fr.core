### Usage

French profile of the Practitioner resource. This profile specifies the types of identifiers for practitioners in France.

Profil de la ressource Practitionner pour la France. Ce profil représente le professionel ainsi que son exercice professionel, il permet notammentde spécifier comment modéliser les identifiants et les qualifications du professionnel de santé en France ainsi que ces qualifications.

Pour une même personne au sens civil, il peut y avoir plusieurs ressources Practitionner pour chacun de ces exercice professionnel (ex : un médecin qui est également pharmacien aura deux ressources Practitioner). La reconciliation peut se faire au niveau de l'identifier (même numéro RPPS) ou bien en utilisant la ressource Person pour décrire l'identité civile du practicien.

Ce profil est notamment utilisé dans l'API FHIR de l'[annuaire santé](https://ansforge.github.io/annuaire-sante-fhir-documentation) de l'ANS.
