<?php
	session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="CSS/menu.css">
	<title>Emploi du Temps Eleve</title>
</head>
<body>
	<h1>Emploi du temps</h1>
	<ul class="bandeauGauche">
		Identifiant : <strong><?php echo $_SESSION['id']; ?></strong><br><br>
		Vous pouvez :<br><br>
			<li>Consulter votre <a href="edt_eleve.php"><strong>emploi du temps</strong></a></li>
			<li>Consulter vos <a href="absences_eleve.php"><strong>absences</strong></a></li>
	</ul>
	<p class="deconnexion">
		<a href="bienvenue.php">Se deconnecter</a>
	</p>
	<?php $bdd=mysqli_connect('localhost', $_SESSION['id'], $_SESSION['mdp'], 'Projet_College'); ?>
	<table>
		<thead>
			<tr>
				<th><i>Heure</i></th>
				<th><strong>Lundi</strong></th>
				<th><strong>Mardi</strong></th>
				<th><strong>Mercredi</strong></th>
				<th><strong>Jeudi</strong></th>
				<th><strong>Vendredi</strong></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>8h<br><br>9h</td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '8:00' and jour='Lundi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '8:00' and jour='Mardi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '8:00' and jour='Mercredi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '8:00' and jour='Jeudi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '8:00' and jour='Vendredi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
			</tr>
			<tr>
				<td>9h<br><br>10h</td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '9:00' and jour='Lundi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '9:00' and jour='Mardi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '9:00' and jour='Mercredi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '9:00' and jour='Jeudi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '9:00' and jour='Vendredi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
			</tr>
			<tr>
				<td>10h15<br><br>11h15</td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '10:15' and jour='Lundi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '10:15' and jour='Mardi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '10:15' and jour='Mercredi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '10:15' and jour='Jeudi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '10:15' and jour='Vendredi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
			</tr>
			<tr>
				<td>11h15<br><br>12h15</td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '11:15' and jour='Lundi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '11:15' and jour='Mardi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '11:15' and jour='Mercredi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '11:15' and jour='Jeudi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '11:15' and jour='Vendredi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
			</tr>
			<tr>
				<td>12h15<br><br>13h15</td>
				<td>Déjeuner</td>
				<td>Déjeuner</td>
				<td>Déjeuner</td>
				<td>Déjeuner</td>
				<td>Déjeuner</td>
			</tr>
			<tr>
				<td>13h15<br><br>14h15</td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '13:15' and jour='Lundi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '13:15' and jour='Mardi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '13:15' and jour='Mercredi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '13:15' and jour='Jeudi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '13:15' and jour='Vendredi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
			</tr>
			<tr>
				<td>14h15<br><br>15h30</td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '14:15' and jour='Lundi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '14:15' and jour='Mardi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '14:15' and jour='Mercredi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '14:15' and jour='Jeudi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
				<td><?php
						$result = mysqli_query($bdd, "select nom_cours, nom_professeur, salle from espace_eleve where heure_debut = '14:15' and jour='Vendredi' ");
						$donnee = mysqli_fetch_assoc($result);
						echo '<strong>' . $donnee['nom_cours'] . '</strong>' . '<br><br>' . $donnee['nom_professeur'] . '<br>' . 'Salle ' . $donnee['salle'];
					?></td>
			</tr>
		</tbody>
	</table>
</body>
</html>