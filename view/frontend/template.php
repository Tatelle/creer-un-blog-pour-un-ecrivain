<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title><?= $title ?></title>
        <link href="public/css/style.css" rel="stylesheet" /> 
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