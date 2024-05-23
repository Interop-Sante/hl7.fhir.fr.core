Lien vers l'intégration continue : https://interop-sante.github.io/hl7.fhir.fr.core/main/ig

*/!\ Cette version est soumise à des changements réguliers et ne doit pas être utilisée telle quelle, elle est uniquement publiée pour consultation.*


[![Validation de l’IG](https://github.com/Interop-Sante/hl7.fhir.fr.core/actions/workflows/fhir-workflows.yml/badge.svg)](https://github.com/Interop-Sante/hl7.fhir.fr.core/actions/workflows/fhir-workflows.yml)

# Description

Code source permettant de générer le guide d'implémentation FrCore publié à l'adresse http://hl7.fr/ig/fhir/core
Il contient l'ensemble des ressources de conformité pour usage français.


## Générer l'IG

Pour générer l'IG, suivre la documentation sur le [confluence d'hl7](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation)

```
bash _updatePublisher.sh // Mise à jour du publisher java
bash _genonce.sh // Génère l'IG
```
