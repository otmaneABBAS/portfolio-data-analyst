# afficher toute la table.
select*from `fr_carburant.fr_carburant`

#afficher seulement quelques colonnes de la table
select adresse,sp95_prix,ville,latitude,longitude,code_departement from `fr_carburant.fr_carburant`

#trouver le min/max du SP95
select min(sp95_prix)as min_prix_sp95,max(sp95_prix)as max_prix_sp95 from `fr_carburant.fr_carburant`

#afficher les stations essence du département:69
select adresse,sp95_prix,ville,latitude,longitude,code_departement from `fr_carburant.fr_carburant`
where code_departement='69'

#compter les stations essence du département:69
select count(id) from `fr_carburant.fr_carburant`
where code_departement='69'

#afficher les stations essence du département 69 qui ont du SP95
select adresse,sp95_prix,ville,latitude,longitude,code_departement from `fr_carburant.fr_carburant`
where code_departement='69' and sp95_prix is not null

#trouver la station la moins chére pour le SP95 du département 69
select adresse,sp95_prix,ville,latitude,longitude,code_departement from `fr_carburant.fr_carburant`
where code_departement='69' and sp95_prix is not null   order by sp95_prix asc   

# calculer la distance entre chaque station et chez moi
select adresse,sp95_prix,ville,latitude,longitude,ST_DISTANCE(
  ST_GEOGPOINT(longitude,latitude ),
  ST_GEOGPOINT(4.8119423, 45.7801385)
)/1000 AS distance_km,code_departement from `fr_carburant.fr_carburant`
where code_departement='69' and sp95_prix is not null

