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
        <script src="../funkcije.js" type="text/javascript"></script>
    </head>
    <body class="container">
        
        <center>
            <?php include '../../navigation.php';?>
            <table class="table-bordered">               
                <tbody><h4>Lista proizvoda</h4><br>  
                <?php 
                require '../../common.inc';
                $broj_porudzbenice = $_SESSION['broj_porudzbenice'];
                $sql = "SELECT * FROM stavkaporudzbine WHERE IDPorudzbine='$broj_porudzbenice'";
                $result = $con->query($sql);
                while($row = $result->fetch_assoc()){
                    $id_proizvoda[] = $row['IDProizvoda'];
                }
                
                foreach($id_proizvoda as $a){
                    if (!$result = $con->query("SELECT * FROM proizvod WHERE `IDProizvoda`='".implode("' IN `id`='",$id_proizvoda)."'")) 
                    {
                        echo "Error during database query<br />\n";
  
                    }
                    while ($row1 = $result->fetch_array()) 
                    {
                       echo "<tr>
                        <td>". $row1['nazivProizvoda']."</td>
                        <td>". $row1['cena']."</td>
                        </tr>";
                    }
                } 
                ?>
                </tbody>
            </table>
            <?php include '../../footer.php';?>
        </center>
    </body>
</html>
