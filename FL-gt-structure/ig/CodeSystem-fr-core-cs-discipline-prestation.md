# FR Core CodeSystem Discipline de prestation - nomenclature SAE - Guide d'implémentation Fr Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem Discipline de prestation - nomenclature SAE**

## CodeSystem: FR Core CodeSystem Discipline de prestation - nomenclature SAE 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-discipline-prestation | *Version*:2.2.0-ballot |
| Draft as of 2026-01-22 | *Computable Name*:FRCoreCodeSystemDisciplinePrestation |

 
La nomenclature des discipline de prestation. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetDisciplinePrestation](ValueSet-fr-core-vs-discipline-prestation.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-discipline-prestation",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-discipline-prestation",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreCodeSystemDisciplinePrestation",
  "title" : "FR Core CodeSystem Discipline de prestation - nomenclature SAE",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-01-22T11:51:24+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [
    {
      "name" : "Interop'Santé",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://interopsante.org/"
        }
      ]
    },
    {
      "name" : "InteropSanté",
      "telecom" : [
        {
          "system" : "email",
          "value" : "fhir@interopsante.org",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "La nomenclature des discipline de prestation.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "France"
        }
      ]
    }
  ],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 258,
  "concept" : [
    {
      "code" : "35",
      "display" : "Scanographie X"
    },
    {
      "code" : "39",
      "display" : "Radiothérapie externe (césium, cobalt)"
    },
    {
      "code" : "43",
      "display" : "Curiethérapie"
    },
    {
      "code" : "76",
      "display" : "Immunologie sans autre indication (sai)"
    },
    {
      "code" : "102",
      "display" : "Maladies infectieuses"
    },
    {
      "code" : "103",
      "display" : "Toxicologie (y compris en particulier activité des centres antipoison)"
    },
    {
      "code" : "104",
      "display" : "Réanimation médicale (y compris soins intensifs)"
    },
    {
      "code" : "105",
      "display" : "Réanimation polyvalente (médicale + chirurgicale, y compris soins intensifs)"
    },
    {
      "code" : "106",
      "display" : "Surveillance continue - médecine (non compris soins intensifs)"
    },
    {
      "code" : "107",
      "display" : "Surveillance continue polyvalente (médicale+chirurgicale, non compris soins intensifs)"
    },
    {
      "code" : "108",
      "display" : "Pédiatrie indifférenciée"
    },
    {
      "code" : "109",
      "display" : "Pédiatrie enfants et adolescents"
    },
    {
      "code" : "110",
      "display" : "Pédiatrie nouveau-nés et nourrissons indifférenciée"
    },
    {
      "code" : "111",
      "display" : "Pédiatrie nourrissons"
    },
    {
      "code" : "112",
      "display" : "Néonatologie"
    },
    {
      "code" : "113",
      "display" : "Médecine gériatrique"
    },
    {
      "code" : "114",
      "display" : "Spécialités médicales indifférenciées"
    },
    {
      "code" : "115",
      "display" : "Allergologie"
    },
    {
      "code" : "116",
      "display" : "Dermatologie et vénérologie indifférenciées"
    },
    {
      "code" : "117",
      "display" : "Dermatologie"
    },
    {
      "code" : "118",
      "display" : "Vénérologie"
    },
    {
      "code" : "119",
      "display" : "Endocrinologie, diabétologie, nutrition et métabolisme indifférenciés"
    },
    {
      "code" : "120",
      "display" : "Endocrinologie"
    },
    {
      "code" : "121",
      "display" : "Diabétologie"
    },
    {
      "code" : "122",
      "display" : "Nutrition-métabolisme"
    },
    {
      "code" : "123",
      "display" : "Hématologie et maladies du sang"
    },
    {
      "code" : "124",
      "display" : "Hépatogastro-entérologie"
    },
    {
      "code" : "125",
      "display" : "Maladies tropicales et exotiques"
    },
    {
      "code" : "126",
      "display" : "Médecine carcinologique"
    },
    {
      "code" : "127",
      "display" : "Médecine cardiovasculaire"
    },
    {
      "code" : "129",
      "display" : "Neurologie"
    },
    {
      "code" : "130",
      "display" : "Pneumologie indifférenciée"
    },
    {
      "code" : "131",
      "display" : "Pneumologie non tuberculeuse"
    },
    {
      "code" : "132",
      "display" : "Phtisiologie"
    },
    {
      "code" : "133",
      "display" : "Rhumatologie"
    },
    {
      "code" : "134",
      "display" : "Radiothérapie et médecine nucléaire indifférenciées"
    },
    {
      "code" : "135",
      "display" : "Radiothérapie"
    },
    {
      "code" : "136",
      "display" : "Médecine nucléaire"
    },
    {
      "code" : "137",
      "display" : "Chirurgie générale"
    },
    {
      "code" : "138",
      "display" : "Chirurgie infantile indifférenciée"
    },
    {
      "code" : "139",
      "display" : "Chirurgie enfants et adolescents"
    },
    {
      "code" : "140",
      "display" : "Chirurgie nouveau-nés et nourrissons"
    },
    {
      "code" : "141",
      "display" : "Réanimation chirurgicale indifférenciée (y compris soins intensifs)"
    },
    {
      "code" : "142",
      "display" : "Surveillance continue chirurgicale (non compris soins intensifs)"
    },
    {
      "code" : "143",
      "display" : "Spécialités chirurgicales indifférenciées"
    },
    {
      "code" : "144",
      "display" : "Chirurgie carcinologique"
    },
    {
      "code" : "145",
      "display" : "Chirurgie des grands brûlés"
    },
    {
      "code" : "146",
      "display" : "Chirurgie digestive"
    },
    {
      "code" : "147",
      "display" : "Chirurgie thoracique et cardiovasculaire indiférenciée"
    },
    {
      "code" : "148",
      "display" : "Chirurgie thoracopulmonaire"
    },
    {
      "code" : "149",
      "display" : "Chirurgie vasculaire"
    },
    {
      "code" : "150",
      "display" : "Chirurgie cardiovasculaire"
    },
    {
      "code" : "151",
      "display" : "Neurochirurgie"
    },
    {
      "code" : "152",
      "display" : "Orthopédie-traumatologie et chirurgie plastique et réparatrice indifférenciées"
    },
    {
      "code" : "153",
      "display" : "Orthopédie-traumatologie"
    },
    {
      "code" : "154",
      "display" : "Chirurgie plastique et réparatrice"
    },
    {
      "code" : "155",
      "display" : "ORL et ophtalmologie indifférenciées"
    },
    {
      "code" : "156",
      "display" : "ORL"
    },
    {
      "code" : "157",
      "display" : "Ophtalmologie"
    },
    {
      "code" : "158",
      "display" : "Stomatologie et chirurgie maxillofaciale indifférenciées"
    },
    {
      "code" : "159",
      "display" : "Stomatologie"
    },
    {
      "code" : "160",
      "display" : "Chirurgie maxillofaciale"
    },
    {
      "code" : "161",
      "display" : "Urologie"
    },
    {
      "code" : "162",
      "display" : "ORL, ophtalmologie et stomatologie indifférenciées"
    },
    {
      "code" : "163",
      "display" : "Gynécologie et obstétrique indifférenciées"
    },
    {
      "code" : "164",
      "display" : "Gynécologie"
    },
    {
      "code" : "165",
      "display" : "Obstétrique"
    },
    {
      "code" : "166",
      "display" : "Chroniques et convalescents indifférenciés"
    },
    {
      "code" : "167",
      "display" : "Chroniques"
    },
    {
      "code" : "168",
      "display" : "Repos, convalescence et régime indifférenciés"
    },
    {
      "code" : "169",
      "display" : "Repos"
    },
    {
      "code" : "170",
      "display" : "Convalescence"
    },
    {
      "code" : "171",
      "display" : "Régime (y compris diététique)"
    },
    {
      "code" : "172",
      "display" : "Rééducation fonctionnelle et réadaptation polyvalente"
    },
    {
      "code" : "173",
      "display" : "Cure thermale indifférenciée"
    },
    {
      "code" : "174",
      "display" : "Médecine générale et spécialités médicales indifférenciées"
    },
    {
      "code" : "176",
      "display" : "Long séjour pour personnes ayant perdu leur autonomie de vie"
    },
    {
      "code" : "177",
      "display" : "Cure médicale en établissement d'hébergements pour personnes âgées"
    },
    {
      "code" : "178",
      "display" : "Rééducation fonctionnelle et réadaptation motrice indifférenciée"
    },
    {
      "code" : "179",
      "display" : "Rééducation fonctionnelle et réadaptation neurologique"
    },
    {
      "code" : "180",
      "display" : "Rééducation des affections respiratoires"
    },
    {
      "code" : "181",
      "display" : "Chirurgie générale et spécialités chirugicales indifférenciées"
    },
    {
      "code" : "182",
      "display" : "Rééducation des maladies cardiovasculaires"
    },
    {
      "code" : "183",
      "display" : "Obstétrique sans possibilités chirurgicales"
    },
    {
      "code" : "184",
      "display" : "Rééducation des affections hépatodigestives"
    },
    {
      "code" : "185",
      "display" : "Repos et convalescence indifférenciés"
    },
    {
      "code" : "187",
      "display" : "Autre rééducation fonctionnelle et réadaptation"
    },
    {
      "code" : "189",
      "display" : "Cure thermale des voies respiratoires"
    },
    {
      "code" : "193",
      "display" : "Cure thermale en rhumatologie et séquelles de traumatismes ostéo-articulaires"
    },
    {
      "code" : "194",
      "display" : "Cure thermale en dermatologie"
    },
    {
      "code" : "195",
      "display" : "Lutte contre les toxicomanies (autres que l'alcoolisme)"
    },
    {
      "code" : "196",
      "display" : "Lutte contre l'alcoolisme (y compris alcoologie)"
    },
    {
      "code" : "198",
      "display" : "Lutte contre le cancer (activité des CRLC)"
    },
    {
      "code" : "206",
      "display" : "Lutte antihansénienne (lèpre)"
    },
    {
      "code" : "214",
      "display" : "Postcure pour alcooliques"
    },
    {
      "code" : "217",
      "display" : "Lutte contre la tuberculose indifférenciée"
    },
    {
      "code" : "219",
      "display" : "Lutte contre la tuberculose pulmonaire (sanatorium pulmonaire, hôtel de cure)"
    },
    {
      "code" : "220",
      "display" : "Lutte contre la tuberculose extrapulmonaire"
    },
    {
      "code" : "221",
      "display" : "Cure et repos en préventorium"
    },
    {
      "code" : "222",
      "display" : "Aérium (traitements préventifs de la tuberculose)"
    },
    {
      "code" : "223",
      "display" : "Médecine générale polyvalente"
    },
    {
      "code" : "224",
      "display" : "Observation et traitement pneumoconioses"
    },
    {
      "code" : "225",
      "display" : "Médecine interne"
    },
    {
      "code" : "226",
      "display" : "Accueil et orientation des malades atteints ou suspects de tuberculose pulmonaire"
    },
    {
      "code" : "227",
      "display" : "Postcure pour tuberculeux"
    },
    {
      "code" : "230",
      "display" : "Psychiatrie générale"
    },
    {
      "code" : "235",
      "display" : "Soins intensifs de néonatologie"
    },
    {
      "code" : "236",
      "display" : "Psychiatrie infanto-juvénile"
    },
    {
      "code" : "252",
      "display" : "Pouponnière à caractère sanitaire (hébergement et soins en )"
    },
    {
      "code" : "263",
      "display" : "Placement familial sanitaire"
    },
    {
      "code" : "267",
      "display" : "Action médico-sociale précoce pour enfants polyhandicapés"
    },
    {
      "code" : "268",
      "display" : "Action médico-sociale précoce pour autre catégorie de clientèle"
    },
    {
      "code" : "269",
      "display" : "Soins de type foyer à double tarification pour adultes handicapés"
    },
    {
      "code" : "273",
      "display" : "Hébergement en service de soins de longue durée"
    },
    {
      "code" : "302",
      "display" : "Chimiothérapie en hématologie et cancérologie"
    },
    {
      "code" : "304",
      "display" : "Transplantation du foie"
    },
    {
      "code" : "305",
      "display" : "Transplantations rénales"
    },
    {
      "code" : "306",
      "display" : "Transplantations cardiaques"
    },
    {
      "code" : "309",
      "display" : "Interruption volontaire de grossesse"
    },
    {
      "code" : "310",
      "display" : "Examens de santé et bilans"
    },
    {
      "code" : "311",
      "display" : "Transplantation coeur-poumon"
    },
    {
      "code" : "312",
      "display" : "Néphrologie"
    },
    {
      "code" : "313",
      "display" : "Psychiatrie - sorties modifiant la tarification"
    },
    {
      "code" : "314",
      "display" : "Allogreffe de moelle osseuse"
    },
    {
      "code" : "316",
      "display" : "Autre transplantation d'organe (grêle, poumon, pancréas, multigreffe, ...)"
    },
    {
      "code" : "318",
      "display" : "Action médico-sociale précoce pour tous types de déficiences S.A.I"
    },
    {
      "code" : "320",
      "display" : "Activités des CMPP"
    },
    {
      "code" : "321",
      "display" : "Action médico-sociale précoce pour déficients auditifs"
    },
    {
      "code" : "322",
      "display" : "Action médico-sociale précoce pour déficients visuels"
    },
    {
      "code" : "323",
      "display" : "Action médico-sociale précoce pour déficients moteurs"
    },
    {
      "code" : "324",
      "display" : "Action médico-sociale précoce pour déficients intellectuels"
    },
    {
      "code" : "325",
      "display" : "Placement familial spécialisé pour enfants handicapés"
    },
    {
      "code" : "355",
      "display" : "Activités des centres de jour pour personnes âgées"
    },
    {
      "code" : "358",
      "display" : "Soins à domicile"
    },
    {
      "code" : "389",
      "display" : "Lutte contre la stérilité"
    },
    {
      "code" : "398",
      "display" : "Placement familial spécialisé pour adultes handicapés"
    },
    {
      "code" : "401",
      "display" : "Unité de proximité d'accueil, de traitement et d'orientation des urgences (UPATOU)"
    },
    {
      "code" : "402",
      "display" : "Service d'accueil et de traitemet des urgences (SAU)"
    },
    {
      "code" : "403",
      "display" : "Pôle spécialisé d'urgence en pédiatrie (POSU)"
    },
    {
      "code" : "404",
      "display" : "Pôle spécialisé d'urgence en ophtalmologie (POSU)"
    },
    {
      "code" : "405",
      "display" : "Pôle spécialisé d'urgence en cardiologie (POSU)"
    },
    {
      "code" : "406",
      "display" : "Pôle spécialisé d'urgence en traumatologie (POSU)"
    },
    {
      "code" : "407",
      "display" : "Pôle spécialisé d'urgence en 'SOS main'(POSU)"
    },
    {
      "code" : "408",
      "display" : "Pôle spécialisé d'urgence en neurochirgie (POSU)"
    },
    {
      "code" : "409",
      "display" : "Autre pôle spécialisé d'urgence non dénommé ailleurs (POSU)"
    },
    {
      "code" : "457",
      "display" : "Cure médicale spécialisée contre la tuberculose indifférenciée"
    },
    {
      "code" : "458",
      "display" : "Cure médicale spécialisée contre la tuberculose pulmonaire"
    },
    {
      "code" : "459",
      "display" : "Cure médicale specialisée contre la tuberculose extra-pulmonaire"
    },
    {
      "code" : "460",
      "display" : "Cure médicale spécialisée contre la tuberculose (préventorium)"
    },
    {
      "code" : "462",
      "display" : "Autre cure médicale spécialisée pour enfants (notamment aérium reclassé)"
    },
    {
      "code" : "463",
      "display" : "Autre cure médicale spécialisée pour tous âges"
    },
    {
      "code" : "464",
      "display" : "Cure médicale spécialisée pneumologique pour enfants"
    },
    {
      "code" : "465",
      "display" : "Cure médicale spécialisée pneumologique pour tous âges"
    },
    {
      "code" : "466",
      "display" : "Convalescence réadaptation pour personnes âgées"
    },
    {
      "code" : "467",
      "display" : "Cure médicale spécialisée cardiologique pour enfants"
    },
    {
      "code" : "468",
      "display" : "Cure médicale spécialisée cardiologique pour tous âges"
    },
    {
      "code" : "552",
      "display" : "Entraînement à l'hémodialyse à domicile et à l'autodialyse"
    },
    {
      "code" : "553",
      "display" : "Entraînement à la dialyse péritonéale à domicile"
    },
    {
      "code" : "554",
      "display" : "Entraînement à la dialyse péritonéale continue"
    },
    {
      "code" : "555",
      "display" : "Dialyse péritonéale"
    },
    {
      "code" : "556",
      "display" : "Dialyse péritonéale continue"
    },
    {
      "code" : "557",
      "display" : "ORL et stomatologie indifférenciées"
    },
    {
      "code" : "588",
      "display" : "Soins courants en établissement d'hébergement pour personnes âgées"
    },
    {
      "code" : "593",
      "display" : "Accueil de l'enfant accompagnant la mère convalescente"
    },
    {
      "code" : "594",
      "display" : "Repos prénatal"
    },
    {
      "code" : "595",
      "display" : "Convalescence postnatale"
    },
    {
      "code" : "604",
      "display" : "Cure médicale non spécialisée pour enfants (MECS ouverte en permanence)"
    },
    {
      "code" : "605",
      "display" : "Cure médicale non spécialisée pour enfants (MECS ouverte temporairement)"
    },
    {
      "code" : "606",
      "display" : "Cure thermale pour enfants (MECS ouverte en permanence)"
    },
    {
      "code" : "607",
      "display" : "Cure thermale pour enfants (MECS ouverte de façon temporaire)"
    },
    {
      "code" : "608",
      "display" : "Cure médicale pour enfants atteints d'affections chroniques non tuberculeuses des voies respiratoires (MECS ouverte en permanence)"
    },
    {
      "code" : "609",
      "display" : "Cure médicale pour enfants atteints d'affections chroniques non tuberculeuses des voies respiratoires (MECS ouverte de façon temporaire)"
    },
    {
      "code" : "610",
      "display" : "Cure médicale pour enfants convalescents de rhumatismes aigus (MECS ouverte en permanence)"
    },
    {
      "code" : "611",
      "display" : "Cure médicale pour enfants convalescents de rhumatismes aigus (MECS ouverte de façon temporaire)"
    },
    {
      "code" : "612",
      "display" : "Cure médicale pour enfants diabétiques (MECS ouverte en permanence)"
    },
    {
      "code" : "613",
      "display" : "Cure médicale pour enfants diabétiques (MECS ouverte de façon temporaire)"
    },
    {
      "code" : "614",
      "display" : "Cure médicale pour enfants épileptiques (MECS ouverte en permanence)"
    },
    {
      "code" : "615",
      "display" : "Cure médicale pour enfants épileptiques (MECS ouverte de façon temporaire)"
    },
    {
      "code" : "616",
      "display" : "Cure médicale pour enfants atteints de déficiences temporaires somatopsychologiques (MECS ouverte en permanence)"
    },
    {
      "code" : "618",
      "display" : "Cure médicale pour enfants hémophiles (MECS ouverte en permanence)"
    },
    {
      "code" : "619",
      "display" : "Cure médicale pour enfants hémophiles (MECS ouverte de façon temporaire)"
    },
    {
      "code" : "620",
      "display" : "Cure médicale pour enfants atteints d'infirmités orthopédiques (MECS ouverte en permanence)"
    },
    {
      "code" : "621",
      "display" : "Cure médicale pour enfants atteints d'infirmités orthopédiques (MECS ouverte de façon temporaire)"
    },
    {
      "code" : "622",
      "display" : "Cure médicale pour enfants énurétiques (MECS ouverte en permanence)"
    },
    {
      "code" : "623",
      "display" : "Cure médicale pour enfants énurétiques (MECS ouverte de façon temporaire)"
    },
    {
      "code" : "624",
      "display" : "Autre cure médicale spécialisée pour enfants (MECS ouverte en permanence)"
    },
    {
      "code" : "625",
      "display" : "Autre cure médicale spécialisée pour enfants (MECS ouverte de façon temporaire)"
    },
    {
      "code" : "627",
      "display" : "Moyen séjour indifférencié"
    },
    {
      "code" : "628",
      "display" : "Orthopédie"
    },
    {
      "code" : "631",
      "display" : "Gynécologie chirurgicale"
    },
    {
      "code" : "635",
      "display" : "Réanimation néonatale"
    },
    {
      "code" : "636",
      "display" : "Réanimation pédiatrique"
    },
    {
      "code" : "637",
      "display" : "Surveillance continue en cardiologie"
    },
    {
      "code" : "638",
      "display" : "Surveillance continue en pédiatrie"
    },
    {
      "code" : "639",
      "display" : "Surveillance continue en néphrologie"
    },
    {
      "code" : "640",
      "display" : "Surveillance continue en urologie"
    },
    {
      "code" : "641",
      "display" : "Réanimation en cardiologie"
    },
    {
      "code" : "644",
      "display" : "Neutronthérapie"
    },
    {
      "code" : "645",
      "display" : "Oxygénothérapie isolée (insuffisants respiratoires)"
    },
    {
      "code" : "646",
      "display" : "Assistance ventilatoire sans trachéotomie (insuffisants respiratoires)"
    },
    {
      "code" : "647",
      "display" : "Assistance ventilatoire endotrachéale (insuffisants respiratoires)"
    },
    {
      "code" : "648",
      "display" : "Trachéotomie isolée (insuffisants respiratoires)"
    },
    {
      "code" : "651",
      "display" : "Cure thermale des affections des muqueuses buccolinguales"
    },
    {
      "code" : "654",
      "display" : "Hébergement spécialisé pour enfants et adolescents handicapés"
    },
    {
      "code" : "657",
      "display" : "Hébergement temporaire pour personnes âgées"
    },
    {
      "code" : "663",
      "display" : "Nutrition parentérale pour enfants"
    },
    {
      "code" : "664",
      "display" : "Nutrition parentérale pour adultes"
    },
    {
      "code" : "715",
      "display" : "Surveillance par monitorage en vue de prévenir la mort subite et inexpliquée du nourrisson"
    },
    {
      "code" : "717",
      "display" : "Soins hautement spécialisés en médecine"
    },
    {
      "code" : "718",
      "display" : "Soins hautement spécialisés en chirurgie"
    },
    {
      "code" : "719",
      "display" : "Soins hautement spécialisés en gynécologie-obstétrique"
    },
    {
      "code" : "720",
      "display" : "Réanimation néonatale et pédiatrique indifférenciée"
    },
    {
      "code" : "721",
      "display" : "Radiothérapie métabolique (ingestion de source)"
    },
    {
      "code" : "722",
      "display" : "Maladies infectieuses, tropicales et exotiques indifférenciées"
    },
    {
      "code" : "723",
      "display" : "Autodialyse"
    },
    {
      "code" : "728",
      "display" : "Cardiologie infantile"
    },
    {
      "code" : "729",
      "display" : "Néphrologie infantile"
    },
    {
      "code" : "730",
      "display" : "Carcinologie infantile"
    },
    {
      "code" : "731",
      "display" : "Autres spécialités pédiatriques"
    },
    {
      "code" : "732",
      "display" : "Hépatologie"
    },
    {
      "code" : "733",
      "display" : "Gastro-entérologie"
    },
    {
      "code" : "734",
      "display" : "Réanimation chirurgicale pédiatrique"
    },
    {
      "code" : "735",
      "display" : "Réanimation chirurgicale adulte"
    },
    {
      "code" : "736",
      "display" : "Traumatologie"
    },
    {
      "code" : "737",
      "display" : "Convalescence et réadaptation"
    },
    {
      "code" : "738",
      "display" : "Rééducation fonctionnelle et réadaptation motrice orientation rhumatologie"
    },
    {
      "code" : "739",
      "display" : "Rééducation fonctionnelle et réadaptation motrice orientation traumatologie"
    },
    {
      "code" : "743",
      "display" : "Immuno-hématologie"
    },
    {
      "code" : "744",
      "display" : "Immuno-cancérologie"
    },
    {
      "code" : "753",
      "display" : "Imagerie par résonance magnétique (IRM)"
    },
    {
      "code" : "797",
      "display" : "Hémodialyse et hémofiltration pour chroniques adultes"
    },
    {
      "code" : "798",
      "display" : "Hémodialyse et hémofiltration pour chroniques enfants"
    },
    {
      "code" : "799",
      "display" : "Assistance ventilatoire avec prothèse extrathoracique(insiffisants respiratoires)"
    },
    {
      "code" : "800",
      "display" : "Assistance ventilatoire par pression positive continue ou autres techniques particulières agréées (insuffisants respiratoires)"
    },
    {
      "code" : "801",
      "display" : "Insulinothérapie"
    },
    {
      "code" : "803",
      "display" : "Psychitatrie pour arriérés profonds"
    },
    {
      "code" : "806",
      "display" : "Atelier thérapeutique pour adultes"
    },
    {
      "code" : "807",
      "display" : "Atelier thérapeutique pour adolescents"
    },
    {
      "code" : "808",
      "display" : "Sectorisation psychiatrique en milieu pénitenciaire"
    },
    {
      "code" : "809",
      "display" : "Hématologie pédiatrique"
    },
    {
      "code" : "825",
      "display" : "Soins et accompagnement des malades en phase terminale-Soins palliatifs"
    },
    {
      "code" : "826",
      "display" : "Traitement spécialisé contre la douleur"
    },
    {
      "code" : "827",
      "display" : "Nutrition entérale à domicile"
    },
    {
      "code" : "828",
      "display" : "Cure thermale pour maladies cardio-artérielles"
    },
    {
      "code" : "829",
      "display" : "Cure thermale en neurologie"
    },
    {
      "code" : "830",
      "display" : "Cure thermale pour affections psychosomatiques"
    },
    {
      "code" : "831",
      "display" : "Cure thermale en phlébologie"
    },
    {
      "code" : "832",
      "display" : "Cure thermale pour troubles du développement chez l'enfant"
    },
    {
      "code" : "833",
      "display" : "Cure thermale en gynécologie"
    },
    {
      "code" : "834",
      "display" : "Cure thermale pour maladies de l'appareil digestif et maladies métaboliques"
    },
    {
      "code" : "835",
      "display" : "Cure thermale pour maladies de l'appareil urinaire et maladies métaboliques"
    },
    {
      "code" : "897",
      "display" : "Hébergement ouvert en foyer pour adultes handicapés"
    },
    {
      "code" : "924",
      "display" : "Hébergement en maison de retraite"
    },
    {
      "code" : "925",
      "display" : "Hébergement en logement foyer pour personnes âgées seules (F1)"
    },
    {
      "code" : "926",
      "display" : "Hébergement en logement foyer pour personnes âgées en couple (F2)"
    },
    {
      "code" : "927",
      "display" : "Hébergement en logement foyer pour personnes âgées"
    },
    {
      "code" : "936",
      "display" : "Hébergement en logement foyer pour personnes âgées"
    },
    {
      "code" : "939",
      "display" : "Hébergement en logement foyer pour personnes âgées"
    }
  ]
}

```
