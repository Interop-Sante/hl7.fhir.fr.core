### Usage

La ressource Location est utilisée pour représenter chaque élément physique d'un établissement.

Il est possible de définir des coordonnées précises pour chaque élément de lieu (voir `position`). Ces coordonnées sont utiles soit en interne à l'établissement soit pour le patient.
Les coordonnées sont définies par des données WGS84, qui correspondent aux coordonnées GPS exprimées sous forme de latitude et longitude.

### Ajout du profil FR

En plus de préciser les types de lieu utilisables avec les ressources `Location`, le profil permet de définir :
- le type de chambre
- la position d'une lit dans une chambre