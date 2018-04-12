<?php
    error_reporting(0);    
    include'../prijavljen.inc'; 
    include'../navigation.php'; 
    session_unset();
?>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dobrodosli!</title>
        <!--Bootstrap css-->
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body class="container">
        
            <center>
            <h4 style=" border-color: blue">Uspesno ste se izlogovali!</h4><br><br>
            <a href="/webshop/index.php"><button>Na pocetak</button></a>
            </center>
    <?php include 'footer.php';?>   
    </body>
</html>
    

