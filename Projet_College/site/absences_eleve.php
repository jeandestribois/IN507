<?php
	session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="CSS/menu.css">
	<title>Absences Eleve</title>
</head>
<body>
	<h1>Espace Eleve</h1>
	<ul class="bandeauGauche">
		Identifiant : <strong><?php echo $_SESSION['id']; ?></strong><br><br>
		Vous pouvez :<br><br>
			<li>Consulter votre <a href="edt_eleve.php"><strong>emploi du temps</strong></a></li>
			<li>Consulter vos <a href="absences_eleve.php"><strong>absences</strong></a></li>
	</ul>
	<p class="deconnexion">
		<a href="bienvenue.php">Se deconnecter</a>
	</p>
	</p>
	<?php $bdd=mysqli_connect('localhost', $_SESSION['id'], $_SESSION['mdp'], 'Projet_College'); ?>
	
</body>
</html>