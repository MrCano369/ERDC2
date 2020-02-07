<?php
$id = $_POST['id'];
$con = mysqli_connect("localhost","id8994286_cano","123454321","id8994286_datos") or die ("Error1");
if (mysqli_query($con, "update fichas2 set seccion = 0 where id = $id")){
	echo true;
}
else{
	echo false;
}
?>