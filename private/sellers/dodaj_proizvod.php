<!DOCTYPE html>
<html>
<head>
    <title>Poslasticarnica DESSERT</title>
    
    <!--Bootstrap css-->
    <link href="../../css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
    <link href="../../css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
</head>
<body>
  <?php include '../../navigation.php'; ?>
  <center>
      <h2>Proizvodi</h2>
      <a class="btn btn-info" href="kontrolna_tabla.php" role="button">Izlistaj sve proizvode</a><br><br>
  </center> 
<div align="center">
  <div class="container"><!-- container --> 
    <div class="row"><!-- row -->
        <h4 class="alert-info">Dodavanje proizvoda</h4>
        <form class="form-horizontal" action="unos_proizvoda.php" method='POST'>
                   
          <div class="form-group col-sm-offset-4 col-sm-offset-4">
            <label for="idP" class="col-sm-4 control-label">Naziv proizvoda</label>
              <div class="col-sm-4">
                <input type="text" class="form-control" name="nazivProizvoda" id="idP"/>
              </div>
          </div>
                  
          <div class="form-group col-sm-offset-4 col-sm-offset-4">
            <label for="lekar" class="col-sm-4 control-label">ID kategorije</label>
              <div class="col-sm-4">
                
                <select class="form-control" name="IDKategorije"><option value="
                <?php
                require '../../common.inc';
    
                $sql = "SELECT idKategorije, nazivKategorije FROM kategorija";
                $result = $con->query($sql);
                while ($row = $result->fetch_assoc()) {

                  unset($id, $name);
                  $id = $row['idKategorije'];
                  $name = $row['nazivKategorije']; 
                  echo '<option value="'.$id.'">'.$name.'</option>';
                 
                } 
                ?>"/></select>

              </div>
          </div>
        
          <div class="form-group col-sm-offset-4 col-sm-offset-4">
            <label for="datum" class="col-sm-4 control-label">Cena</label>
              <div class="col-sm-4">
                <input type="text" class="form-control" name="cena" id="datum"/>
              </div>
          </div>
                    
          <div class="form-group col-sm-offset-4 col-sm-offset-4">
            <label for="fileToUpload" class="col-sm-4 control-label">Slika</label>
              <div class="col-sm-4">
                  <img src=\"artikli/<?php $path_do_slike?>"/></a><br>
                <input type="file" class="form-control" name="fileToUpload" id="fileToUpload"/>
                
              </div>
          </div>
          <button type="submit" class="btn btn-default">Unesi</button>
          <button type="reset" class="btn btn-default">Odustani</button>
        </form>

    </div><!-- row -->
  </div><!-- container --> 
</div>
</body>
</html>
