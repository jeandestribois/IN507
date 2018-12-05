CREATE TABLE `tennis`.`Sponsor` (
	`nom` VARCHAR(30) NOT NULL,
	`lieutournoi` VARCHAR(30) NOT NULL,
	`annee` INT(4) NOT NULL ,
	`adresse` VARCHAR(50) NOT NULL,
	`montant` INT(4) NOT NULL,
	PRIMARY KEY (`lieutournoi`, `annee`)
) ENGINE = InnoDB;

CREATE TABLE `tennis`.`Joueurs` (
	`nom` VARCHAR(30) NOT NULL,
	`prenom` VARCHAR(30) NOT NULL,
	`age` INT(3) NOT NULL ,
	`nationalite` VARCHAR(30) NOT NULL,
	PRIMARY KEY (`nom`)
) ENGINE = InnoDB;