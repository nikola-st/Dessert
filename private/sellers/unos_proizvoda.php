<?php

include '../../prijavljen.inc';
require '../../common.inc';

if($_POST){
    
    $idKategorije = $_POST['IDKategorije'];
    $naziv = $_POST['nazivProizvoda'];
    $cena = $_POST['cena'];
    
    
    function upload_file(){
        $target_dir = "artikli/";
        $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
        $uploadOk = 1;
        $imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
        // Check if image file is a actual image or fake image
        if(isset($_POST["submit"])) {
            $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
            if($check !== false) {
                echo "File is an image - " . $check["mime"] . ".";
                $uploadOk = 1;
            } else {
                echo "File is not an image.";
                $uploadOk = 0;
            }
        }
    }
    upload_file();
    $slika = $_FILES["file"]["name"];
    
    $sql = "INSERT INTO proizvod (nazivProizvoda, IDKategorije, cena, slika) VALUES ('$naziv', '$idKategorije', '$cena', '$slika')";
    if($con->query($sql)===true){
        header("Location: kontrolna_tabla.php?obavestenje=Uspesno ste dodali proizvod!");
    }else{        
        echo "Greska: ".$con->error;
        
    }
    
    $con->close();
}