# Introduction - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* **Introduction**

## Introduction

En France, presque 3000 hôpitaux et cliniques prennent en charge les soins des patients. Chaque établissement est organisé selon des entités plus ou moins hiérarchiques. Ces entités, dont l’on retrouve une brève définition dans le code de la santé publique ou les guides de gestion des établissements, sont utilisées au quotidien dans les composants logiciels qui constituent le système d’information d’un établissement, quelle que soit sa taille.

Pour permettre d’échanger ces organisations, les ressources FHIR sont adaptées au contexte national pour permettre une expression commune, nécessaire et suffisante.

La page sur [les références règlementaires](structure_ref_loi.md) permet de retrouver les éléments de définition de ces entités fournis par le cadre règlementaire français.

📌 Il est à noter que la loi précise que l’organisation d’une structure hospitalière lui est propre. Les règles de structuration sont très flexibles et il est donc nécessaire, afin de supporter cette diversité, d’avoir une grande souplesse dans l’expression des [relations entre les entités](structure_relations.md).

