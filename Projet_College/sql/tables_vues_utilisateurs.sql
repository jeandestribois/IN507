drop database if exists Projet_College;
create database Projet_College;

use Projet_College;		/* On se place dans la bbd */

/*	Les prochaines requêtes sont les requête de creatoion des tables */

create table professeur (
	nom varchar(12) not null,
	prenom varchar(12) not null,
	specialite enum('Mathematiques',
					'Physique-Chimie',
					'SVT',
					'Technologie',
					'Histoire-Geographie',
					'Français',
					'Anglais',
					'EPS') not null,
	ID_professeur int(4) not null,
	primary key (ID_professeur)
);

create table classe (
	nom varchar(12) not null,
	niveau enum('6eme',
				'5eme',
				'4eme',
				'3eme') not null,
	nombre_eleve int(4) not null,
	primary key (nom)
);

create table eleve (
	nom varchar(30) not null,
	prenom varchar(30) not null,
	date_naissance varchar(30) not null,
	ID_eleve int(30) not null,
	nom_classe varchar(30) not null,
	primary key (ID_eleve),
	foreign key (nom_classe) references classe (nom)
);

create table cours (
	nom varchar(30) not null,
	jour enum('Lundi',
			  'Mardi',
			  'Mercredi',
			  'Jeudi',
			  'Vendredi',
			  'Samedi',
			  'Dimanche') not null,
	heure_debut varchar(30) not null,
	heure_fin varchar(30) not null,
	salle int(4) not null,
	ID_professeur int(4) not null,
	nom_classe varchar(30) not null,
	ID_cours int(4) not null,
	primary key (ID_cours),
	foreign key (ID_professeur) references professeur (ID_professeur),
	foreign key (nom_classe) references classe (nom)
);

create table administrateur (
	nom varchar(30) not null,
	prenom varchar(30) not null,
	poste enum('Petit_admin',					/* Il ne peut s'occuper que d'un niveau de classe */
			   'Grand_admin') not null,			/* Il peut s'occuper de toutes les classes */
	niveau_classe enum('6eme',
					   '5eme',
					   '4eme',
					   '3eme',
					   'all'),
	ID_administrateur int(4) not null,
	primary key (ID_administrateur)
);

/*	Les prochaines requêtes sont des requetes d'insertions pour chaques tables */

insert into professeur values
	('Aymon', 'Bernard', 'Mathematiques', 1101),
	('Barman', 'Leonard', 'Mathematiques', 1102),
	('Berclaz', 'Daniel', 'Physique-Chimie', 1103),
	('Cottier', 'Michel', 'Physique-Chimie', 1104),
	('Delavy', 'Anne', 'SVT', 1105),
	('Disiere', 'Severine', 'SVT', 1106),
	('Formaz', 'Dominique', 'Technologie', 1107),
	('Fournier', 'Jerome', 'Histoire-Geographie', 1108),
	('Guex', 'Sophie', 'Histoire-Geographie', 1109),
	('Marclay', 'Philippe', 'Français', 1110),
	('Pavan', 'Nadia', 'Français', 1111),
	('Salina', 'Antoine', 'Anglais', 1112);

insert into classe values
	('6A', '6eme', 8),
	('6B', '6eme', 7),
	('5A', '5eme', 8),
	('5B', '5eme', 10),
	('4A', '4eme', 7),
	('4B', '4eme', 8),
	('3A', '3eme', 9),
	('3B', '3eme', 8);

