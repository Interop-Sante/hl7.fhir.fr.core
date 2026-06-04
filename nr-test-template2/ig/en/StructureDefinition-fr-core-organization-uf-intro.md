### Usage

Une Unité Fonctionnelle (UF) peut matérialiser une organisation prenant en charge ou non des patients. Elle peut également indiquer une responsabilité médicale. L'association d'une UF avec un responsable peut alors porter cette notion de responsabilité vis-à-vis d'un patient.

Ainsi il existe plusieurs types d'UF :
- UF d'hébergement : Une UF d'hébergement sert à affecter la localisation d'un patient dans la structure de soins. Une UF d'hébergement dispose de lits : pour accueillir physiquement le patient.
- UF de responsabilité médicale : Une UF de ce type sert à définir la responsabilité médicale lors de la prise en charge du patient. Il est possible qu'un patient soit localisé (hébergé) dans une UF de localisation qui n'a pas de rapport avec les soins dont il bénéficie pour des raisons de place dans une unité. Par ailleurs, une UF peut être de type hébergement et de type responsabilité médicale.
- UF administrative : Ce type d'UF permet de définir une organisation qui regroupe des activités non cliniques.
- UF de magasin : Une UF de type magasin sert à la gestion de la logistique.

### Ajout du profil FR

Ce profil ajoute par rapport au profil FR Organization, dont il hérite :
- la catégorisation en champ d'activité
- la définition du type d'activité
- la définition de la discipline d'équipement
- les indicateurs pour définir le role ou les roles de l'UF
- la possibilité de définir le positionnement de l'UF par rapport aux actes demandés/réalisés


L'unité fonctionnelle est définie par plusieurs caractéristiques permettant de la catégoriser :

| Caractéristique | Nomenclature nationale | Description | Value Set |
| --------------- | ---------------------- | ----------- |
| Champ d'activité | *✘*{: .no } | Permet de classer de façon macro une UF : MCO, HAD, PSY | [fr-core-vs-organization-champ-activite](ValueSet-fr-core-vs-organization-champ-activite.html) |
| Type d'activité | *✔*{: .yes } | Permet de définir une catégorie de haut niveau d'une UF. Elle permet par exemple d'indiquer si l'UF propose une hospitalisation complète ou partielle. | [fr-core-vs-organization-type-activite](ValueSet-fr-core-vs-organtization-type-activite.html) |
| Discipline d'équipement | *✔*{: .yes } | Permet définir la spécialité médicale ou médico-technique d'une UF, par exemple Neurochirurgie pour une activé médicale ou Radiologie vasculaire pour une UF médico-techique | [fr-core-vs-organization-discipline-equipement](ValueSet-fr-core-vs-organization-discipline-equipement.html) |
| Indicateurs | *✔*{: .yes } | Permet de définir si l'UF est de type Hébergement, Médicale, etc. | [fr-core-vs-organization-uf-indicateur](ValueSet-fr-core-vs-organization-uf-indicateur.html) |
| UF Externe | *✘*{: .no } | Permet de définir si une UF est externe à l'organisation. Cette notion est utilisée pour identifier des données en provenance ou à destination d'organisation tierce, comme la délegation de prestation à une structure extérieure | [fr-core-organization-uf-externe](StructureDefinition-fr-core-organization-uf-externe.html) |
| Demandeuse d'acte | *✘*{: .no } | Permet d'indiquer si l'UF est autorisée à demander des actes à une autre UF | [fr-core-organization-demandeuse-acte](StructureDefinition-fr-core-organization-demandeuse-acte.html) |
| Exécutante d'acte | *✘*{: .no } | Permet d'indiquer si l'UF peut réaliser des actes pour une UF demandeuse | [fr-core-organization-executante-acte](StructureDefinition-fr-core-organization-executante-acte.html) |
{: .table-is .table-striped }

*Exemples d'UF*

| Caractéristique | Valeur | Valeur |
| ------------- | ------ | ------ |
| Nom | Chirurgie pédiatrique | IRM |
| Champ d'activité | `MCO` | `MCO` |
| Type d'activité | `03 : Hospitalisation complète` | `32 : Radiologie (radiodiagnostic et radiothérapie), imagerie médicale` |
| Discipline d'équipement | `138 : Chirurgie infantile indifférenciée` | `753 : Imagerie par résonance magnétique (IRM)` |
| Indicateurs  | `HEB`, `MED` | `MED` |
| UF Externe | `N` | `N` |
| Demandeuse d'acte | `O` | `N` |
| Exécutante d'acte | `O` | `O` |
{: .table-is .table-striped }
