<?php include '../prijavljen.inc';?>
<?php error_reporting(0);?>

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
    <body>
        <?php include '../navigation.php';?>
        <div align="center">
        <div class="container"><!-- container --> 
            <div class="row"><!-- row --><br>
        <h4 class="alert-info">Logovanje</h4>
        <h4 class="alert-warning">
            <?php 
                if(isset($_GET['pogresniPodaci'])) 
                {
                    echo $_GET['pogresniPodaci'];
                }   
            ?>
        </h4>
        <form name="unos" class="form-horizontal" action=<?php echo "login1.php";?> method='POST' onsubmit="return validacija()">
                  
          <div class="form-group col-sm-offset-4 col-sm-offset-4">
            <label for="username" class="col-sm-4 control-label">Username</label>
              <div class="col-sm-4">
                <input type="text" class="form-control" name="username" id="username"/>
              </div>
          </div>
                  
          <div class="form-group col-sm-offset-4 col-sm-offset-4">
            <label for="password" class="col-sm-4 control-label">Lozinka</label>
              <div class="col-sm-4">
                <input type="password" class="form-control" name="password" id="password"/>
              </div>
          </div>
          <a href="<?php echo "customers/unos_kupca.php" ;?>">New account?</a>
          <button type="submit" class="btn btn-default">Login</button>
          <button type="reset" class="btn btn-default">Odustani</button>
        </form>
    </div><!-- row -->
  </div><!-- container --> 
</div>
<?php include '../footer.php';?>
</body>
</html>