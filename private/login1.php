<?php

require_once '../common.inc'; 

session_start();

$korisnik = $_POST["username"];
$lozinka = $_POST["password"];

$sql = "SELECT * FROM korisnik WHERE Username = '{$korisnik}' and Password = '{$lozinka}'";
$result = $con->query($sql);
$data = $result->fetch_assoc();
$con->close();
    
    if($data == null){
        $pogresniPodaci = "Podaci su pogresno uneti ili niste registrovani!";
        header("Location: login.php?pogresniPodaci=$pogresniPodaci");
    }else{
        $_SESSION['id_korisnika'] = $data["Username"];
        $_SESSION['id_korisnika1'] = $data["IDKorisnika"];
        $_SESSION['tabela'] = $data["radnoMesto"];
        if($data["radnoMesto"] == 'admin'){
            $link = "./sellers/kontrolna_tabla.php";
            $_SESSION['homeSkript'] = "/webshop/private/sellers/kontrolna_tabla.php";
            
        } else {
            $sql1="SELECT MAX(IDPorudzbine) FROM porudzbina";
            $data1 = $result->fetch_assoc();
            $con->close();
            $broj = max($data1) + 1;
            $_SESSION['broj_porudzbenice'] = $broj;
            $link = "../index.php";
            
        }
        header("Location: $link");
    }
    