insert into eleve values
	('Abazi', 'Bruna', '02/07/2004', 1001, '6A'),
	('Abbet', 'Charles', '13/08/2004', 1002, '6A'),
	('Cappi', 'Audrey', '30/01/2004', 1003, '6A'),
	('Chalbi', 'Elisa', '13/05/2004', 1004, '6A'),
	('Carraux', 'Nicolas', '23/03/2004', 1005, '6A'),
	('Defago', 'Rachel', '09/02/2004', 1006, '6A'),
	('Diaz', 'Jade', '26/07/2004', 1007, '6A'),
	('Formaz', 'Lucas', '09/07/2004', 1008, '6A'),
	('Bonvin', 'Maxime', '04/12/2004', 1009, '6B'),
	('Gex', 'Lea', '01/11/2004', 1010, '6B'),
	('Maret', 'Nathan', '23/11/2004', 1011, '6B'),
	('Morena', 'Romain', '30/10/2004', 1012, '6B'),
	('Ramos', 'Lorenzo', '21/10/2004', 1013, '6B'),
	('Savary', 'Yann', '13/09/2004', 1014, '6B'),
	('Veille', 'Sandy', '12/04/2004', 1015, '6B'),
	('Amrari', 'Ines', '15/01/2003', 1016, '5A'),
	('Bruner', 'David', '17/02/2003', 1017, '5A'),
	('Demestre', 'Yannick', '08/05/2003', 1018, '5A'),
	('Genet', 'Tiphanie', '02/06/2003', 1019, '5A'),
	('Kilaj', 'Hugo', '06/03/2003', 1020, '5A'),
	('Melly', 'Alicia', '09/08/2003', 1021, '5A'),
	('Michelet', 'Alison', '07/03/2003', 1022, '5A'),
	('Oliva', 'Danae', '05/03/2003', 1023, '5A'),
	('Crestin', 'Lou', '04/06/2003', 1024, '5B'),
	('Da Silva', 'Pierrick', '08/06/2003', 1025, '5B'),
	('Defago', 'Armand', '29/04/2003', 1026, '5B'),
	('Fellay', 'Arnaud', '09/08/2003', 1027, '5B'),
	('Jourdan', 'Lisa', '21/12/2003', 1028, '5B'),
	('Moix', 'Marc', '13/01/2003', 1029, '5B'),
	('Pralog', 'Noa', '06/02/2003', 1030, '5B'),
	('Sandell', 'Mariane', '22/05/2003', 1031, '5B'),
	('Tagan', 'Loriane', '23/08/2003', 1032, '5B'),
	('Udriot', 'Simon', '11/10/2003', 1033, '5B'),
	('Bourban', 'Thibault', '10/12/2002', 1034, '4A'),
	('Caballo', 'Aurelie', '06/11/2002', 1035, '4A'),
	('Depestel', 'Julien', '21/12/2002', 1036, '4A'),
	('Eracle', 'Marie', '29/08/2002', 1037, '4A'),
	('Kelly', 'Noemie', '30/08/2002', 1038, '4A'),
	('Lellou', 'Yoann', '04/06/2002', 1039, '4A'),
	('Nicolet', 'Anita', '05/08/2002', 1040, '4A'),
	('Alfonso', 'Simon', '08/03/2002', 1041, '4B'),
	('Borgeat', 'Charles', '09/02/2002', 1042, '4B'),
	('Dayer', 'Jean', '23/08/2002', 1043, '4B'),
	('Jeandet', 'François', '28/03/2002', 1044, '4B'),
	('Parvex', 'Camille', '20/08/2002', 1045, '4B'),
	('Rey', 'Marius', '27/03/2002', 1046, '4B'),
	('Terrier', 'Alexandre', '09/01/2002', 1047, '4B'),
	('Zhu', 'Anne', '05/08/2002', 1048, '4B'),
	('Burren', 'Antoine', '12/09/2001', 1049, '3A'),
	('Bussien', 'Lou', '21/02/2001', 1050, '3A'),
	('Donna', 'Noa', '13/12/2001', 1051, '3A'),
	('Giglio', 'Elodie', '14/09/2001', 1052, '3A'),
	('Herder', 'Justine', '31/01/2001', 1053, '3A'),
	('Luyet', 'Manon', '20/04/2001', 1054, '3A'),
	('Moulin', 'Juliette', '17/02/2001', 1055, '3A'),
	('Noel', 'Tania', '05/08/2001', 1056, '3A'),
	('Progin', 'Arthur', '08/05/2001', 1057, '3A'),
	('Anic', 'Antonin', '05/10/2001', 1058, '3B'),
	('Bonvin', 'Romane', '02/10/2001', 1059, '3B'),
	('Davet', 'Olivier', '01/11/2001', 1060, '3B'),
	('Kebe', 'Mathilde', '07/05/2001', 1061, '3B'),
	('Marcel', 'Olivier', '09/05/2001', 1062, '3B'),
	('Pralong', 'Julien', '12/06/2001', 1063, '3B'),
	('Schossen', 'Vladimir', '19/09/2001', 1064, '3B'),
	('Vannay', 'Louise', '03/05/2001', 1065, '3B');

