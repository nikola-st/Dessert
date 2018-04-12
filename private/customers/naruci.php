<?php
include '../../prijavljen.inc';
require '../../common.inc';

$id_p = $_SESSION['broj_porudzbenice'];
$id_k = $_SESSION['id_korisnika1'];
$datum = (new DateTime())->format("Y-m-d");

$sql = "INSERT INTO porudzbina (`IDPorudzbine`, `IDKorisnika`, `datumPorudzbine`, `adresaUplatioca`, `emailUplatioca`, `IDKorpe`, `status`) VALUES ('$id_p', '$id_k', NULL, NULL, NULL, NULL, NULL);";
    if($con->query($sql) === TRUE) {
        header("Location: ../../index.php?obavestenje=Proizvodi su poruceni! Hvala sto koristite nase usluge!");
    } else {
        echo "Greška: ". $con->connect_error;
    }
 
    $con->close();