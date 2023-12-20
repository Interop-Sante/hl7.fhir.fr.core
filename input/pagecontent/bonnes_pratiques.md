### Bonnes pratiques d'usage du guide d'implémentation

#### Les identifiants techniques vs les identifiants métiers

En FHIR, il y a plusieurs types d'identifiants :

* Les identifiants techniques (Resource.id), qui permettent d'identifier de manière unique une ressource au sein du serveur
* Les identifiants métiers (Resource.identifier), qui peuvent être multiples, permettent d'identifier la ressource en dehors du serveur.

Il est conseillé de favoriser l'usage des identifiants métiers pour faciliter l'identification de la ressource en dehors du serveur.
