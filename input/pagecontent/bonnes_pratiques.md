### Bonnes pratiques d'usage du guide d'implémentation

#### Les identifiants techniques vs les identifiants métiers

En FHIR, il y a plusieurs types d'identifiants :

* Les identifiants techniques (Resource.id), qui permettent d'identifier de manière unique une ressource au sein du serveur
* Les identifiants métiers (Resource.identifier), qui peuvent être multiples, permettent d'identifier la ressource en dehors du serveur.

Il est conseillé de favoriser l'usage des identifiants métiers pour faciliter l'identification de la ressource en dehors du serveur.

### Les pratiques de nommage des artifacts FHIR d'InteropSanté (HL7 France) et de FrCore

Les pratiques de nommages d'InteropSanté pour les artifacts FHIR se basent sur les [bonnes pratiques définies par l'ANS](https://interop.esante.gouv.fr/ig/documentation/bonnes_pratiques_modeler.html).

#### Exemples FrCore

| **Paramètre** | **Objet concerné** | **Exemple fr-core** |
| ----- | ----- | ----- | ----- |
| id | ressources de conformité | fr-core-patient |
| title | ressources de conformité | FR Core Patient Profile |
| name | ressources de conformité | FRCorePatientProfile |
| url | ressources de conformité |  [base]/[ResourceType]/[id] (généré automatiquement par sushi). A noter que [ResourceType] doit respecter le nom et la casse des ressources définies dans FHIR core (ex: StructureDefinition). | https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient |
| code  | SearchParameter|  toujours en minuscule, mots séparés par des tirets "-" si besoin | - |
{: .grid }

