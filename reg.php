<?php
$servername = "sql305.epizy.com";
$username = "epiz_23590390";
$password = "r1awqj3GSeeJD";
$db = "epiz_23590390_easyrent";

$datumdolaska=  $_POST["datumdolaska"];
$datumodlaska=  $_POST["datumodlaska"];
$sifranekretnine = $_POST['sifranekretnine'];
$brojosoba=  $_POST["brojosoba"];
$email=  $_POST["email"];
$brojtelefona=  $_POST["brojtelefona"];
$ime=  $_POST["ime"];
$prezime=  $_POST["prezime"];
$biljeska=  $_POST["biljeska"];



$sql="INSERT INTO rezervacija( Datum_dolaska,Datum_odlaska,Sifra_nekretnine,Broj_osoba,Email,Broj_telefona,Ime,Prezime,Biljeska)
values ('$datumdolaska','$datumodlaska','$sifranekretnine','$brojosoba','$email','$brojtelefona','$ime','$prezime','$biljeska')";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $db);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully";

if (mysqli_query($conn, $sql)) {
    echo "New record created successfully";
    echo $brojosoba;
    echo $sifranekretnine;
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}


?>