<?php
session_start();

require_once('controller/frontend.php');
require_once('controller/backend.php');

try {
    if (isset($_POST['login'])) {
        echo "cooucou !!!";
        $message = login();
        echo '<p>' . $message . '</p>';
    }
    elseif (isset($_GET['admin']) && $_GET['admin'] == 'logout') {
        logout();

    }
    if (isset($_GET['action'])) {
        if ($_GET['action'] == 'listPosts' || $_GET['action'] == 'post' || $_GET['action'] == 'addComment' || $_GET['action'] == 'report' || $_GET['action'] == 'admin' || $_GET['action'] == 'adminDeleteReport' || $_GET['action'] == 'adminCancelReport' || $_GET['action'] == 'adminNewPost' || $_GET['action'] == 'adminAddPost' || $_GET['action'] == 'adminAllPosts' || $_GET['action'] == 'adminChangePost' || $_GET['action'] == 'adminChangingPost' || $_GET['action'] == 'adminDeleteComment' || $_GET['action'] == 'adminDeletePost')
        {
            if ($_GET['action'] == 'listPosts') {
                listPosts();
            }
            elseif ($_GET['action'] == 'post') {
                if (isset($_GET['id']) && $_GET['id'] > 0) {
                    post();
                }
                else {
                    throw new Exception('Aucun identifiant de billet envoyé');
                }
            }
            elseif ($_GET['action'] == 'addComment') {
                if (isset($_GET['id']) && $_GET['id'] > 0) {
                    if (!empty($_POST['author']) && !empty($_POST['comment'])) {
                        addComment($_GET['id'], $_POST['author'], $_POST['comment']);
                    }
                    else {
                        throw new Exception('Tous les champs ne sont pas remplis !');
                    }
                }
                else {
                    throw new Exception('Aucun identifiant de billet envoyé');
                }
            }
            elseif ($_GET['action'] == 'report') {
                report($_GET['comment_id'], $_GET['post_id']);
            }
            elseif ($_GET['action'] == 'admin') {
                adminIndex();
            }elseif ($_GET['action'] == 'adminDeleteReport') {
                adminDeleteReport($_GET['id']);
            }
            elseif ($_GET['action'] == 'adminCancelReport') {
                adminCancelReport($_GET['id']);
            }
            elseif ($_GET['action'] == 'adminNewPost') {
                adminNewPost();
            }
            elseif ($_GET['action'] == 'adminAddPost') {
                adminAddPost();
            }
            elseif ($_GET['action'] == 'adminAllPosts') {
                adminAllPosts();
            }
            elseif ($_GET['action'] == 'adminChangePost') {
                adminChangePost($_GET['id']);
            }
            elseif ($_GET['action'] == 'adminChangingPost') {
                adminChangingPost($_GET['id']);
            }
            elseif ($_GET['action'] == 'adminDeleteComment') {
                adminDeleteReport($_GET['id']);
            }
            elseif ($_GET['action'] == 'adminDeletePost') {
                adminDeletePost($_GET['id']);
            }
        }
        else {
            throw new Exception('Oups ! La page que vous cherchez n\'existe pas (ou plus).');
        }  
    }
    else {
        listPosts();
    }
}
catch(Exception $e) {
    error($e);
}
