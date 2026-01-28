### Usage

Le profil Etablissement permet de représenter un établissement qu'il soit géographique ou juridique.
Un établissement juridique (ou entité juridique) correspond à l’entité institutionnelle dotée de la personnalité morale.
Un établissement géographique (ou entité géographique) désigne un site de production de soins, c’est-à-dire un lieu physique où sont réalisées les activités sanitaires ou médico-sociales.
Une même entité juridique peut regrouper plusieurs établissements géographiques si elle possède plusieurs implantations ou budgets distincts.

Les établissements sont référencés au Fichier National des Etablissements Sanitaires et Sociaux (FINESS) et possède un numéro FINESS, présent dans de nombreux échanges.

### Ajout du profil FR

Ce profil ajoute par rapport au profil FR Organization, dont il hérite :
- le numéro d'identification de l'établissement dans les registres Français
- la raison sociale
- la catégorie de l'établissement
  

Informations à positionner en fonction des types d'établissement

| Structure                     | FINESS        | SIREN        | SIRET       | RPPS Rang   |
| ----------------------------- | ------        | -----        | -----       | ---------   |
| Entité juridique              | *✔*{: .yes } | *✔*{: .yes } | *✘*{: .no } | *✘*{: .no } |
| Entité géographique           | *✔*{: .yes } | *✘*{: .no }  | *✔*{: .yes }| *✘*{: .no } |
| Cabinet individuel sans SIRET | *✘*{: .no }  | *✘*{: .no }  | *✘*{: .no } | *✔*{: .yes } |
{: .table-is .table-striped }