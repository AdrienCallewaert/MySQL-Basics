<?php
//PDO
$servername = 'mysql:host=localhost;dbname=randoapp;charset=utf8';
$username = 'root';
$password = '';

try
{
	// On se connecte à MySQL
	$bdd = new PDO("$servername","$username","$password");
}
catch(Exception $e)
{
	// En cas d'erreur, on affiche un message et on arrête tout
        die('Erreur : '.$e->getMessage());
}
?>