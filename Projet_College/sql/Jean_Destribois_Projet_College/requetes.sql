/*************************************************
REQUETES D'INSERTION
*************************************************/

/* On insert des valeurs et met à jour */

insert into eleve values
	('Compain', 'Guillaume', '15/06/2003', 1066, '5A');

update classe
	set nombre_eleve=nombre_eleve+1
	where nom='5A';

insert into cours values
	('Technologie','Mercredi', '8:00', '10:00', 2, 101, 1107, '5A', 1257);

insert into absence values
	(1066, 1257, '15/01/2015');

/* On en supprimes et met à jour */

delete from absence
	where ID_eleve=1066;

delete from eleve
	where ID_eleve=1066;

update classe
	set nombre_eleve=nombre_eleve-1
	where nom='5A';

delete from absence
	where ID_cours=1257;

delete from cours
	where ID_cours=1257;


/*************************************************
REQUETES D'INTERROGATION
*************************************************/

/* Prenom et nom des eleves en 4B*/
select e.prenom, e.nom
from eleve e
where e.nom_classe='4B';

/* Nom des classes et le nombre d'élève par classe ayant comme professeur Anne Delavy */
select cl.nom, cl.nombre_eleve
from classe cl, professeur p, cours co
where p.nom='Delavy' and p.prenom='Anne'
and co.ID_professeur=p.ID_professeur
and cl.nom=co.nom_classe;

/* Affiche le nom, le prenom et le nombre d'absence de chaque eleve qui a été absent */
select e.nom, e.prenom, count(a.ID_eleve) as 'Nombre_absence'
from absence a inner join eleve e on a.ID_eleve=e.ID_eleve
group by a.ID_eleve;

/* Affiche le nom, le prenom et la somme total cours donnés par les professeurs dont leur nom commence par 'F' */
select p.nom, p.prenom, sum(co.duree) as 'Duree_total_par_semaine'
from professeur p inner join cours co on co.ID_professeur=p.ID_professeur
where p.nom like 'F%'
group by p.nom, p.prenom;


/* Affiche le nom et prénom des professeurs ayant eu plus de 2 absences à un même cours */
select p.nom, p.prenom
from ((professeur p
	inner join cours co
		on co.ID_professeur=p.ID_professeur)
	inner join (select a.ID_cours, count(a.ID_cours) as 'Nombre_absence'
				from absence a
				group by a.ID_cours
				having (Nombre_absence)>1) as t
		on t.ID_cours=co.ID_cours);


/*************************************************
REQUETES DE MODIFICATION
DE LA BASE DE DONNEE
*************************************************/

/* Supprimer une colonne */
alter table eleve
drop date_naissance;

/* Mofifier le type une colonne */
alter table classe
modify nombre_eleve float(4);

/* Modifier le nom d'un colonne */
alter table cours
change duree duree_cours float(4);

/* Supprimer une table */
drop table absence;



