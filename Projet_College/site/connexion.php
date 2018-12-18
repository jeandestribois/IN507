<?php
	session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<title>Page de Connexion</title>
</head>
<body>
	<?php
		$_SESSION['id']=$_POST['ident'];
		$_SESSION['mdp']=$_POST['mdp'];
		if ($bdd=mysqli_connect('localhost', $_SESSION['id'], $_SESSION['mdp'], 'Projet_College'))
		{
			if ($_SESSION['id'][1]=='0')
			{
				header('Location: espace_eleve.php');
				exit();
			}
			if ($_SESSION['id'][1]=='1')
			{
				header('Location: espace_professeur.php');
				exit();
			}
			else
			{
				header('Location: espace_administrateur.php');
				exit();
			}
		}
		else
		{
			session_destroy();
			header('Location: erreur_connexion.php');
			exit();
		}
	?>
</body>
</html>