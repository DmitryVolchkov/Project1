<?php 
include $_SERVER['DOCUMENT_ROOT']."/config/db.php";

if (isset($_GET["id"])){
    $sql = "DELETE FROM `orders_vr` WHERE `orders_vr`.`id` = '" . $_GET["id"] . "'";

    $result = $conn->query($sql);
	echo "<script>alert(\"Услуга удалена\");</script>";
    echo "<meta http-equiv='refresh' content='0; url=http://smart.local/admin/modules/orders.php'>";
}
?>