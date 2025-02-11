Cette page contient la liste des profils définis dans le cadre du guide d'implémentation FrCore, ordonnés par catégories

### Les profils administratifs

<!-- Rajout du style pour que le tableau prenne toute la taille et se place en-dessous du menu -->
<div style="width: 100%; display: flex"> 
{% sql {
    "query" : " select name as Name, Description, Web from Resources WHERE Type = 'StructureDefinition' and Title not like '%Extension%' and (Title like 'FR Core Patient%' or Title like 'FR Core Encounter%' or Title like 'FR Core Healthcare Service%' or Title like 'FR Core Location%' or Title like 'FR Core Organization%' or Title like 'FR Core Practitioner%' or Title like 'FR Core Related%') ",
    "class" : "lines",
    "columns" : [
        { "title" : "Titre du profil", "type" : "link", "source" : "Name", "target" : "Web"},
        { "title" : "Description", "type" : "markdown", "source" : "Description"}
    ]
} %}
</div>

### Les profils mesures de santé (vital signs)

<!-- like "%Profil%" rajouté car induit une erreur si vide -->
{% sql {
    "query" : " select name as Name, Description, Web from Resources WHERE Type = 'StructureDefinition' and Title not like '%Extension%' and Title like 'FR Core Observation%' ",
    "class" : "lines",
    "columns" : [
        { "title" : "Titre du profil", "type" : "link", "source" : "Name", "target" : "Web"},
        { "title" : "Description", "type" : "markdown", "source" : "Description"}
    ]
} %}

### Les profils agenda

{% sql {
    "query" : " select name as Name, Description, Web from Resources WHERE Type = 'StructureDefinition' and Title not like '%Extension%' and (Title like 'FR Core Schedule%' or Title like 'FR Core Slot%' or Title like 'FR Core Appointment%') ",
    "class" : "lines",
    "columns" : [
        { "title" : "Titre du profil", "type" : "link", "source" : "Name", "target" : "Web"},
        { "title" : "Description", "type" : "markdown", "source" : "Description"}
    ]
} %}

### Les autres profils

{% sql {
    "query" : " select name as Name, Description, Web from Resources WHERE Type = 'StructureDefinition' and Title not like '%Extension%' and Title like 'FR Core Medication%' ",
    "class" : "lines",
    "columns" : [
        { "title" : "Titre du profil", "type" : "link", "source" : "Name", "target" : "Web"},
        { "title" : "Description", "type" : "markdown", "source" : "Description"}
    ]
} %}
