### Les identifiants techniques vs les identifiants métiers

En FHIR, il y a plusieurs types d'identifiants :

* Les identifiants techniques (Resource.id), qui permettent d'identifier de manière unique une ressource au sein du serveur
* Les identifiants métiers (Resource.identifier), qui peuvent être multiples, permettent d'identifier la ressource en dehors du serveur.

Il est conseillé de favoriser l'usage des identifiants métiers pour faciliter l'identification de la ressource en dehors du serveur.

### Plus d'informations

Vous trouverez davantage d'informations autour des pratiques d'implémentation et de modélisation des guides d'implémentation sur l'IG Documentation de l'Agence du Numérique en Santé (https://interop.esante.gouv.fr/ig/documentation/)
