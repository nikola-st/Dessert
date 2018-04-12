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
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <script src="../funkcije.js" type="text/javascript"></script>
    </head>
    <body class="container">
    <?php include 'navigation.php';?>
        <center>
            <h4>Lista proizvoda</h4><br>
            <?php if($_GET['obavestenje']){
                echo"<span class='label label-info'>" .$_GET['obavestenje']. "</span>";
            }?> 
        </center>
                <?php 
                    require 'common.inc';
                    $db_handle = new DBController();
                    $product_array = $db_handle->runQuery("SELECT * FROM proizvod");
                 
                    if(!empty($product_array)){
                        foreach($product_array as $key=>$value){
                ?>
          
            <div class="col-lg-3">
                <div class="product-item">
                    <form method="post" action="private/customers/shopping.php?action=add&code=<?php echo $product_array[$key]["IDProizvoda"]; ?>">
                        <div class="product-image"><img src = "private/sellers/artikli/<?php echo $product_array[$key]["slika"];?>"></div>
                        <div><strong><?php echo $product_array[$key]["nazivProizvoda"]; ?></strong></div>
                        <div class="product-price"><?php echo $product_array[$key]["cena"]."&nbsp;dinara / 100 gr"; ?></div>
                        <div><input type="text" name="kolicina" value="1" size="2" /><input type="submit" value="Dodaj u korpu" class="btnAddAction" /></div>
                    </form>
                </div>
            </div>
                <?php        
                        }
                    }
                ?>
    </body>
</html>