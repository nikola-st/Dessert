<?php

session_start();
$prijavaSkript = "/webshop/private/login.php";
$odjavaSkript = "/webshop/private/logout.php";

$skript = $prijavaSkript;
$nijePrijavljen = !isset($_SESSION['id_korisnika']);

if($nijePrijavljen){
    $poruka = "Login";
    $_SESSION['poruka'] = $poruka;
    $_SESSION['skript'] = $skript;
} else {
    $poruka = "Logout";
    $_SESSION['poruka'] = $poruka;
    $skript = $odjavaSkript;
    $_SESSION['skript'] = $skript;
}

