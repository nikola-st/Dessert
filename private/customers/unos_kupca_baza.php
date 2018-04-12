<?php

include '../../prijavljen.inc';
require '../../common.inc';

if($_POST) {
    $Ime = $_POST['Ime'];
    $Prezime = $_POST['Prezime'];
    $Username = $_POST['Username'];
    $Password = $_POST['Password'];
    $Adresa = $_POST['Adresa'];
    $Telefon = $_POST['Telefon'];
    $Email = $_POST['Email'];
 
    $sql = "INSERT INTO korisnik (Ime, Prezime, Username, Password, Adresa, Telefon, Email, radnoMesto) VALUES ('$Ime', '$Prezime', '$Username', '$Password', '$Adresa', '$Telefon', '$Email', 'klijent')";
    if($con->query($sql) === TRUE) {
        header("Location: ../../index.php?obavestenje=Uspesno ste se registrovali!");
    } else {
        echo "Greška: ". $con->connect_error;
    }
 
    $con->close();
}