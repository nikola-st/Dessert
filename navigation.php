<?php include 'prijavljen.inc';?>
<?php error_reporting(0);?>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dobrodosli!</title>
        <!--Bootstrap css-->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div style="color: #1a1a1a; background-color: #eee; min-height: 100px; padding: 24px;">
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container-fluid">
                <a class="navbar-brand" href="/webshop/private/login.php"><img src="/webshop/images/logo.png" alt="Brand"/></a>
            <div class="navbar-header">
                <ul class="nav nav-pills">
                    <li role="presentation"><a href="/webshop/home.php">Home</a></li>
                    <li role="presentation"><a href="/webshop/about.php">O nama</a></li>
                    <li role="presentation"><a href="/webshop/index.php">Proizvodi</a></li>
                    <li role="presentation"><a href="#">Lokacija</a></li>
                </ul>
            </div>
            <p class="navbar-text navbar-right">
                <?php
                    if(isset($_SESSION['id_korisnika'])){
                        echo "Dobrodosli " . $_SESSION['id_korisnika'] . "!</a>&nbsp;&nbsp;<br>";
                    }
                ?>
            <?php
               
                $homeskript = $_SESSION['homeSkript'];
                $tabela = $_SESSION['tabela'];
                if($poruka == "Login"){
                    echo"<a href='$skript'>" . $poruka . "</a>&nbsp;&nbsp;";
                }elseif($poruka == "Logout"){
                    echo"<a href='$skript'>". $poruka . "</a>";
                    if($tabela != "klijent"){
                        echo"&nbsp;/&nbsp;<a href='$homeskript'>Pocetna</a>&nbsp;&nbsp;";
                    }elseif ($tabela != "admin") {
                        echo"&nbsp;/&nbsp;<a href = '/webshop/private/customers/shopping.php'><img src=\"/webshop/images/cart.png\"></a>&nbsp;&nbsp;";
                    }
                }
            ?>
            </p>
        </div>
        </nav>
        </div>
    </body>
</html>