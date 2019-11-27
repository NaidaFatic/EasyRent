<?php
$servername = "sql305.epizy.com";
$username = "epiz_23590390";
$password = "r1awqj3GSeeJD";
$db = "epiz_23590390_easyrent";

$datumizdaje=  $_POST["datumizdaje"];
$krajnidatum=  $_POST["krajnidatum"];
$vrstanekretnine = $_POST['vrstanekretnine'];
$brojsoba=  $_POST["brojsoba"];
$email=  $_POST["email"];
$brojtelefona=  $_POST["brojtelefona"];
$ime=  $_POST["ime"];
$prezime=  $_POST["prezime"];
$opis=  $_POST["opis"];

$sql="INSERT INTO izdanje( Datum_izdaje,Krajni_datum_izdaje,Vrsta_nekretnine,Broj_soba,Email,Broj_telefona,Ime,Prezime,Opis)
values ('$datumizdaje','$krajnidatum','$$vrstanekretnine','$brojsoba','$email','$brojtelefona','$ime','$prezime','$opis')";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $db);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully";

if (mysqli_query($conn, $sql)) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}


?>