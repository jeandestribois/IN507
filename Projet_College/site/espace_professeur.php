<?php
	session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="CSS/menu.css">
	<title>Espace Professeur</title>
</head>
<body>
	<h1>Espace Professeur</h1>
	<ul class="bandeauGauche">
		Identifiant : <strong><?php echo $_SESSION['id']; ?></strong><br><br>
		Vous pouvez :<br><br>
			<li>Consulter votre <strong>emploi du temps</strong></li>
			<li>Consulter vos <strong>classes</strong></li>
			<li>Consulter les <strong>absences à vos cours</strong></li>
	</ul>
	<p class="deconnexion">
		<a href="bienvenue.php">Se deconnecter</a>
	</p>

</body>
</html>