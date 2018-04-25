<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    	<meta name="viewport" content="width=device-width, initial-scale=1" />
    	<meta name="description" content="Jean Forteroche, acteur et écrivain. Il travaille actuellement sur son prochain roman, 'Billet simple pour l'Alaska'. Il souhaite innover et le publier par épisode en ligne sur son propre site.">
    	<meta name="author" content="Site web fait en PHP et MySQL. Avec une architecture MVC et programmé en parie en orienté objet. Le site a été développé pour le projet 4 : 'Créez le blog d'un écrivain', dans le cadre de la formation Openclassrooms 'Développeur Web Junior'">

        <title><?= $title ?></title>

        <link href="vendor/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link href="vendor/bootstrap/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet" />
        <link href="vendor/bootstrap/docs/examples/starter-template/starter-template.css" rel="stylesheet" />
        <link href="public/css/style.css" rel="stylesheet" /> 
        <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
	    <!--[if lt IE 9]><script src="vendor/bootstrap/docs/assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
	    <script src="vendor/bootstrap/docs/assets/js/ie-emulation-modes-warning.js"></script>

	    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	    <!--[if lt IE 9]>
	      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	    <![endif]-->

    </head>
        
    <body>
    	<?php
		if (!isset($_SESSION['login'])) //On est dans la page de formulaire
		{ ?>
			<form method="POST">
				<fieldset>
					<legend>Connexion</legend>
					<p>
						<label for="login">Identifiant :</label><input name="login" type="text" id="login" /><br />
						<label for="pass">Mot de Passe :</label><input type="password" name="pass" id="pass" />
					</p>
					<p><input type="submit" value="Connexion" /></p>
				</fieldset>
			</form>
		<?php
		}
		else { ?>

			<p><a href="index.php?action=admin"><button>accéder à la partie Admin</button></a></p>
			<p><a href="index.php?admin=logout"><button>Déconnexion</button></a></p>
		<?php
		}
		?>

        <?= $content ?>
    </body>
</html>