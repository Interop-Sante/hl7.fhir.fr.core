# FR Core CodeSystem Fiabilité Identité - Guide d'implémentation FR Core v2.2.0

## CodeSystem: FR Core CodeSystem Fiabilité Identité 

 
CodeSystem définissant les 4 statuts de confiance de l’identité imposés par le référentiel national d’identitovigilance (RNIV) [EXI SI 07] : « Tout système d’information en santé doit permettre d’attribuer un des 4 statuts de confiance à chaque identité numérique stockée. » Ces statuts sont exclusifs les uns des autres et résultent du croisement de deux critères indépendants : la récupération ou non des traits d’identité via le téléservice INSi, et la réalisation ou non d’un contrôle de cohérence avec un dispositif d’identification à haut niveau de confiance. 

This Code system is referenced in the definition of the following value sets:

* [FRCoreValueSetIdentityStatus](ValueSet-fr-core-vs-identity-status.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-identity-status",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-identity-status",
  "version" : "2.2.0",
  "name" : "FRCoreCodeSystemIdentityStatus",
  "title" : "FR Core CodeSystem Fiabilité Identité",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-07T08:58:25+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [{
    "name" : "Interop'Santé",
    "telecom" : [{
      "system" : "url",
      "value" : "http://interopsante.org"
    }]
  },
  {
    "name" : "InteropSanté",
    "telecom" : [{
      "system" : "email",
      "value" : "fhir@interopsante.org",
      "use" : "work"
    }]
  }],
  "description" : "CodeSystem définissant les 4 statuts de confiance de l'identité imposés par le référentiel national d'identitovigilance (RNIV) [EXI SI 07] : « Tout système d'information en santé doit permettre d'attribuer un des 4 statuts de confiance à chaque identité numérique stockée. » Ces statuts sont exclusifs les uns des autres et résultent du croisement de deux critères indépendants : la récupération ou non des traits d'identité via le téléservice INSi, et la réalisation ou non d'un contrôle de cohérence avec un dispositif d'identification à haut niveau de confiance.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "PROV",
    "display" : "Identité provisoire",
    "definition" : "Statut d'une identité locale qui n'a pas été récupérée sur le téléservice INSi et qui n'a pas encore fait l'objet d'un contrôle de cohérence avec les traits portés par un dispositif d'identification à haut niveau de confiance ou son équivalent."
  },
  {
    "code" : "VALI",
    "display" : "Identité validée",
    "definition" : "Statut d'une identité qui n'a pas été récupérée sur le téléservice INSi mais qui a fait l'objet d'un contrôle de cohérence avec le jeu de traits portés par un dispositif d'identification à haut niveau de confiance, ce qui garantit l'absence d'erreur dans l'enregistrement des traits d'identité d'un usager."
  },
  {
    "code" : "RECUP",
    "display" : "Identité récupérée",
    "definition" : "Statut d'une identité locale qui a été récupérée sur le téléservice INSi après avoir été comparée avec succès aux traits de la personne physique mais qui n'a pas encore pu être contrôlée à partir d'un document d'identification à haut niveau de confiance."
  },
  {
    "code" : "QUAL",
    "display" : "Identité qualifiée",
    "definition" : "Statut d'une identité locale qui a été récupérée via le téléservice INSi, puis comparée avec succès aux traits de la personne physique prise en charge portés par un dispositif d'identification à haut niveau de confiance ou son équivalent."
  }]
}

```
