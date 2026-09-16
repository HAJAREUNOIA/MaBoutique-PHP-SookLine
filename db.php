<?php


$host = 'localhost';      
$dbname = 'maboutique';      
$username = 'root';        // Ton user MySQL 
$password = '';       // Ton mot de passe

// Connexion MySQLi orientée objet
$conn = new mysqli($host, $username, $password, $dbname);

// Gestion d'erreur de connexion
if ($conn->connect_error) {
    die("Erreur de connexion à la base de données : " . $conn->connect_error);
}

?>
