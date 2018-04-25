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
        
        <script src='https://cloud.tinymce.com/stable/tinymce.min.js'></script>
        <script>
		tinymce.init({
			selector: '#chapterContent'
		});
		</script>
    </head>
        
    <body>
    	<nav class="navbar navbar-inverse navbar-fixed-top">
      		<div class="container">
        		<div class="navbar-header">
          			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
			            <span class="sr-only">Toggle navigation</span>
			            <span class="icon-bar"></span>
			            <span class="icon-bar"></span>
			            <span class="icon-bar"></span>
			         </button>
          			<a class="navbar-brand" href="index.php">Billet simple pour l'Alaska</a>
        		</div>
		        <div id="navbar" class="navbar-collapse collapse">
		        	<?php
					if (!isset($_SESSION['login'])) //On est dans la page de formulaire
					{ ?>
			          	<form class="navbar-form navbar-right" method="POST" >
			            	<div class="form-group">
			             	 	<input name="login" type="text" id="login" placeholder="Identifiant" class="form-control">
			            	</div>
			            	<div class="form-group">
			              		<input type="password" name="pass" id="pass" placeholder="Mot de passe" class="form-control">
			            	</div>
			            	<button type="submit" class="btn btn-success">Connexion</button>
			          	</form>
			        <?php
					}
					else { ?>
						<div class="navbar-right">
							<ul class="nav navbar-nav">
								<li><a href="index.php"><button  class="btn btn-info">Accéder au Blog</button></a></li>
								<li><a href="index.php?admin=logout"><button  class="btn btn-primary">Déconnexion</button></a></li>
         					 </ul>
						</div>
					<?php
					}
					?>
		        </div><!--/.navbar-collapse -->
      		</div>
   		</nav>
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

        <!-- Bootstrap core JavaScript
	    ================================================== -->
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	    <script>window.jQuery || document.write('<script src="vendor/bootstrap/docs/assets/js/vendor/jquery.min.js"><\/script>')</script>
	    <script src="vendor/bootstrap/docs/dist/js/bootstrap.min.js"></script>
	    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	    <script src="vendor/bootstrap/docs/assets/js/ie10-viewport-bug-workaround.js"></script>
    </body>
</html>