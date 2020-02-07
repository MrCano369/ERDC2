<?php
$c = $_POST['c'];
$d = $_POST['d'];
$f = $_POST['f'];

$con = mysqli_connect("localhost","id8994286_cano","123454321","id8994286_datos") or die ("Error1");
mysqli_query($con, "insert into banco(cantidad, descripcion, fecha) values($c, '$d', '$f')") or die ("Error2");
?>