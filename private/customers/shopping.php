
<?php error_reporting(0);?>
<?php include "../../prijavljen.inc";?>
<?php require '../../common.inc';?>
<?php

session_start();

$db_handle = new DBController();

if(!empty($_GET["action"])) {
switch($_GET["action"]) {
	case "add":
		if(!empty($_POST["kolicina"])) {
			$productByCode = $db_handle->runQuery("SELECT * FROM proizvod WHERE IDProizvoda='" . $_GET["code"] . "'");
			$itemArray = array($productByCode[0]["IDProizvoda"]=>array('nazivProizvoda'=>$productByCode[0]["nazivProizvoda"], 'IDProizvoda'=>$productByCode[0]["IDProizvoda"], 'kolicina'=>$_POST["kolicina"], 'cena'=>$productByCode[0]["cena"]));
			
			if(!empty($_SESSION["cart_item"])) {
				if(in_array($productByCode[0]["IDProizvoda"],array_keys($_SESSION["cart_item"]))) {
					foreach($_SESSION["cart_item"] as $k => $v) {
							if($productByCode[0]["IDProizvoda"] == $k) {
								if(empty($_SESSION["cart_item"][$k]["kolicina"])) {
									$_SESSION["cart_item"][$k]["kolicina"] = 0;
								}
								$_SESSION["cart_item"][$k]["kolicina"] += $_POST["kolicina"];
							}
					}
				} else {
					$_SESSION["cart_item"] = array_merge($_SESSION["cart_item"],$itemArray);
				}
			} else {
				$_SESSION["cart_item"] = $itemArray;
			}
		}
	break;
	case "remove":
		if(!empty($_SESSION["cart_item"])) {
			foreach($_SESSION["cart_item"] as $k => $v) {
					if($_GET["IDProizvoda"] == $k)
						unset($_SESSION["cart_item"][$k]);				
					if(empty($_SESSION["cart_item"]))
						unset($_SESSION["cart_item"]);
			}
		}
	break;
	case "empty":
		unset($_SESSION["cart_item"]);
	break;	
    }
}
?>
<HTML>
<HEAD>
<TITLE>Poslasticarnica DESSERT</TITLE>
<link href="../../css/style.css" rel="stylesheet" type="text/css"/>
<link href="../../css/bootstrap.css" rel="stylesheet" type="text/css"/>
</HEAD>
<BODY class="container">
    <?php include '../../navigation.php';?>
<center><br><br>
<div id="shopping-cart">
<div class="txt-heading">Korpa<a id="btnEmpty" href="shopping.php?action=empty">Isprazni korpu</a></div>
<?php
if(isset($_SESSION["cart_item"])){
    $item_total = 0;
?>	
<table class="table-bordered">
<tbody>
<tr>
<th><strong>Naziv</strong></th>
<th><strong>ID proizvoda</strong></th>
<th><strong>Kolicina</strong></th>
<th><strong>Cena</strong></th>
<th><strong>Opcije</strong></th>
</tr>	
<?php		
    foreach ($_SESSION["cart_item"] as $item){
		?>
				<tr>
				<td><strong><?php echo $item["nazivProizvoda"]; ?></strong></td>
				<td><?php echo $item["IDProizvoda"]; ?></td>
				<td><?php echo $item["kolicina"]; ?></td>
				<td><?php echo $item["cena"]."&nbsp;dinara / kg"; ?></td>
				<td><a href="shopping.php?action=remove&code=<?php echo $item["IDProizvoda"]; ?>" class="btnRemoveAction">Izbrisi stavku</a></td>
				</tr>
				<?php
        $item_total += ($item["cena"]*$item["kolicina"]);
		}
		?>

<tr>
<td colspan="5" align=right><strong>Ukupno:</strong> <?php echo $item_total."&nbsp;dinara"; ?></td>
</tr>
</tbody>
</table>
  <?php
}
?>
<br><a class="btn btn-info" href="../../index.php">Nastavi kupovinu</a>&nbsp;&nbsp;<a class="btn btn-info" href="../../index.php">Kupi</a>
</div>
 </center>
        <?php include '../../footer.php';?>
    </body>
</html>
