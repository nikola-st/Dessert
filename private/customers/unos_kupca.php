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
<div align="center">
  <div class="container"><!-- container --> 
    <div class="row"><!-- row -->
        <h4 class="alert-info">Registracija novog kupca</h4>
        <form class="form-horizontal" action="unos_kupca_baza.php" method='POST'>
                   
          <div class="form-group col-sm-offset-4 col-sm-offset-4">
            <label for="idP" class="col-sm-4 control-label">Ime</label>
              <div class="col-sm-4">
                <input type="text" class="form-control" name="Ime" id="idP"/>
              </div>
          </div>
                  
          <div class="form-group col-sm-offset-4 col-sm-offset-4">
            <label for="prezime" class="col-sm-4 control-label">Prezime</label>
              <div class="col-sm-4">
                <input type="text" class="form-control" name="prezime" id="prezime"/>
              </div>
          </div>
        
          <div class="form-group col-sm-offset-4 col-sm-offset-4">
            <label for="datum" class="col-sm-4 control-label">Username</label>
              <div class="col-sm-4">
                <input type="text" class="form-control" name="Username" id="datum"/>
              </div>
          </div>
                    
          <div class="form-group col-sm-offset-4 col-sm-offset-4">
            <label for="password" class="col-sm-4 control-label">Password</label>
              <div class="col-sm-4">
                  <input type="password" class="form-control" name="Password" id="password"/>
              </div>
          </div>
          
          <div class="form-group col-sm-offset-4 col-sm-offset-4">
            <label for="adresa" class="col-sm-4 control-label">Adresa</label>
              <div class="col-sm-4">
                  <input type="text" class="form-control" name="Adresa" id="adresa"/>
              </div>
          </div>
            
          <div class="form-group col-sm-offset-4 col-sm-offset-4">
            <label for="telefon" class="col-sm-4 control-label">Telefon</label>
              <div class="col-sm-4">
                <input type="text" class="form-control" name="Telefon" id="telefon"/>
              </div>
          </div>
            
          <div class="form-group col-sm-offset-4 col-sm-offset-4">
            <label for="email" class="col-sm-4 control-label">Email</label>
              <div class="col-sm-4">
                  <input type="email" class="form-control" name="Email" id="email"/>
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
