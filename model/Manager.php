<?php

class Manager
{
    protected function dbConnect()
    {
        $db = new PDO('mysql:host=localhost;dbname=projet4_blog;charset=utf8', 'root', '');
        return $db;
    }
}