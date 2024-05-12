<?php
// Conectare la baza de date
$servername = "LAPTOP-5UO3NBV3";
$username = "LAPTOP-5UO3NBV3\Ulniuc Maria";
$dbname = "Store";

$conn = new mysqli($servername, $username, $dbname);

// Verificare conexiune
if ($conn->connect_error) {
    die("Conexiunea la baza de date a eșuat: " . $conn->connect_error);
}

// Preluați datele din formular
$email = $_POST['email'];
$parola = $_POST['password'];
$tipCont = $_POST['account-type'];

// Inserează datele în baza de date
$sql = "INSERT INTO utilizatori (email, parola, tip_cont) VALUES ('$email', '$parola', '$tipCont')";

if ($conn->query($sql) === TRUE) {
    echo "Datele au fost inserate cu succes în baza de date.";
} else {
    echo "Eroare la inserarea datelor: " . $conn->error;
}

// Închide conexiunea
$conn->close();
?>