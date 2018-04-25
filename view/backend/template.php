<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title><?= $title ?></title>
        <link href="public/css/style.css" rel="stylesheet" /> 
        <script src='https://cloud.tinymce.com/stable/tinymce.min.js'></script>
        <script>
		tinymce.init({
			selector: '#chapterContent'
		});
		</script>
    </head>
        
    <body>
    	<?php
		if (!isset($_SESSION['login'])) //On est dans la page de formulaire
		{ ?>
			<p>Vous n'êtes pas autorisé à accéder à cette page. Merci devous connecter !</p>
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
			<p><a href="index.php?admin=logout">Déconnexion</a></p>
		<?php
			echo $content;
		}
		?>

        
    </body>
</html>