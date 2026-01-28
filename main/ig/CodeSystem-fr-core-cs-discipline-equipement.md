# FR Core CodeSystem Discipline d'Equipement - nomenclature SAE - Guide d'implémentation FR Core v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem Discipline d'Equipement - nomenclature SAE**

## CodeSystem: FR Core CodeSystem Discipline d'Equipement - nomenclature SAE 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-discipline-equipement | *Version*:2.2.0-ballot |
| Draft as of 2026-01-28 | *Computable Name*:FRCoreCodeSystemDisciplineEquipement |

 
La nomenclature de disciplines d’équipement est utilisée pour ventiler l’activité et le personnel entre les différentes disciplines de la section hôpital (MCO, PSY, HAD, SMR et SLD) et la discipline ‘administration, services hôteliers et techniques’. La nomenclature des disciplines d’équipement s’applique aux unités fonctionnelles et aux sections issues du fichier de structure des établissements. Les disciplines sociales, médico-sociales et de formation n’apparaissent pas, car elles ne font pas partie du champ de la SAE. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetOrganizationDisciplineEquipement](ValueSet-fr-core-vs-organization-discipline-equipement.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-discipline-equipement",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-discipline-equipement",
  "version" : "2.2.0-ballot",
  "name" : "FRCoreCodeSystemDisciplineEquipement",
  "title" : "FR Core CodeSystem Discipline d'Equipement - nomenclature SAE",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-01-28T10:29:57+00:00",
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
  "description" : "La nomenclature de disciplines d'équipement est utilisée pour ventiler l'activité et le personnel entre les différentes disciplines de la section hôpital (MCO, PSY, HAD, SMR et SLD) et la discipline 'administration, services hôteliers et techniques'. La nomenclature des disciplines d’équipement s’applique aux unités fonctionnelles et aux sections issues du fichier de structure des établissements. Les disciplines sociales, médico-sociales et de formation n'apparaissent pas, car elles ne font pas partie du champ de la SAE.",
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
  "count" : 131,
  "concept" : [
    {
      "code" : "23",
      "display" : "Stérilisation"
    },
    {
      "code" : "34",
      "display" : "Radiostandard"
    },
    {
      "code" : "35",
      "display" : "Scanographie X"
    },
    {
      "code" : "36",
      "display" : "Neuroradiologie"
    },
    {
      "code" : "37",
      "display" : "Hémodynamique"
    },
    {
      "code" : "45",
      "display" : "Explorations fonctionnelles cardiovasculaires"
    },
    {
      "code" : "46",
      "display" : "Explorations fonctionnelles néphrologiques"
    },
    {
      "code" : "47",
      "display" : "Explorations fonctionnelles pneumologiques"
    },
    {
      "code" : "48",
      "display" : "Explorations fonctionnelles neurologiques"
    },
    {
      "code" : "49",
      "display" : "Explorations fonctionnelles du tube digestif"
    },
    {
      "code" : "50",
      "display" : "Autres explorations fonctionnelles spécialisées"
    },
    {
      "code" : "51",
      "display" : "Explorations fonctionnelles cardiovasculaires et néphrologiques"
    },
    {
      "code" : "52",
      "display" : "Explorations fonctionnelles cardiovasculaires et pneumologiques"
    },
    {
      "code" : "53",
      "display" : "Autres explorations fonctionnelles polyvalentes"
    },
    {
      "code" : "55",
      "display" : "Réeducation fonctionnelle"
    },
    {
      "code" : "56",
      "display" : "Ergothérapie"
    },
    {
      "code" : "57",
      "display" : "Hydrothérapie"
    },
    {
      "code" : "58",
      "display" : "Kinésithérapie"
    },
    {
      "code" : "59",
      "display" : "Orthophonie"
    },
    {
      "code" : "60",
      "display" : "Orthoptie"
    },
    {
      "code" : "61",
      "display" : "Autres rééducations spécialisées"
    },
    {
      "code" : "62",
      "display" : "Anatomie pathologique (anatomie et cytologie pathologique)"
    },
    {
      "code" : "63",
      "display" : "Bactériologie"
    },
    {
      "code" : "64",
      "display" : "Biochimie générale et spécialisée"
    },
    {
      "code" : "70",
      "display" : "Embryologie clinique"
    },
    {
      "code" : "79",
      "display" : "Parasitologie-mycologie"
    },
    {
      "code" : "80",
      "display" : "Pharmacologie-toxicologie"
    },
    {
      "code" : "83",
      "display" : "Virologie"
    },
    {
      "code" : "86",
      "display" : "Vaccination "
    },
    {
      "code" : "87",
      "display" : "Consultation antitabac"
    },
    {
      "code" : "88",
      "display" : "Médecine légale"
    },
    {
      "code" : "89",
      "display" : "Médecine préventive et de santé publique"
    },
    {
      "code" : "90",
      "display" : "Autres consultations et soins externes"
    },
    {
      "code" : "91",
      "display" : "Fabrication-préparation de produits pharmaceutiques"
    },
    {
      "code" : "92",
      "display" : "Distribution de produits pharmaceutiques"
    },
    {
      "code" : "93",
      "display" : "Distribution d'autres biens médicaux"
    },
    {
      "code" : "94",
      "display" : "Activité de pharmacocinétique (Autre activité d'analyse et de recherche sur les médicaments)"
    },
    {
      "code" : "95",
      "display" : "Autres activités (fabrication autres biens médicaux, prothèses, etc)"
    },
    {
      "code" : "96",
      "display" : "Prélèvement à but scientifique (autopsie) et vérification de diagnostics"
    },
    {
      "code" : "97",
      "display" : "Anesthésiologie (consultation)"
    },
    {
      "code" : "99",
      "display" : "Activité de pharmacotoxico-vigilance"
    },
    {
      "code" : "108",
      "display" : "Médecine pédiatrique (hors unité d'oncologie médicale, spécialisée ou non)"
    },
    {
      "code" : "112",
      "display" : "Néonatologie sans SI"
    },
    {
      "code" : "145",
      "display" : "Traitement des grands brûlés (hors réanimation et surveillance continue grands brûlés)"
    },
    {
      "code" : "151",
      "display" : "Neurochirurgie"
    },
    {
      "code" : "164",
      "display" : "Gynécologie seule"
    },
    {
      "code" : "165",
      "display" : "Obstétrique seule"
    },
    {
      "code" : "176",
      "display" : "Soins de longue durée pour personnes ayant perdu leur autonomie de vie"
    },
    {
      "code" : "197",
      "display" : "Consultations et soins dentaires"
    },
    {
      "code" : "200",
      "display" : "Transfusion sanguine (laboratoire)"
    },
    {
      "code" : "201",
      "display" : "Banque de sperme"
    },
    {
      "code" : "202",
      "display" : "Banques d'organes"
    },
    {
      "code" : "203",
      "display" : "Dispensaire de soins"
    },
    {
      "code" : "204",
      "display" : "Soins infirmiers"
    },
    {
      "code" : "205",
      "display" : "Lutte contre les maladies sexuellement transmissibles"
    },
    {
      "code" : "218",
      "display" : "Vaccination BCG"
    },
    {
      "code" : "235",
      "display" : "Soins intensifs en néonatologie"
    },
    {
      "code" : "241",
      "display" : "Hygiène alimentaire (activité des centres d'hygiène alimentaire notamment)"
    },
    {
      "code" : "309",
      "display" : "Interruption volontaire de grossesse"
    },
    {
      "code" : "384",
      "display" : "Protection maternelle et infantile (centre de PMI ou dispensaire de PMI)"
    },
    {
      "code" : "385",
      "display" : "Consultations prénuptiales, prénatales ou postnatales"
    },
    {
      "code" : "386",
      "display" : "Consultations de protection infantile"
    },
    {
      "code" : "389",
      "display" : "Lutte contre la stérilité"
    },
    {
      "code" : "390",
      "display" : "Consultations de conseil génétique"
    },
    {
      "code" : "391",
      "display" : "Consultations de planification ou d'éducation familiale"
    },
    {
      "code" : "392",
      "display" : "Information, consultation ou conseil familial"
    },
    {
      "code" : "394",
      "display" : "Lactarium"
    },
    {
      "code" : "395",
      "display" : "Guidance parentale"
    },
    {
      "code" : "396",
      "display" : "Guidance infantile"
    },
    {
      "code" : "446",
      "display" : "Médecine scolaire"
    },
    {
      "code" : "447",
      "display" : "Médecine universitaire"
    },
    {
      "code" : "448",
      "display" : "Médecine sportive"
    },
    {
      "code" : "452",
      "display" : "Aide aux insuffisants respiratoires"
    },
    {
      "code" : "552",
      "display" : "Entraînement à l'hémodialyse "
    },
    {
      "code" : "553",
      "display" : "Entraînement à la dialyse péritonéale"
    },
    {
      "code" : "555",
      "display" : "Dialyse péritonéale automatisée à domicile"
    },
    {
      "code" : "556",
      "display" : "Dialyse péritonéale continue ambulatoire à domicile"
    },
    {
      "code" : "596",
      "display" : "Médecine du travail"
    },
    {
      "code" : "631",
      "display" : "Gynécologie seule"
    },
    {
      "code" : "634",
      "display" : "Laboratoire de  radio-isotopes (Médecine nucléaire in vivo)"
    },
    {
      "code" : "635",
      "display" : "Réanimation néonatale"
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
      "code" : "665",
      "display" : "Fabrication et distribution indifférenciées de produits pharmaceutiques"
    },
    {
      "code" : "700",
      "display" : "Fabrication, conditionnement et importation de produits cosmétiques et de produits d'hygiène corp."
    },
    {
      "code" : "701",
      "display" : "Fabrication de produits diététiques"
    },
    {
      "code" : "702",
      "display" : "Préparation et vente en gros de produits vétérinaires"
    },
    {
      "code" : "703",
      "display" : "Fabrication (ou importation) de radio-éléments artificiels"
    },
    {
      "code" : "704",
      "display" : "Détention d'animaux en vue de l'expérimentation des médicaments"
    },
    {
      "code" : "705",
      "display" : "Fabrication d'objets contraceptifs"
    },
    {
      "code" : "723",
      "display" : "Hémodialyse à domicile"
    },
    {
      "code" : "726",
      "display" : "Consultations multidisciplines regroupées (médecine, chirurgie et autres spécialités)"
    },
    {
      "code" : "727",
      "display" : "Consultations externes indifférenciées"
    },
    {
      "code" : "743",
      "display" : "Immunohématologie"
    },
    {
      "code" : "745",
      "display" : "Hémostase"
    },
    {
      "code" : "750",
      "display" : "Tomographie"
    },
    {
      "code" : "751",
      "display" : "Radiologie vasculaire"
    },
    {
      "code" : "752",
      "display" : "Echographie sans autre indication (sai)"
    },
    {
      "code" : "753",
      "display" : "Imagerie par résonance magnétique (IRM)"
    },
    {
      "code" : "754",
      "display" : "Autres activités spécialisées d'imagerie médicale"
    },
    {
      "code" : "755",
      "display" : "Explorations fonctionnelles en ORL"
    },
    {
      "code" : "756",
      "display" : "Explorations fonctionnelles en ophtalmologie"
    },
    {
      "code" : "757",
      "display" : "Recherche et expérimentation dans les services médico-techniques"
    },
    {
      "code" : "760",
      "display" : "Salle de réveil"
    },
    {
      "code" : "761",
      "display" : "Anesthésiologie et salle de réveil"
    },
    {
      "code" : "762",
      "display" : "Bloc opératoire et stérilisation indifférenciés"
    },
    {
      "code" : "763",
      "display" : "Pharmacie et stérilisation indifférenciées"
    },
    {
      "code" : "797",
      "display" : "Hémodialyse en centre pour adulte"
    },
    {
      "code" : "798",
      "display" : "Hémodialyse en centre pour enfant"
    },
    {
      "code" : "799",
      "display" : "Assistance ventilatoire avec prothèse extrathoracique(insuffisants respiratoires)"
    },
    {
      "code" : "800",
      "display" : "Assistance ventilatoire par pression positive continue ou autres techniques particulières agréées (insuffisants respiratoires)"
    },
    {
      "code" : "815",
      "display" : "Echocardiologie"
    },
    {
      "code" : "816",
      "display" : "Echographie abdominale"
    },
    {
      "code" : "817",
      "display" : "Echographie en obstétrique"
    },
    {
      "code" : "818",
      "display" : "Echographie vasculaire"
    },
    {
      "code" : "819",
      "display" : "Autres échographies"
    },
    {
      "code" : "820",
      "display" : "Collecte de sang"
    },
    {
      "code" : "821",
      "display" : "Stockage-distribution de sang"
    },
    {
      "code" : "822",
      "display" : "Production de produits sanguins"
    },
    {
      "code" : "823",
      "display" : "Autres activités de transfusion sanguine"
    },
    {
      "code" : "824",
      "display" : "Pharmacie d'établissement"
    },
    {
      "code" : "949",
      "display" : "Recherche chirurgicale ou chirurgie expérimentale"
    },
    {
      "code" : "952",
      "display" : "Recherche médicale"
    },
    {
      "code" : "953",
      "display" : "Recherche pharmacologique"
    },
    {
      "code" : "954",
      "display" : "Recherche pharmaceutique"
    },
    {
      "code" : "955",
      "display" : "Recherche odontologique"
    },
    {
      "code" : "956",
      "display" : "Recherche toxicologique"
    },
    {
      "code" : "996",
      "display" : "Services extérieurs"
    },
    {
      "code" : "997",
      "display" : "Discipline non dénommée ailleurs"
    }
  ]
}

```