insert into cours values
	('Physique-Chimie', 'Lundi', '8:00', '10:00', 301, 1104, '6A', 1201),
	('Physique-Chimie', 'Lundi', '8:00', '10:00', 302, 1103, '6B', 1202),
	('Physique-Chimie', 'Mardi', '8:00', '10:00', 301, 1104, '5A', 1203),
	('Physique-Chimie', 'Mardi', '8:00', '10:00', 302, 1103, '5B', 1204),
	('Physique-Chimie', 'Mercredi', '8:00', '10:00', 301, 1104, '4A', 1205),
	('Physique-Chimie', 'Mercredi', '8:00', '10:00', 302, 1103, '4B', 1206),
	('Physique-Chimie', 'Jeudi', '8:00', '10:00', 301, 1104, '3A', 1207),
	('Physique-Chimie', 'Jeudi', '8:00', '10:00', 302, 1103, '3B', 1208),
	('Mathematiques', 'Lundi', '10:15', '12:15', 208, 1101, '6A', 1209),
	('Mathematiques', 'Lundi', '10:15', '12:15', 209, 1102, '6B', 1210),
	('Mathematiques', 'Mercredi', '10:15', '12:15', 208, 1101, '5A', 1211),
	('Mathematiques', 'Mercredi', '10:15', '12:15', 209, 1102, '5B', 1212),
	('Mathematiques', 'Jeudi', '10:15', '12:15', 208, 1101, '4A', 1213),
	('Mathematiques', 'Jeudi', '10:15', '12:15', 209, 1102, '4B', 1214),
	('Mathematiques', 'Vendredi', '10:15', '12:15', 208, 1101, '3A', 1215),
	('Mathematiques', 'Vendredi', '10:15', '12:15', 209, 1102, '3B', 1216),
	('SVT', 'Vendredi', '13:15', '15:15', 303, 1105, '6A', 1217),
	('SVT', 'Vendredi', '13:15', '15:15', 304, 1106, '6B', 1218),
	('SVT', 'Jeudi', '13:15', '15:15', 303, 1105, '5A', 1219),
	('SVT', 'Jeudi', '13:15', '15:15', 304, 1106, '5B', 1220),
	('SVT', 'Mardi', '13:15', '15:15', 303, 1105, '4A', 1221),
	('SVT', 'Mardi', '13:15', '15:15', 304, 1106, '4B', 1222),
	('SVT', 'Lundi', '13:15', '15:15', 303, 1105, '3A', 1223),
	('SVT', 'Lundi', '13:15', '15:15', 304, 1106, '3B', 1224),
	('Histoire-Geographie', 'Mercredi', '10:15', '12:15', 104, 1108, '6A', 1225),
	('Histoire-Geographie', 'Mercredi', '10:15', '12:15', 105, 1109, '6B', 1226),
	('Histoire-Geographie', 'Mardi', '10:15', '12:15', 104, 1108, '5A', 1227),
	('Histoire-Geographie', 'Mardi', '10:15', '12:15', 105, 1109, '5B', 1228),
	('Histoire-Geographie', 'Lundi', '10:15', '12:15', 104, 1108, '4A', 1229),
	('Histoire-Geographie', 'Lundi', '10:15', '12:15', 105, 1109, '4B', 1230),
	('Histoire-Geographie', 'Jeudi', '10:15', '12:15', 104, 1108, '3A', 1231),
	('Histoire-Geographie', 'Jeudi', '10:15', '12:15', 105, 1109, '3B', 1232),
	('Français', 'Vendredi', '8:00', '10:00', 201, 1110, '6A', 1233),
	('Français', 'Vendredi', '8:00', '10:00', 202, 1111, '6B', 1234),
	('Français', 'Jeudi', '8:00', '10:00', 201, 1110, '5A', 1235),
	('Français', 'Jeudi', '8:00', '10:00', 202, 1111, '5B', 1236),
	('Français', 'Mardi', '8:00', '10:00', 201, 1110, '4A', 1237),
	('Français', 'Mardi', '8:00', '10:00', 202, 1111, '4B', 1238),
	('Français', 'Lundi', '8:00', '10:00', 201, 1110, '3A', 1239),
	('Français', 'Lundi', '8:00', '10:00', 202, 1111, '3B', 1240),
	('Anglais', 'Jeudi', '13:15', '14:15', 306, 1112, '6A', 1241),
	('Anglais', 'Jeudi', '14:15', '15:15', 307, 1112, '6B', 1242),
	('Anglais', 'Lundi', '13:15', '14:15', 306, 1112, '5A', 1243),
	('Anglais', 'Lundi', '14:15', '15:15', 307, 1112, '5B', 1244),
	('Anglais', 'Vendredi', '13:15', '14:15', 306, 1112, '4A', 1245),
	('Anglais', 'Vendredi', '14:15', '15:15', 307, 1112, '4B', 1246),
	('Anglais', 'Mardi', '13:15', '14:15', 306, 1112, '3A', 1247),
	('Anglais', 'Mardi', '14:15', '15:15', 307, 1112, '3B', 1248),
	('Technologie', 'Jeudi', '14:15', '15:15', 101, 1107, '6A', 1249),
	('Technologie', 'Jeudi', '13:15', '14:15', 102, 1107, '6B', 1250),
	('Technologie', 'Lundi', '14:15', '15:15', 101, 1107, '5A', 1251),
	('Technologie', 'Lundi', '13:15', '14:15', 102, 1107, '5B', 1252),
	('Technologie', 'Vendredi', '14:15', '15:15', 101, 1107, '4A', 1253),
	('Technologie', 'Vendredi', '13:15', '14:15', 102, 1107, '4B', 1254),
	('Technologie', 'Mardi', '14:15', '15:15', 101, 1107, '3A', 1255),
	('Technologie', 'Mardi', '13:15', '14:15', 102, 1107, '3B', 1256);

