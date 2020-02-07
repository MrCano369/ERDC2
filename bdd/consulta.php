<?php
$sql = $_POST['sql'];
$clave = $_POST['clave'];
$con = mysqli_connect("localhost","id8994286_cano",$clave,"id8994286_datos") or die(json_encode(1));
$result = mysqli_query($con, $sql) or die(json_encode(2));

$array = array();
while($row = mysqli_fetch_array($result)){
	array_push($array, $row);
}
echo json_encode($array);
?>