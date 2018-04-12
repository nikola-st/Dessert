<?php include '../../prijavljen.inc';?>
<?php error_reporting(0);?>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dobrodosli!</title>
        <!--Bootstrap css-->
        <link href="../../css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../../css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="../../css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <script src="../../funkcije.js" type="text/javascript"></script>
    </head>
    <body>
        <?php include '../../navigation.php'; ?>
        <div align="center">
        <div class="container"><!-- container --> 
        <div class="row"><!-- row -->   
    <center>
        <h4 class="alert-info">Pregled porudzbina</h4>
        
        <a class="btn btn-info" href="dodaj_proizvod.php" role="button">Dodaj proizvod</a>
        
        <a class="btn btn-info" href="pregled_narudzbenica.php" role="button">Pregled narudzbenica</a>
        <br>
        <?php if($_GET['obavestenje']){
            echo"<span class='label label-info'>" .$_GET['obavestenje']. "</span>";
        }?>    
        <br>
    </center>
    <div class="container"><!-- container --> 
        
        <h4>Lista Proizvoda</h4>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID Porudzbine</th>
                    <th>Ime</th>
                    <th>Prezime</th>
                    <th>Datum porudzbine</th>
                    <th>Adresa</th>
                </tr>
            </thead>
            <tbody>
            <?php 
                require_once '../../common.inc';
                $sql = "SELECT porudzbina.IDPorudzbine, korisnik.Ime, korisnik.Prezime, porudzbina.datumPorudzbine, porudzbina.adresaUplatioca FROM porudzbina LEFT JOIN korisnik ON porudzbina.IDKorisnika = korisnik.IDKorisnika";
                
                $result = $con->query($sql);
                
                if($result->num_rows > 0){
                    while($row = $result->fetch_assoc()){
                        echo "<tr>
                        <td>". $row['IDPorudzbine']."</td>
                        <td>". $row['Ime']."</td>
                        <td>". $row['Prezime']."</td>
                        <td>". $row['datumPorudzbine']."</td>
                        <td>". $row['adresaUplatioca']."</td>
                        </tr>";
                    }$result->free();
                } else {
                    echo "<tr><td colspan='5'><center>Nema podataka</center></td></tr>";
                }
                ?>  
    </div><!-- row -->
  </div><!-- container --> 
</div>
</body>
</html>

