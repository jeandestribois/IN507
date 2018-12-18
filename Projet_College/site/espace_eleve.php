<?php
	session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="CSS/menu.css">
	<title>Espace Eleve</title>
</head>
<body>
	<h1>Espace Eleve</h1>
	<ul class="bandeauGauche">
		Identifiant : <strong><?php echo $_SESSION['id']; ?></strong><br><br>
		Vous pouvez :<br><br>
			<li>Consulter votre <a href="edt_eleve.php"><strong>emploi du temps</strong></a></li>
			<li>Consulter vos <a href="absence_eleve.php"><strong>absences</strong></a></li>
	</ul>
	<p class="deconnexion">
		<a href="bienvenue.php">Se deconnecter</a>
	</p>
	<p class="blabla">
		Bonjour 
		<?php
			$bdd=mysqli_connect('localhost', $_SESSION['id'], $_SESSION['mdp'], 'Projet_College');
			$result = mysqli_query($bdd, "select votre_prenom, votre_nom, classe from espace_eleve");
			$donnee = mysqli_fetch_assoc($result);
			echo $donnee["votre_prenom"] . ' ' . $donnee['votre_nom'];
		?>.<br>
		Votre classe est la <?php echo $donnee['classe'] ?>.
	</p>
</body>
</html>