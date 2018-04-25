<?php $title = 'Tous les chapitres'; ?>

<?php ob_start(); ?>
<p class="bouton_retour"><a href="index.php?action=admin"><button class="btn btn-default">Retour à l'accueil</button></a></p>

<h1>Tous les Chapitres</h1>
<div class="alert alert-info">
	<p>Choisissez le chapitre à modifier ou à supprimer</p>
</div>

<?php
while ($data = $posts->fetch())
{
?>
    <div class="panel panel-primary">
  		<div class="panel-heading">
    		<h2 class="panel-title">
           		<?= htmlspecialchars($data['title']) ?>
           		<em>le <?= $data['creation_date_fr'] ?></em>
        	</h2>
        </div>
        <div class="panel-body">
        	<?= substr(nl2br($data['content']), 0, 5000) ?> 
	  		<p>[...]</p>
  		</div>
  		<div class="panel-footer">
  			<a href="index.php?action=adminChangePost&amp;id=<?= $data['id'] ?>" data-toggle="tooltip" title="Modifier">
				<button class="btn btn-warning btn-lg"><span class="glyphicon glyphicon-pencil"></span></button>
			</a> 
			<a href="index.php?action=adminDeletePost&amp;id=<?= $data['id'] ?>" data-toggle="tooltip" title="Supprimer">
				<button class="btn btn-danger btn-lg"><span class="glyphicon glyphicon-remove"></span></button>
			</a>
		</div>
    </div>
<?php
}
$posts->closeCursor();
?>
<?php $content = ob_get_clean(); ?>

<?php require('template.php'); ?>