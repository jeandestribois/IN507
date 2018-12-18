<?php
	session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="CSS/menu.css">
	<title>Espace Administrateur</title>
</head>
<body>
	<h1>Espace Administrateur</h1>
	<ul class="bandeauGauche">
		Identifiant : <strong><?php echo $_SESSION['id']; ?></strong><br><br>
		Vous pouvez :<br><br>
			<li>Ajouter ou modifier des <strong>professeurs</strong></li>
			<li>Ajouter ou modifier des <strong>élèves</strong></li>
			<li>Ajouter ou modifier des <strong>cours</strong></li>
			<li>Ajouter ou modifier des <strong>classes</strong></li>
			<li>Ajouter ou modifier des <strong>absences</strong></li>
	</ul>
	<p class="deconnexion">
		<a href="bienvenue.php">Se deconnecter</a>
	</p>
</body>
</html>