<?php
$con = mysqli_connect("localhost","id8994286_cano","123454321","id8994286_datos") or die ("Error1");
$result = mysqli_query($con, "select count(*) from fichas") or die ("Error2");
$r = mysqli_fetch_array($result);
$id = $r[0]+1;

$esp = $_POST['txtEsp'];
$jap = $_POST['txtJap'];

$name = "";
if ($_FILES['fulImg']['name'] != null) {
	$name = "Imgs/img_".$id.".".end(explode(".", $_FILES['fulImg']['name']));
	if(move_uploaded_file($_FILES['fulImg']['tmp_name'], $name)){
		if(mysqli_query($con, "insert into fichas(esp, jap, img) values('$esp', '$jap', '$name')")){
			echo 1;
		}else{
			echo 0;
		}
	}else{
		echo 0;
	}
}else{
	if(mysqli_query($con, "insert into fichas(esp, jap, img) values('$esp', '$jap', '$name')")){
		echo 1;
	}else{
		echo 0;
	}
}
mysqli_close($con);
?>