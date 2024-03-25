Lien vers l'intégration continue : https://interop-sante.github.io/hl7.fhir.fr.core/main/ig
/!\ Cette version est soumise à des changements réguliers et ne doit pas être utilisée telle quelle, elle est uniquement publiée pour consultation.


[![Validation de l’IG](https://github.com/Interop-Sante/hl7.fhir.fr.core/actions/workflows/fhir-workflows.yml/badge.svg)](https://github.com/Interop-Sante/hl7.fhir.fr.core/actions/workflows/fhir-workflows.yml)

# Description

Ceci est exemple d'ImplementationGuide très simplifié qui servira de template pour les prochains développement d'IGs. Pour créer un nouvel IG, il suffit de forker ce document et de mettre à jour :

* sushi-config.yaml
* ig.ini
* input/fsh pour indiquer vos instances, profils, extensions, exemples...
* pagecontent pour créer la documentation en markdown.

# IG publisher

Après avoir créé les profil et mis à jour sushi-config, voici la démarche à suivre pour générer l'IG en html.

## Prérequis : sushi, java, ruby et jekyll

Sushi permet de convertir la [grammaire FSH](https://build.fhir.org/ig/HL7/fhir-shorthand/) pour générer des profils, extensions (StructureDefinition) et des exemples / instances FHIR. La prise en main est relativement facile lorsque l'on connaît bien FHIR.
Sushi est développé en javascript sous forme de module npm. 

```
npm install -g fsh-sushi
```

Pour information, [GoFSH](https://github.com/FHIR/GoFSH) permet de faire la transformation inverse : transformer une StructureDefinition au format FSH.

Une fois ses outils installés, il faut installer les dépendances de l'IG publisher :
Installation de [java](https://www.java.com/fr/download/help/download_options.html), [ruby](https://www.ruby-lang.org/fr/documentation/installation/) et [jekyll](https://jekyllrb.com/docs/installation/).

```
brew install ruby (sur mac)
gem install bundler jekyll
```

Vous trouverez davantage d'informations sur le [confluence d'hl7](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation)

Des difficultés pour installer ruby et jekyll peuvent survenir sur mac M1, M2: lancer le [terminal avec rosetta](https://apple.stackexchange.com/questions/428768/on-apple-m1-with-rosetta-how-to-open-entire-terminal-iterm-in-x86-64-architec) et suivre [cette procédure](https://github.com/jekyll/jekyll/issues/8576#issuecomment-798080994) permet de régler les problèmes.

## Générer l'IG

```
bash _updatePublisher.sh // Mise à jour du publisher java
bash _genonce.sh // Génère l'IG
```
