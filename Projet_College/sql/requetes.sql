/*************************
REQUETES D'INSERTION
*************************/

/* On insert des valeurs */
/* Quand on est connecté en tant que root */

insert into eleve values
	('Compain', 'Guillaume', '15/06/2003', 1066, '5A');

update classe
	set nombre_eleve=nombre_eleve+1
	where nom='5A';

insert into professeur values
	('Laubscher', 'Lea', 'Technologie', 1113);

insert into cours values
	('Technologie','Mercredi', '8:00', '10:00', 101, 1113, '5A', 1257);

/* On en supprimes*/
/* Quand on est connecté en tant que petit admin (qui s'occupe des 5eme) ou grand admin */

delete from cours_admin
	where ID_cours=1257;

delete from eleve_admin
	where ID_eleve=1066;

update classe_admin
	set nombre_eleve=nombre_eleve-1
	where nom='5A';

/*************************
REQUETES D'INTERROGATION
*************************/

/* Prenom et nom des eleves en 4B*/
select e.prenom, e.nom
from eleve e
where e.nom_classe='4B'

/* Nom des classes et le nombre d'élève par classe ayant comme professeur Anne Delavy */
select cl.nom, cl.nombre_eleve
from classe cl, professeur p, cours co
where p.nom='Delavy' and p.prenom='Anne'
and co.ID_professeur=p.ID_professeur
and cl.nom=co.nom_classe

/* Nom, prenom des professeurs de mathematiques avec le jour de leur cours, l'heure de debut, l'heure de fin et la salle */
select p.nom, p.prenom, c.jour, c.heure_debut, c.heure_fin, c.salle
from professeur p inner join cours c on p.ID_professeur=c.ID_professeur
where p.specialite='Mathematiques'


/*************************
REQUETES DE MODIFICATION
DE LA BASE DE DONNEE
*************************/