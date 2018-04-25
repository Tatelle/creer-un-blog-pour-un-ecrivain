<?php

// Chargement des classes
require_once('model/PostManager.php');
require_once('model/CommentManager.php');
require_once('model/LoginManager.php');
require_once('model/AdminManager.php');

function listPosts()
{
    $postManager = new PostManager(); // Création d'un objet
    $posts = $postManager->getPosts(); // Appel d'une fonction de cet objet

    require('view/frontend/listPostsView.php');
}

function post($postId)
{
    $postManager = new PostManager();
    $commentManager = new CommentManager();

    $post = $postManager->getPost($postId);
    $comments = $commentManager->getComments($postId);
    $reporting = $commentManager->getReporting($postId);

    require('view/frontend/postView.php');
}

function addComment($postId, $author, $comment)
{
    $commentManager = new CommentManager();
    $affectedLines = $commentManager->postComment($postId, $author, $comment);

    if ($affectedLines === false) {
        throw new Exception('Impossible d\'ajouter le commentaire !');
    }
    else {
        header('Location: index.php?action=post&id=' . $postId);
    }
}

function report($commentId, $postId){
    $commentManager = new CommentManager();
    $affectedLines = $commentManager->postReporting($commentId);

    if ($affectedLines === false) {
        throw new Exception('Impossible de signaler le commentaire !');
    }
    else {
        header('Location: index.php?action=post&id=' . $postId);
    }
}

function login()
{
    if(isset($_POST['login']) && isset($_POST['pass']) && $_POST['login'] != '' && $_POST['pass'] != ''){
        $login = htmlspecialchars($_POST['login']);
        $pass = htmlspecialchars($_POST['pass']);

        $loginManager = new LoginManager();
        $loginAdmin = $loginManager->getLogin($login);
        $isPasswordCorrect = password_verify($pass, $loginAdmin['pass']);

        if ($loginAdmin === false)
        {
            $message = 'Mauvais identifiant ou mot de passe !';
            $_SESSION = array();
            session_destroy();
        }
        else {
            if ($isPasswordCorrect) {                     
                $_SESSION['id'] = $loginAdmin['id'];
                $_SESSION['login'] = $loginAdmin;
                header('Location: index.php?action=admin');
            }
            else {
                $message = 'Mauvais identifiant ou mot de passe !';
                $_SESSION = array();
                session_destroy();
            }
        }
        return $message;
    }
    else {
        $message = 'Vous devez remplir tous les champs';

        return $message;
    }
}

function error($e){
    require('view/frontend/errorView.php');
}

function checkPost($postId){
    $postId = intval($postId);
    $postManager = new PostManager();
    $check = $postManager->getCheckPost($postId);

    return $check;
}

function checkComment($commentId){
    $commentId = intval($commentId);
    $commentManager = new CommentManager();
    $check = $commentManager->getCheckComment($commentId);

    return $check;
}

function checkReport($reportId){
    $reportId = intval($reportId);
    $commentManager = new CommentManager();
    $check = $commentManager->getCheckReport($reportId);

    return $check;
}