<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="CSS/bienvenue.css">
	<title>Accueil</title>
</head>
<body>
	<h1>Bienvenue</h1>
	<p>
		Bienvenue sur la page de connexion du site du projet de Jean Destribois.<br>
		Ce site permet au élève et au professeur d'un collège d'avoir acces au données les concernant et permet aux administrateurs de gérer toutes ces données.
	</p>
	<hr>
	<form method="post", action="connexion.php">
			<p>
			Veuillez saisir votre identifiant et votre mot de passe pour vous connecter.<br><br>
			<label for="ident"><strong>Identifiant : </strong></label><input type="text" name="ident" id="ident" autofocus><br>
			<label for="mdp"><strong>Mot de passe : </strong></label><input type="password" name="mdp" id="mdp"><br>
			<input class="bouton" type="submit" value="Se connecter">
		</p>
	</form>

</body>
</html>