insert into administrateur values
	('Coulon', 'Laurent', 'Petit_admin', '5eme', 1301),
	('Rengot', 'Marielle', 'Petit_admin', '6eme', 1302),
	('Itier', 'Christophe', 'Petit_admin', '4eme', 1303),
	('Cochy', 'Nadine', 'Petit_admin', '3eme', 1304),
	('Razska', 'Alexandre', 'Grand_admin', 'all', 1305);


/*	Ce sont les vues destinées aux élève,
	elles sont crée en fonction de l'identifiant l'élève */

create view espace_eleve as
	select e.nom as 'votre_nom', e.prenom as 'votre_prenom', co.nom as 'nom_cours',
	p.nom as 'nom_professeur', e.nom_classe as 'classe',
	co.jour, co.heure_debut, co.heure_fin, co.salle
	from (eleve e
		inner join cours co on e.nom_classe=co.nom_classe)
		inner join professeur p on p.ID_professeur=co.ID_professeur
	where e.ID_eleve=substring_index(user(),'@',1);


/*	Ce sont les vues destinées aux professeurs,
	elles sont crée en fonction de l'identifiant du professeur */

create view espace_professeur as
	select p.nom as 'votre_nom', p.prenom as 'votre_prenom', co.nom as 'nom_cours', cl.nom as 'classe',
	cl.niveau, co.jour, co.heure_debut, co.heure_fin, co.salle, e.nom as 'nom_eleve',
	e.prenom as 'prenom_eleve', e.date_naissance
	from ((professeur p inner join cours co on p.ID_professeur=co.ID_professeur)
		inner join classe cl on co.nom_classe=cl.nom)
		inner join eleve e on e.nom_classe=cl.nom
	where p.ID_professeur=substring_index(user(),'@',1);


/*	Ce sont les vues destinées aux administrateurs,
	elles sont crée en fonctions du poste de l'administrateur
	et au niveau de classe qui leur sont attribué */

create view classe_admin as
	select cl.*
	from classe cl, administrateur a
	where a.ID_administrateur=substring_index(user(),'@',1)
	and case
		when a.poste='Petit_admin' then cl.niveau=a.niveau_classe
		else cl.niveau=cl.niveau								/* J'ai ecrit ça car autrement la vue pour le grand admin etait vide... */
	end;

create view eleve_admin as
	select e.*
	from eleve e, classe_admin c
	where e.nom_classe=c.nom;

create view professeur_admin as
	select p.*
	from professeur p;

create view cours_admin as
	select co.*
	from cours co, classe_admin cl
	where co.nom_classe=cl.nom;


/*	C'est un professeur, il peut avoir acces en lecture à ses cours,
	au classes assistant à ses cours et à certaines info sur les élèves
	de ces classes */

drop user if exists '1101';
create user '1101'@'%' identified by '1101';
	grant select, delete
		on espace_professeur to '1101';


/*	C'est un élève, il peut avoir acces en lecture à ses cours, sa classe
	et certaines info sur ses profs */

drop user if exists '1001';
create user '1001'@'%' identified by '1001';
	grant select
		on espace_eleve to '1001';


/*	C'est un petit administrateur, il peut modifé ce qu'il veut
	au niveau des données liés au niveau de classe qu'il lui est
	attribué sauf les données des professeurs */

drop user if exists '1301';
create user '1301'@'%' identified by '1301';
	grant select, insert, update, delete
		on classe_admin to '1301';
	grant select, insert, update, delete
		on eleve_admin to '1301';
	grant select
		on professeur_admin to '1301';
	grant select, insert, update, delete
		on cours_admin to '1301';


/*	C'est un grand administrateur, il peut modifier ce qu'il veut au niveau
	des données mais ne peut pas modifier la structure de la base */

drop user if exists '1305';
create user '1305'@'%' identified by '1305';
	grant select, insert, update, delete
		on classe_admin to '1305';
	grant select, insert, update, delete
		on eleve_admin to '1305';
	grant select, insert, update, delete
		on professeur_admin to '1305';
	grant select, insert, update, delete
		on cours_admin to '1305';