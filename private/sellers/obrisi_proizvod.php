<?php

require '../../common.inc';
 
if($_GET)
    {
        $id = $_GET['id'];

        $sql = "DELETE FROM proizvod WHERE IDProizvoda = {$id}";

        if($con->query($sql) === true)
            {
            header("Location: kontrolna_tabla.php?obavestenje=Uspesno ste obrisali proizvod!");
            } 
        else 
            {
                echo "Greska : " . $con->error;
            }

        $con->close();
    
    }

