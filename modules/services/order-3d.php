<?php 
	include $_SERVER['DOCUMENT_ROOT'] ."/config/db.php";

	if (isset($_POST) and $_SERVER["REQUEST_METHOD"]=="POST") {
		$sql = "INSERT INTO orders_3d (category_id, user_id, model, description, size_model, scale, accuracy, material, platform, packaging) VALUES ( 1, '" . $_COOKIE['polzovatel_id'] . "' , '" . $_POST['model'] . "' , '" . $_POST['description'] . "' , '" . $_POST['size_model'] . "' , '" . $_POST['scale'] . "' , '" . $_POST['accuracy'] . "' , '" . $_POST['material'] . "' , '" . $_POST['platform'] . "' , '" . $_POST['packaging'] . "')";
		if (mysqli_query($conn, $sql)) {
     		echo "New record created successfully";
     	} else {
     		 echo "Error: " . $sql . "<br>" . mysqli_error($conn);
     	}
	}
 ?>