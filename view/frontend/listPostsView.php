<?php $title = 'Billet simple pour l\'Alaska'; ?>

<?php ob_start(); ?>
<div class="jumbotron">
  	<div class="container">
        <h1>Bonjour tout le monde !</h1>
        <p>Bienvenue ! Je suis Jean Forteroche. Vous êtes actuellement sur mon Blog où je poste au fur et à mesure un nouveau chapitre de mon dernier roman intitulé "Billet simple pour l'Alaska". N'hésitez pas à y laisser des commentaires !</p>
  	</div>
</div>
<div class="container">
	<?php
	while ($data = $posts->fetch())
	{
	?>
	    <div class="panel panel-primary">
	  		<div class="panel-heading">
	    		<h3 class="panel-title">
	    			<?= htmlspecialchars($data['title']) ?>
	            	<em>le <?= $data['creation_date_fr'] ?></em>
	        	</h3>
	  		</div>
	  		<div class="panel-body"><?= substr(nl2br($data['content']), 0, 5000) ?> 
	  			<p>[...]</p>
	  		</div>
	  		<div class="panel-footer">
	  			<a href="index.php?action=post&amp;id=<?= $data['id'] ?>">
					<button class="btn btn-warning btn-lg"><span class="glyphicon glyphicon-comment"></span></button>
				</a>
			</div>
		</div>

	<?php
	}
	$posts->closeCursor();
	?>
</div>
<?php $content = ob_get_clean(); ?>

<?php require('template.php'); ?>