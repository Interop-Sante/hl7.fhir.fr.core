# FR Core CodeSystem Discipline de prestation - nomenclature SAE - Guide d'implémentation FR Core v2.2.0-ballot-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem Discipline de prestation - nomenclature SAE**

## CodeSystem: FR Core CodeSystem Discipline de prestation - nomenclature SAE 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-discipline-prestation | *Version*:2.2.0-ballot-2 |
| Draft as of 2026-02-23 | *Computable Name*:FRCoreCodeSystemDisciplinePrestation |

 
La nomenclature des discipline de prestation. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetDisciplinePrestation](ValueSet-fr-core-vs-discipline-prestation.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-discipline-prestation",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "language" : "fr-FR",
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-discipline-prestation",
  "version" : "2.2.0-ballot-2",
  "name" : "FRCoreCodeSystemDisciplinePrestation",
  "title" : "FR Core CodeSystem Discipline de prestation - nomenclature SAE",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-02-23T11:01:45+00:00",
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
  "description" : "La nomenclature des discipline de prestation.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 258,
  "concept" : [{
    "code" : "35",
    "display" : "Scanographie X",
    "definition" : "Scanographie X"
  },
  {
    "code" : "39",
    "display" : "Radiothérapie externe (césium, cobalt)",
    "definition" : "Radiothérapie externe (césium, cobalt)"
  },
  {
    "code" : "43",
    "display" : "Curiethérapie",
    "definition" : "Curiethérapie"
  },
  {
    "code" : "76",
    "display" : "Immunologie sans autre indication (sai)",
    "definition" : "Immunologie sans autre indication (sai)"
  },
  {
    "code" : "102",
    "display" : "Maladies infectieuses",
    "definition" : "Maladies infectieuses"
  },
  {
    "code" : "103",
    "display" : "Toxicologie (y compris en particulier activité des centres antipoison)",
    "definition" : "Toxicologie (y compris en particulier activité des centres antipoison)"
  },
  {
    "code" : "104",
    "display" : "Réanimation médicale (y compris soins intensifs)",
    "definition" : "Réanimation médicale (y compris soins intensifs)"
  },
  {
    "code" : "105",
    "display" : "Réanimation polyvalente (médicale + chirurgicale, y compris soins intensifs)",
    "definition" : "Réanimation polyvalente (médicale + chirurgicale, y compris soins intensifs)"
  },
  {
    "code" : "106",
    "display" : "Surveillance continue - médecine (non compris soins intensifs)",
    "definition" : "Surveillance continue - médecine (non compris soins intensifs)"
  },
  {
    "code" : "107",
    "display" : "Surveillance continue polyvalente (médicale+chirurgicale, non compris soins intensifs)",
    "definition" : "Surveillance continue polyvalente (médicale+chirurgicale, non compris soins intensifs)"
  },
  {
    "code" : "108",
    "display" : "Pédiatrie indifférenciée",
    "definition" : "Pédiatrie indifférenciée"
  },
  {
    "code" : "109",
    "display" : "Pédiatrie enfants et adolescents",
    "definition" : "Pédiatrie enfants et adolescents"
  },
  {
    "code" : "110",
    "display" : "Pédiatrie nouveau-nés et nourrissons indifférenciée",
    "definition" : "Pédiatrie nouveau-nés et nourrissons indifférenciée"
  },
  {
    "code" : "111",
    "display" : "Pédiatrie nourrissons",
    "definition" : "Pédiatrie nourrissons"
  },
  {
    "code" : "112",
    "display" : "Néonatologie",
    "definition" : "Néonatologie"
  },
  {
    "code" : "113",
    "display" : "Médecine gériatrique",
    "definition" : "Médecine gériatrique"
  },
  {
    "code" : "114",
    "display" : "Spécialités médicales indifférenciées",
    "definition" : "Spécialités médicales indifférenciées"
  },
  {
    "code" : "115",
    "display" : "Allergologie",
    "definition" : "Allergologie"
  },
  {
    "code" : "116",
    "display" : "Dermatologie et vénérologie indifférenciées",
    "definition" : "Dermatologie et vénérologie indifférenciées"
  },
  {
    "code" : "117",
    "display" : "Dermatologie",
    "definition" : "Dermatologie"
  },
  {
    "code" : "118",
    "display" : "Vénérologie",
    "definition" : "Vénérologie"
  },
  {
    "code" : "119",
    "display" : "Endocrinologie, diabétologie, nutrition et métabolisme indifférenciés",
    "definition" : "Endocrinologie, diabétologie, nutrition et métabolisme indifférenciés"
  },
  {
    "code" : "120",
    "display" : "Endocrinologie",
    "definition" : "Endocrinologie"
  },
  {
    "code" : "121",
    "display" : "Diabétologie",
    "definition" : "Diabétologie"
  },
  {
    "code" : "122",
    "display" : "Nutrition-métabolisme",
    "definition" : "Nutrition-métabolisme"
  },
  {
    "code" : "123",
    "display" : "Hématologie et maladies du sang",
    "definition" : "Hématologie et maladies du sang"
  },
  {
    "code" : "124",
    "display" : "Hépatogastro-entérologie",
    "definition" : "Hépatogastro-entérologie"
  },
  {
    "code" : "125",
    "display" : "Maladies tropicales et exotiques",
    "definition" : "Maladies tropicales et exotiques"
  },
  {
    "code" : "126",
    "display" : "Médecine carcinologique",
    "definition" : "Médecine carcinologique"
  },
  {
    "code" : "127",
    "display" : "Médecine cardiovasculaire",
    "definition" : "Médecine cardiovasculaire"
  },
  {
    "code" : "129",
    "display" : "Neurologie",
    "definition" : "Neurologie"
  },
  {
    "code" : "130",
    "display" : "Pneumologie indifférenciée",
    "definition" : "Pneumologie indifférenciée"
  },
  {
    "code" : "131",
    "display" : "Pneumologie non tuberculeuse",
    "definition" : "Pneumologie non tuberculeuse"
  },
  {
    "code" : "132",
    "display" : "Phtisiologie",
    "definition" : "Phtisiologie"
  },
  {
    "code" : "133",
    "display" : "Rhumatologie",
    "definition" : "Rhumatologie"
  },
  {
    "code" : "134",
    "display" : "Radiothérapie et médecine nucléaire indifférenciées",
    "definition" : "Radiothérapie et médecine nucléaire indifférenciées"
  },
  {
    "code" : "135",
    "display" : "Radiothérapie",
    "definition" : "Radiothérapie"
  },
  {
    "code" : "136",
    "display" : "Médecine nucléaire",
    "definition" : "Médecine nucléaire"
  },
  {
    "code" : "137",
    "display" : "Chirurgie générale",
    "definition" : "Chirurgie générale"
  },
  {
    "code" : "138",
    "display" : "Chirurgie infantile indifférenciée",
    "definition" : "Chirurgie infantile indifférenciée"
  },
  {
    "code" : "139",
    "display" : "Chirurgie enfants et adolescents",
    "definition" : "Chirurgie enfants et adolescents"
  },
  {
    "code" : "140",
    "display" : "Chirurgie nouveau-nés et nourrissons",
    "definition" : "Chirurgie nouveau-nés et nourrissons"
  },
  {
    "code" : "141",
    "display" : "Réanimation chirurgicale indifférenciée (y compris soins intensifs)",
    "definition" : "Réanimation chirurgicale indifférenciée (y compris soins intensifs)"
  },
  {
    "code" : "142",
    "display" : "Surveillance continue chirurgicale (non compris soins intensifs)",
    "definition" : "Surveillance continue chirurgicale (non compris soins intensifs)"
  },
  {
    "code" : "143",
    "display" : "Spécialités chirurgicales indifférenciées",
    "definition" : "Spécialités chirurgicales indifférenciées"
  },
  {
    "code" : "144",
    "display" : "Chirurgie carcinologique",
    "definition" : "Chirurgie carcinologique"
  },
  {
    "code" : "145",
    "display" : "Chirurgie des grands brûlés",
    "definition" : "Chirurgie des grands brûlés"
  },
  {
    "code" : "146",
    "display" : "Chirurgie digestive",
    "definition" : "Chirurgie digestive"
  },
  {
    "code" : "147",
    "display" : "Chirurgie thoracique et cardiovasculaire indiférenciée",
    "definition" : "Chirurgie thoracique et cardiovasculaire indiférenciée"
  },
  {
    "code" : "148",
    "display" : "Chirurgie thoracopulmonaire",
    "definition" : "Chirurgie thoracopulmonaire"
  },
  {
    "code" : "149",
    "display" : "Chirurgie vasculaire",
    "definition" : "Chirurgie vasculaire"
  },
  {
    "code" : "150",
    "display" : "Chirurgie cardiovasculaire",
    "definition" : "Chirurgie cardiovasculaire"
  },
  {
    "code" : "151",
    "display" : "Neurochirurgie",
    "definition" : "Neurochirurgie"
  },
  {
    "code" : "152",
    "display" : "Orthopédie-traumatologie et chirurgie plastique et réparatrice indifférenciées",
    "definition" : "Orthopédie-traumatologie et chirurgie plastique et réparatrice indifférenciées"
  },
  {
    "code" : "153",
    "display" : "Orthopédie-traumatologie",
    "definition" : "Orthopédie-traumatologie"
  },
  {
    "code" : "154",
    "display" : "Chirurgie plastique et réparatrice",
    "definition" : "Chirurgie plastique et réparatrice"
  },
  {
    "code" : "155",
    "display" : "ORL et ophtalmologie indifférenciées",
    "definition" : "ORL et ophtalmologie indifférenciées"
  },
  {
    "code" : "156",
    "display" : "ORL",
    "definition" : "ORL"
  },
  {
    "code" : "157",
    "display" : "Ophtalmologie",
    "definition" : "Ophtalmologie"
  },
  {
    "code" : "158",
    "display" : "Stomatologie et chirurgie maxillofaciale indifférenciées",
    "definition" : "Stomatologie et chirurgie maxillofaciale indifférenciées"
  },
  {
    "code" : "159",
    "display" : "Stomatologie",
    "definition" : "Stomatologie"
  },
  {
    "code" : "160",
    "display" : "Chirurgie maxillofaciale",
    "definition" : "Chirurgie maxillofaciale"
  },
  {
    "code" : "161",
    "display" : "Urologie",
    "definition" : "Urologie"
  },
  {
    "code" : "162",
    "display" : "ORL, ophtalmologie et stomatologie indifférenciées",
    "definition" : "ORL, ophtalmologie et stomatologie indifférenciées"
  },
  {
    "code" : "163",
    "display" : "Gynécologie et obstétrique indifférenciées",
    "definition" : "Gynécologie et obstétrique indifférenciées"
  },
  {
    "code" : "164",
    "display" : "Gynécologie",
    "definition" : "Gynécologie"
  },
  {
    "code" : "165",
    "display" : "Obstétrique",
    "definition" : "Obstétrique"
  },
  {
    "code" : "166",
    "display" : "Chroniques et convalescents indifférenciés",
    "definition" : "Chroniques et convalescents indifférenciés"
  },
  {
    "code" : "167",
    "display" : "Chroniques",
    "definition" : "Chroniques"
  },
  {
    "code" : "168",
    "display" : "Repos, convalescence et régime indifférenciés",
    "definition" : "Repos, convalescence et régime indifférenciés"
  },
  {
    "code" : "169",
    "display" : "Repos",
    "definition" : "Repos"
  },
  {
    "code" : "170",
    "display" : "Convalescence",
    "definition" : "Convalescence"
  },
  {
    "code" : "171",
    "display" : "Régime (y compris diététique)",
    "definition" : "Régime (y compris diététique)"
  },
  {
    "code" : "172",
    "display" : "Rééducation fonctionnelle et réadaptation polyvalente",
    "definition" : "Rééducation fonctionnelle et réadaptation polyvalente"
  },
  {
    "code" : "173",
    "display" : "Cure thermale indifférenciée",
    "definition" : "Cure thermale indifférenciée"
  },
  {
    "code" : "174",
    "display" : "Médecine générale et spécialités médicales indifférenciées",
    "definition" : "Médecine générale et spécialités médicales indifférenciées"
  },
  {
    "code" : "176",
    "display" : "Long séjour pour personnes ayant perdu leur autonomie de vie",
    "definition" : "Long séjour pour personnes ayant perdu leur autonomie de vie"
  },
  {
    "code" : "177",
    "display" : "Cure médicale en établissement d'hébergements pour personnes âgées",
    "definition" : "Cure médicale en établissement d'hébergements pour personnes âgées"
  },
  {
    "code" : "178",
    "display" : "Rééducation fonctionnelle et réadaptation motrice indifférenciée",
    "definition" : "Rééducation fonctionnelle et réadaptation motrice indifférenciée"
  },
  {
    "code" : "179",
    "display" : "Rééducation fonctionnelle et réadaptation neurologique",
    "definition" : "Rééducation fonctionnelle et réadaptation neurologique"
  },
  {
    "code" : "180",
    "display" : "Rééducation des affections respiratoires",
    "definition" : "Rééducation des affections respiratoires"
  },
  {
    "code" : "181",
    "display" : "Chirurgie générale et spécialités chirugicales indifférenciées",
    "definition" : "Chirurgie générale et spécialités chirugicales indifférenciées"
  },
  {
    "code" : "182",
    "display" : "Rééducation des maladies cardiovasculaires",
    "definition" : "Rééducation des maladies cardiovasculaires"
  },
  {
    "code" : "183",
    "display" : "Obstétrique sans possibilités chirurgicales",
    "definition" : "Obstétrique sans possibilités chirurgicales"
  },
  {
    "code" : "184",
    "display" : "Rééducation des affections hépatodigestives",
    "definition" : "Rééducation des affections hépatodigestives"
  },
  {
    "code" : "185",
    "display" : "Repos et convalescence indifférenciés",
    "definition" : "Repos et convalescence indifférenciés"
  },
  {
    "code" : "187",
    "display" : "Autre rééducation fonctionnelle et réadaptation",
    "definition" : "Autre rééducation fonctionnelle et réadaptation"
  },
  {
    "code" : "189",
    "display" : "Cure thermale des voies respiratoires",
    "definition" : "Cure thermale des voies respiratoires"
  },
  {
    "code" : "193",
    "display" : "Cure thermale en rhumatologie et séquelles de traumatismes ostéo-articulaires",
    "definition" : "Cure thermale en rhumatologie et séquelles de traumatismes ostéo-articulaires"
  },
  {
    "code" : "194",
    "display" : "Cure thermale en dermatologie",
    "definition" : "Cure thermale en dermatologie"
  },
  {
    "code" : "195",
    "display" : "Lutte contre les toxicomanies (autres que l'alcoolisme)",
    "definition" : "Lutte contre les toxicomanies (autres que l'alcoolisme)"
  },
  {
    "code" : "196",
    "display" : "Lutte contre l'alcoolisme (y compris alcoologie)",
    "definition" : "Lutte contre l'alcoolisme (y compris alcoologie)"
  },
  {
    "code" : "198",
    "display" : "Lutte contre le cancer (activité des CRLC)",
    "definition" : "Lutte contre le cancer (activité des CRLC)"
  },
  {
    "code" : "206",
    "display" : "Lutte antihansénienne (lèpre)",
    "definition" : "Lutte antihansénienne (lèpre)"
  },
  {
    "code" : "214",
    "display" : "Postcure pour alcooliques",
    "definition" : "Postcure pour alcooliques"
  },
  {
    "code" : "217",
    "display" : "Lutte contre la tuberculose indifférenciée",
    "definition" : "Lutte contre la tuberculose indifférenciée"
  },
  {
    "code" : "219",
    "display" : "Lutte contre la tuberculose pulmonaire (sanatorium pulmonaire, hôtel de cure)",
    "definition" : "Lutte contre la tuberculose pulmonaire (sanatorium pulmonaire, hôtel de cure)"
  },
  {
    "code" : "220",
    "display" : "Lutte contre la tuberculose extrapulmonaire",
    "definition" : "Lutte contre la tuberculose extrapulmonaire"
  },
  {
    "code" : "221",
    "display" : "Cure et repos en préventorium",
    "definition" : "Cure et repos en préventorium"
  },
  {
    "code" : "222",
    "display" : "Aérium (traitements préventifs de la tuberculose)",
    "definition" : "Aérium (traitements préventifs de la tuberculose)"
  },
  {
    "code" : "223",
    "display" : "Médecine générale polyvalente",
    "definition" : "Médecine générale polyvalente"
  },
  {
    "code" : "224",
    "display" : "Observation et traitement pneumoconioses",
    "definition" : "Observation et traitement pneumoconioses"
  },
  {
    "code" : "225",
    "display" : "Médecine interne",
    "definition" : "Médecine interne"
  },
  {
    "code" : "226",
    "display" : "Accueil et orientation des malades atteints ou suspects de tuberculose pulmonaire",
    "definition" : "Accueil et orientation des malades atteints ou suspects de tuberculose pulmonaire"
  },
  {
    "code" : "227",
    "display" : "Postcure pour tuberculeux",
    "definition" : "Postcure pour tuberculeux"
  },
  {
    "code" : "230",
    "display" : "Psychiatrie générale",
    "definition" : "Psychiatrie générale"
  },
  {
    "code" : "235",
    "display" : "Soins intensifs de néonatologie",
    "definition" : "Soins intensifs de néonatologie"
  },
  {
    "code" : "236",
    "display" : "Psychiatrie infanto-juvénile",
    "definition" : "Psychiatrie infanto-juvénile"
  },
  {
    "code" : "252",
    "display" : "Pouponnière à caractère sanitaire (hébergement et soins en )",
    "definition" : "Pouponnière à caractère sanitaire (hébergement et soins en )"
  },
  {
    "code" : "263",
    "display" : "Placement familial sanitaire",
    "definition" : "Placement familial sanitaire"
  },
  {
    "code" : "267",
    "display" : "Action médico-sociale précoce pour enfants polyhandicapés",
    "definition" : "Action médico-sociale précoce pour enfants polyhandicapés"
  },
  {
    "code" : "268",
    "display" : "Action médico-sociale précoce pour autre catégorie de clientèle",
    "definition" : "Action médico-sociale précoce pour autre catégorie de clientèle"
  },
  {
    "code" : "269",
    "display" : "Soins de type foyer à double tarification pour adultes handicapés",
    "definition" : "Soins de type foyer à double tarification pour adultes handicapés"
  },
  {
    "code" : "273",
    "display" : "Hébergement en service de soins de longue durée",
    "definition" : "Hébergement en service de soins de longue durée"
  },
  {
    "code" : "302",
    "display" : "Chimiothérapie en hématologie et cancérologie",
    "definition" : "Chimiothérapie en hématologie et cancérologie"
  },
  {
    "code" : "304",
    "display" : "Transplantation du foie",
    "definition" : "Transplantation du foie"
  },
  {
    "code" : "305",
    "display" : "Transplantations rénales",
    "definition" : "Transplantations rénales"
  },
  {
    "code" : "306",
    "display" : "Transplantations cardiaques",
    "definition" : "Transplantations cardiaques"
  },
  {
    "code" : "309",
    "display" : "Interruption volontaire de grossesse",
    "definition" : "Interruption volontaire de grossesse"
  },
  {
    "code" : "310",
    "display" : "Examens de santé et bilans",
    "definition" : "Examens de santé et bilans"
  },
  {
    "code" : "311",
    "display" : "Transplantation coeur-poumon",
    "definition" : "Transplantation coeur-poumon"
  },
  {
    "code" : "312",
    "display" : "Néphrologie",
    "definition" : "Néphrologie"
  },
  {
    "code" : "313",
    "display" : "Psychiatrie - sorties modifiant la tarification",
    "definition" : "Psychiatrie - sorties modifiant la tarification"
  },
  {
    "code" : "314",
    "display" : "Allogreffe de moelle osseuse",
    "definition" : "Allogreffe de moelle osseuse"
  },
  {
    "code" : "316",
    "display" : "Autre transplantation d'organe (grêle, poumon, pancréas, multigreffe, ...)",
    "definition" : "Autre transplantation d'organe (grêle, poumon, pancréas, multigreffe, ...)"
  },
  {
    "code" : "318",
    "display" : "Action médico-sociale précoce pour tous types de déficiences S.A.I",
    "definition" : "Action médico-sociale précoce pour tous types de déficiences S.A.I"
  },
  {
    "code" : "320",
    "display" : "Activités des CMPP",
    "definition" : "Activités des CMPP"
  },
  {
    "code" : "321",
    "display" : "Action médico-sociale précoce pour déficients auditifs",
    "definition" : "Action médico-sociale précoce pour déficients auditifs"
  },
  {
    "code" : "322",
    "display" : "Action médico-sociale précoce pour déficients visuels",
    "definition" : "Action médico-sociale précoce pour déficients visuels"
  },
  {
    "code" : "323",
    "display" : "Action médico-sociale précoce pour déficients moteurs",
    "definition" : "Action médico-sociale précoce pour déficients moteurs"
  },
  {
    "code" : "324",
    "display" : "Action médico-sociale précoce pour déficients intellectuels",
    "definition" : "Action médico-sociale précoce pour déficients intellectuels"
  },
  {
    "code" : "325",
    "display" : "Placement familial spécialisé pour enfants handicapés",
    "definition" : "Placement familial spécialisé pour enfants handicapés"
  },
  {
    "code" : "355",
    "display" : "Activités des centres de jour pour personnes âgées",
    "definition" : "Activités des centres de jour pour personnes âgées"
  },
  {
    "code" : "358",
    "display" : "Soins à domicile",
    "definition" : "Soins à domicile"
  },
  {
    "code" : "389",
    "display" : "Lutte contre la stérilité",
    "definition" : "Lutte contre la stérilité"
  },
  {
    "code" : "398",
    "display" : "Placement familial spécialisé pour adultes handicapés",
    "definition" : "Placement familial spécialisé pour adultes handicapés"
  },
  {
    "code" : "401",
    "display" : "Unité de proximité d'accueil, de traitement et d'orientation des urgences (UPATOU)",
    "definition" : "Unité de proximité d'accueil, de traitement et d'orientation des urgences (UPATOU)"
  },
  {
    "code" : "402",
    "display" : "Service d'accueil et de traitemet des urgences (SAU)",
    "definition" : "Service d'accueil et de traitemet des urgences (SAU)"
  },
  {
    "code" : "403",
    "display" : "Pôle spécialisé d'urgence en pédiatrie (POSU)",
    "definition" : "Pôle spécialisé d'urgence en pédiatrie (POSU)"
  },
  {
    "code" : "404",
    "display" : "Pôle spécialisé d'urgence en ophtalmologie (POSU)",
    "definition" : "Pôle spécialisé d'urgence en ophtalmologie (POSU)"
  },
  {
    "code" : "405",
    "display" : "Pôle spécialisé d'urgence en cardiologie (POSU)",
    "definition" : "Pôle spécialisé d'urgence en cardiologie (POSU)"
  },
  {
    "code" : "406",
    "display" : "Pôle spécialisé d'urgence en traumatologie (POSU)",
    "definition" : "Pôle spécialisé d'urgence en traumatologie (POSU)"
  },
  {
    "code" : "407",
    "display" : "Pôle spécialisé d'urgence en 'SOS main'(POSU)",
    "definition" : "Pôle spécialisé d'urgence en 'SOS main'(POSU)"
  },
  {
    "code" : "408",
    "display" : "Pôle spécialisé d'urgence en neurochirgie (POSU)",
    "definition" : "Pôle spécialisé d'urgence en neurochirgie (POSU)"
  },
  {
    "code" : "409",
    "display" : "Autre pôle spécialisé d'urgence non dénommé ailleurs (POSU)",
    "definition" : "Autre pôle spécialisé d'urgence non dénommé ailleurs (POSU)"
  },
  {
    "code" : "457",
    "display" : "Cure médicale spécialisée contre la tuberculose indifférenciée",
    "definition" : "Cure médicale spécialisée contre la tuberculose indifférenciée"
  },
  {
    "code" : "458",
    "display" : "Cure médicale spécialisée contre la tuberculose pulmonaire",
    "definition" : "Cure médicale spécialisée contre la tuberculose pulmonaire"
  },
  {
    "code" : "459",
    "display" : "Cure médicale specialisée contre la tuberculose extra-pulmonaire",
    "definition" : "Cure médicale specialisée contre la tuberculose extra-pulmonaire"
  },
  {
    "code" : "460",
    "display" : "Cure médicale spécialisée contre la tuberculose (préventorium)",
    "definition" : "Cure médicale spécialisée contre la tuberculose (préventorium)"
  },
  {
    "code" : "462",
    "display" : "Autre cure médicale spécialisée pour enfants (notamment aérium reclassé)",
    "definition" : "Autre cure médicale spécialisée pour enfants (notamment aérium reclassé)"
  },
  {
    "code" : "463",
    "display" : "Autre cure médicale spécialisée pour tous âges",
    "definition" : "Autre cure médicale spécialisée pour tous âges"
  },
  {
    "code" : "464",
    "display" : "Cure médicale spécialisée pneumologique pour enfants",
    "definition" : "Cure médicale spécialisée pneumologique pour enfants"
  },
  {
    "code" : "465",
    "display" : "Cure médicale spécialisée pneumologique pour tous âges",
    "definition" : "Cure médicale spécialisée pneumologique pour tous âges"
  },
  {
    "code" : "466",
    "display" : "Convalescence réadaptation pour personnes âgées",
    "definition" : "Convalescence réadaptation pour personnes âgées"
  },
  {
    "code" : "467",
    "display" : "Cure médicale spécialisée cardiologique pour enfants",
    "definition" : "Cure médicale spécialisée cardiologique pour enfants"
  },
  {
    "code" : "468",
    "display" : "Cure médicale spécialisée cardiologique pour tous âges",
    "definition" : "Cure médicale spécialisée cardiologique pour tous âges"
  },
  {
    "code" : "552",
    "display" : "Entraînement à l'hémodialyse à domicile et à l'autodialyse",
    "definition" : "Entraînement à l'hémodialyse à domicile et à l'autodialyse"
  },
  {
    "code" : "553",
    "display" : "Entraînement à la dialyse péritonéale à domicile",
    "definition" : "Entraînement à la dialyse péritonéale à domicile"
  },
  {
    "code" : "554",
    "display" : "Entraînement à la dialyse péritonéale continue",
    "definition" : "Entraînement à la dialyse péritonéale continue"
  },
  {
    "code" : "555",
    "display" : "Dialyse péritonéale",
    "definition" : "Dialyse péritonéale"
  },
  {
    "code" : "556",
    "display" : "Dialyse péritonéale continue",
    "definition" : "Dialyse péritonéale continue"
  },
  {
    "code" : "557",
    "display" : "ORL et stomatologie indifférenciées",
    "definition" : "ORL et stomatologie indifférenciées"
  },
  {
    "code" : "588",
    "display" : "Soins courants en établissement d'hébergement pour personnes âgées",
    "definition" : "Soins courants en établissement d'hébergement pour personnes âgées"
  },
  {
    "code" : "593",
    "display" : "Accueil de l'enfant accompagnant la mère convalescente",
    "definition" : "Accueil de l'enfant accompagnant la mère convalescente"
  },
  {
    "code" : "594",
    "display" : "Repos prénatal",
    "definition" : "Repos prénatal"
  },
  {
    "code" : "595",
    "display" : "Convalescence postnatale",
    "definition" : "Convalescence postnatale"
  },
  {
    "code" : "604",
    "display" : "Cure médicale non spécialisée pour enfants (MECS ouverte en permanence)",
    "definition" : "Cure médicale non spécialisée pour enfants (MECS ouverte en permanence)"
  },
  {
    "code" : "605",
    "display" : "Cure médicale non spécialisée pour enfants (MECS ouverte temporairement)",
    "definition" : "Cure médicale non spécialisée pour enfants (MECS ouverte temporairement)"
  },
  {
    "code" : "606",
    "display" : "Cure thermale pour enfants (MECS ouverte en permanence)",
    "definition" : "Cure thermale pour enfants (MECS ouverte en permanence)"
  },
  {
    "code" : "607",
    "display" : "Cure thermale pour enfants (MECS ouverte de façon temporaire)",
    "definition" : "Cure thermale pour enfants (MECS ouverte de façon temporaire)"
  },
  {
    "code" : "608",
    "display" : "Cure médicale pour enfants atteints d'affections chroniques non tuberculeuses des voies respiratoires (MECS ouverte en permanence)",
    "definition" : "Cure médicale pour enfants atteints d'affections chroniques non tuberculeuses des voies respiratoires (MECS ouverte en permanence)"
  },
  {
    "code" : "609",
    "display" : "Cure médicale pour enfants atteints d'affections chroniques non tuberculeuses des voies respiratoires (MECS ouverte de façon temporaire)",
    "definition" : "Cure médicale pour enfants atteints d'affections chroniques non tuberculeuses des voies respiratoires (MECS ouverte de façon temporaire)"
  },
  {
    "code" : "610",
    "display" : "Cure médicale pour enfants convalescents de rhumatismes aigus (MECS ouverte en permanence)",
    "definition" : "Cure médicale pour enfants convalescents de rhumatismes aigus (MECS ouverte en permanence)"
  },
  {
    "code" : "611",
    "display" : "Cure médicale pour enfants convalescents de rhumatismes aigus (MECS ouverte de façon temporaire)",
    "definition" : "Cure médicale pour enfants convalescents de rhumatismes aigus (MECS ouverte de façon temporaire)"
  },
  {
    "code" : "612",
    "display" : "Cure médicale pour enfants diabétiques (MECS ouverte en permanence)",
    "definition" : "Cure médicale pour enfants diabétiques (MECS ouverte en permanence)"
  },
  {
    "code" : "613",
    "display" : "Cure médicale pour enfants diabétiques (MECS ouverte de façon temporaire)",
    "definition" : "Cure médicale pour enfants diabétiques (MECS ouverte de façon temporaire)"
  },
  {
    "code" : "614",
    "display" : "Cure médicale pour enfants épileptiques (MECS ouverte en permanence)",
    "definition" : "Cure médicale pour enfants épileptiques (MECS ouverte en permanence)"
  },
  {
    "code" : "615",
    "display" : "Cure médicale pour enfants épileptiques (MECS ouverte de façon temporaire)",
    "definition" : "Cure médicale pour enfants épileptiques (MECS ouverte de façon temporaire)"
  },
  {
    "code" : "616",
    "display" : "Cure médicale pour enfants atteints de déficiences temporaires somatopsychologiques (MECS ouverte en permanence)",
    "definition" : "Cure médicale pour enfants atteints de déficiences temporaires somatopsychologiques (MECS ouverte en permanence)"
  },
  {
    "code" : "618",
    "display" : "Cure médicale pour enfants hémophiles (MECS ouverte en permanence)",
    "definition" : "Cure médicale pour enfants hémophiles (MECS ouverte en permanence)"
  },
  {
    "code" : "619",
    "display" : "Cure médicale pour enfants hémophiles (MECS ouverte de façon temporaire)",
    "definition" : "Cure médicale pour enfants hémophiles (MECS ouverte de façon temporaire)"
  },
  {
    "code" : "620",
    "display" : "Cure médicale pour enfants atteints d'infirmités orthopédiques (MECS ouverte en permanence)",
    "definition" : "Cure médicale pour enfants atteints d'infirmités orthopédiques (MECS ouverte en permanence)"
  },
  {
    "code" : "621",
    "display" : "Cure médicale pour enfants atteints d'infirmités orthopédiques (MECS ouverte de façon temporaire)",
    "definition" : "Cure médicale pour enfants atteints d'infirmités orthopédiques (MECS ouverte de façon temporaire)"
  },
  {
    "code" : "622",
    "display" : "Cure médicale pour enfants énurétiques (MECS ouverte en permanence)",
    "definition" : "Cure médicale pour enfants énurétiques (MECS ouverte en permanence)"
  },
  {
    "code" : "623",
    "display" : "Cure médicale pour enfants énurétiques (MECS ouverte de façon temporaire)",
    "definition" : "Cure médicale pour enfants énurétiques (MECS ouverte de façon temporaire)"
  },
  {
    "code" : "624",
    "display" : "Autre cure médicale spécialisée pour enfants (MECS ouverte en permanence)",
    "definition" : "Autre cure médicale spécialisée pour enfants (MECS ouverte en permanence)"
  },
  {
    "code" : "625",
    "display" : "Autre cure médicale spécialisée pour enfants (MECS ouverte de façon temporaire)",
    "definition" : "Autre cure médicale spécialisée pour enfants (MECS ouverte de façon temporaire)"
  },
  {
    "code" : "627",
    "display" : "Moyen séjour indifférencié",
    "definition" : "Moyen séjour indifférencié"
  },
  {
    "code" : "628",
    "display" : "Orthopédie",
    "definition" : "Orthopédie"
  },
  {
    "code" : "631",
    "display" : "Gynécologie chirurgicale",
    "definition" : "Gynécologie chirurgicale"
  },
  {
    "code" : "635",
    "display" : "Réanimation néonatale",
    "definition" : "Réanimation néonatale"
  },
  {
    "code" : "636",
    "display" : "Réanimation pédiatrique",
    "definition" : "Réanimation pédiatrique"
  },
  {
    "code" : "637",
    "display" : "Surveillance continue en cardiologie",
    "definition" : "Surveillance continue en cardiologie"
  },
  {
    "code" : "638",
    "display" : "Surveillance continue en pédiatrie",
    "definition" : "Surveillance continue en pédiatrie"
  },
  {
    "code" : "639",
    "display" : "Surveillance continue en néphrologie",
    "definition" : "Surveillance continue en néphrologie"
  },
  {
    "code" : "640",
    "display" : "Surveillance continue en urologie",
    "definition" : "Surveillance continue en urologie"
  },
  {
    "code" : "641",
    "display" : "Réanimation en cardiologie",
    "definition" : "Réanimation en cardiologie"
  },
  {
    "code" : "644",
    "display" : "Neutronthérapie",
    "definition" : "Neutronthérapie"
  },
  {
    "code" : "645",
    "display" : "Oxygénothérapie isolée (insuffisants respiratoires)",
    "definition" : "Oxygénothérapie isolée (insuffisants respiratoires)"
  },
  {
    "code" : "646",
    "display" : "Assistance ventilatoire sans trachéotomie (insuffisants respiratoires)",
    "definition" : "Assistance ventilatoire sans trachéotomie (insuffisants respiratoires)"
  },
  {
    "code" : "647",
    "display" : "Assistance ventilatoire endotrachéale (insuffisants respiratoires)",
    "definition" : "Assistance ventilatoire endotrachéale (insuffisants respiratoires)"
  },
  {
    "code" : "648",
    "display" : "Trachéotomie isolée (insuffisants respiratoires)",
    "definition" : "Trachéotomie isolée (insuffisants respiratoires)"
  },
  {
    "code" : "651",
    "display" : "Cure thermale des affections des muqueuses buccolinguales",
    "definition" : "Cure thermale des affections des muqueuses buccolinguales"
  },
  {
    "code" : "654",
    "display" : "Hébergement spécialisé pour enfants et adolescents handicapés",
    "definition" : "Hébergement spécialisé pour enfants et adolescents handicapés"
  },
  {
    "code" : "657",
    "display" : "Hébergement temporaire pour personnes âgées",
    "definition" : "Hébergement temporaire pour personnes âgées"
  },
  {
    "code" : "663",
    "display" : "Nutrition parentérale pour enfants",
    "definition" : "Nutrition parentérale pour enfants"
  },
  {
    "code" : "664",
    "display" : "Nutrition parentérale pour adultes",
    "definition" : "Nutrition parentérale pour adultes"
  },
  {
    "code" : "715",
    "display" : "Surveillance par monitorage en vue de prévenir la mort subite et inexpliquée du nourrisson",
    "definition" : "Surveillance par monitorage en vue de prévenir la mort subite et inexpliquée du nourrisson"
  },
  {
    "code" : "717",
    "display" : "Soins hautement spécialisés en médecine",
    "definition" : "Soins hautement spécialisés en médecine"
  },
  {
    "code" : "718",
    "display" : "Soins hautement spécialisés en chirurgie",
    "definition" : "Soins hautement spécialisés en chirurgie"
  },
  {
    "code" : "719",
    "display" : "Soins hautement spécialisés en gynécologie-obstétrique",
    "definition" : "Soins hautement spécialisés en gynécologie-obstétrique"
  },
  {
    "code" : "720",
    "display" : "Réanimation néonatale et pédiatrique indifférenciée",
    "definition" : "Réanimation néonatale et pédiatrique indifférenciée"
  },
  {
    "code" : "721",
    "display" : "Radiothérapie métabolique (ingestion de source)",
    "definition" : "Radiothérapie métabolique (ingestion de source)"
  },
  {
    "code" : "722",
    "display" : "Maladies infectieuses, tropicales et exotiques indifférenciées",
    "definition" : "Maladies infectieuses, tropicales et exotiques indifférenciées"
  },
  {
    "code" : "723",
    "display" : "Autodialyse",
    "definition" : "Autodialyse"
  },
  {
    "code" : "728",
    "display" : "Cardiologie infantile",
    "definition" : "Cardiologie infantile"
  },
  {
    "code" : "729",
    "display" : "Néphrologie infantile",
    "definition" : "Néphrologie infantile"
  },
  {
    "code" : "730",
    "display" : "Carcinologie infantile",
    "definition" : "Carcinologie infantile"
  },
  {
    "code" : "731",
    "display" : "Autres spécialités pédiatriques",
    "definition" : "Autres spécialités pédiatriques"
  },
  {
    "code" : "732",
    "display" : "Hépatologie",
    "definition" : "Hépatologie"
  },
  {
    "code" : "733",
    "display" : "Gastro-entérologie",
    "definition" : "Gastro-entérologie"
  },
  {
    "code" : "734",
    "display" : "Réanimation chirurgicale pédiatrique",
    "definition" : "Réanimation chirurgicale pédiatrique"
  },
  {
    "code" : "735",
    "display" : "Réanimation chirurgicale adulte",
    "definition" : "Réanimation chirurgicale adulte"
  },
  {
    "code" : "736",
    "display" : "Traumatologie",
    "definition" : "Traumatologie"
  },
  {
    "code" : "737",
    "display" : "Convalescence et réadaptation",
    "definition" : "Convalescence et réadaptation"
  },
  {
    "code" : "738",
    "display" : "Rééducation fonctionnelle et réadaptation motrice orientation rhumatologie",
    "definition" : "Rééducation fonctionnelle et réadaptation motrice orientation rhumatologie"
  },
  {
    "code" : "739",
    "display" : "Rééducation fonctionnelle et réadaptation motrice orientation traumatologie",
    "definition" : "Rééducation fonctionnelle et réadaptation motrice orientation traumatologie"
  },
  {
    "code" : "743",
    "display" : "Immuno-hématologie",
    "definition" : "Immuno-hématologie"
  },
  {
    "code" : "744",
    "display" : "Immuno-cancérologie",
    "definition" : "Immuno-cancérologie"
  },
  {
    "code" : "753",
    "display" : "Imagerie par résonance magnétique (IRM)",
    "definition" : "Imagerie par résonance magnétique (IRM)"
  },
  {
    "code" : "797",
    "display" : "Hémodialyse et hémofiltration pour chroniques adultes",
    "definition" : "Hémodialyse et hémofiltration pour chroniques adultes"
  },
  {
    "code" : "798",
    "display" : "Hémodialyse et hémofiltration pour chroniques enfants",
    "definition" : "Hémodialyse et hémofiltration pour chroniques enfants"
  },
  {
    "code" : "799",
    "display" : "Assistance ventilatoire avec prothèse extrathoracique(insiffisants respiratoires)",
    "definition" : "Assistance ventilatoire avec prothèse extrathoracique(insiffisants respiratoires)"
  },
  {
    "code" : "800",
    "display" : "Assistance ventilatoire par pression positive continue ou autres techniques particulières agréées (insuffisants respiratoires)",
    "definition" : "Assistance ventilatoire par pression positive continue ou autres techniques particulières agréées (insuffisants respiratoires)"
  },
  {
    "code" : "801",
    "display" : "Insulinothérapie",
    "definition" : "Insulinothérapie"
  },
  {
    "code" : "803",
    "display" : "Psychitatrie pour arriérés profonds",
    "definition" : "Psychitatrie pour arriérés profonds"
  },
  {
    "code" : "806",
    "display" : "Atelier thérapeutique pour adultes",
    "definition" : "Atelier thérapeutique pour adultes"
  },
  {
    "code" : "807",
    "display" : "Atelier thérapeutique pour adolescents",
    "definition" : "Atelier thérapeutique pour adolescents"
  },
  {
    "code" : "808",
    "display" : "Sectorisation psychiatrique en milieu pénitenciaire",
    "definition" : "Sectorisation psychiatrique en milieu pénitenciaire"
  },
  {
    "code" : "809",
    "display" : "Hématologie pédiatrique",
    "definition" : "Hématologie pédiatrique"
  },
  {
    "code" : "825",
    "display" : "Soins et accompagnement des malades en phase terminale-Soins palliatifs",
    "definition" : "Soins et accompagnement des malades en phase terminale-Soins palliatifs"
  },
  {
    "code" : "826",
    "display" : "Traitement spécialisé contre la douleur",
    "definition" : "Traitement spécialisé contre la douleur"
  },
  {
    "code" : "827",
    "display" : "Nutrition entérale à domicile",
    "definition" : "Nutrition entérale à domicile"
  },
  {
    "code" : "828",
    "display" : "Cure thermale pour maladies cardio-artérielles",
    "definition" : "Cure thermale pour maladies cardio-artérielles"
  },
  {
    "code" : "829",
    "display" : "Cure thermale en neurologie",
    "definition" : "Cure thermale en neurologie"
  },
  {
    "code" : "830",
    "display" : "Cure thermale pour affections psychosomatiques",
    "definition" : "Cure thermale pour affections psychosomatiques"
  },
  {
    "code" : "831",
    "display" : "Cure thermale en phlébologie",
    "definition" : "Cure thermale en phlébologie"
  },
  {
    "code" : "832",
    "display" : "Cure thermale pour troubles du développement chez l'enfant",
    "definition" : "Cure thermale pour troubles du développement chez l'enfant"
  },
  {
    "code" : "833",
    "display" : "Cure thermale en gynécologie",
    "definition" : "Cure thermale en gynécologie"
  },
  {
    "code" : "834",
    "display" : "Cure thermale pour maladies de l'appareil digestif et maladies métaboliques",
    "definition" : "Cure thermale pour maladies de l'appareil digestif et maladies métaboliques"
  },
  {
    "code" : "835",
    "display" : "Cure thermale pour maladies de l'appareil urinaire et maladies métaboliques",
    "definition" : "Cure thermale pour maladies de l'appareil urinaire et maladies métaboliques"
  },
  {
    "code" : "897",
    "display" : "Hébergement ouvert en foyer pour adultes handicapés",
    "definition" : "Hébergement ouvert en foyer pour adultes handicapés"
  },
  {
    "code" : "924",
    "display" : "Hébergement en maison de retraite",
    "definition" : "Hébergement en maison de retraite"
  },
  {
    "code" : "925",
    "display" : "Hébergement en logement foyer pour personnes âgées seules (F1)",
    "definition" : "Hébergement en logement foyer pour personnes âgées seules (F1)"
  },
  {
    "code" : "926",
    "display" : "Hébergement en logement foyer pour personnes âgées en couple (F2)",
    "definition" : "Hébergement en logement foyer pour personnes âgées en couple (F2)"
  },
  {
    "code" : "927",
    "display" : "Hébergement en logement foyer pour personnes âgées",
    "definition" : "Hébergement en logement foyer pour personnes âgées"
  },
  {
    "code" : "936",
    "display" : "Hébergement en logement foyer pour personnes âgées",
    "definition" : "Hébergement en logement foyer pour personnes âgées"
  },
  {
    "code" : "939",
    "display" : "Hébergement en logement foyer pour personnes âgées",
    "definition" : "Hébergement en logement foyer pour personnes âgées"
  }]
}

```
