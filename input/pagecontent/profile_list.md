Cette page contient la liste des profils définis dans le cadre du guide d'implémentation FrCore, ordonnés par catégories

### Les profils administratifs

<div>
{% sql SELECT '[' || Title ||'](StructureDefinition-' || id || '.html)' as "Titre du profil", Description, json_extract(Json, '$.baseDefinition') as "URL canonique du profil parent" FROM Resources WHERE Type = 'StructureDefinition' and Title not like "%Extension%" and (Title like "FR Core Patient%" or Title like "FR Core Encounter%" or Title like "FR Core Healthcare Service%" or Title like "FR Core Location%" or Title like "FR Core Organization%" or Title like "FR Core Practitioner%" or Title like "FR Core Related%") %}
</div>

### Les profils mesures de santé (vital signs)

{% sql SELECT '[' || Title ||'](StructureDefinition-' || id || '.html)' as "Titre du profil", Description, json_extract(Json, '$.baseDefinition') as "URL canonique du profil parent" FROM Resources WHERE Type = 'StructureDefinition' and Title not like "%Extension%" and Title like "FR Core Observation%" %}
<!-- like "%Profil%" rajouté car induit une erreur si vide -->

### Les profils agenda

{% sql SELECT '[' || Title ||'](StructureDefinition-' || id || '.html)' as "Titre du profil", Description, json_extract(Json, '$.baseDefinition') as "URL canonique du profil parent" FROM Resources WHERE Type = 'StructureDefinition' and Title not like "%Extension%" and (Title like "FR Core Schedule%" or Title like "FR Core Slot%" or Title like "FR Core Appointment%") %}

### Les autres profils

{% sql SELECT '[' || Title ||'](StructureDefinition-' || id || '.html)' as "Titre du profil", Description, json_extract(Json, '$.baseDefinition') as "URL canonique du profil parent" FROM Resources WHERE Type = 'StructureDefinition' and Title not like "%Extension%" and Title like "FR Core Medication%"  %}
