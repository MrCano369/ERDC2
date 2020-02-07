<?php
$con = mysqli_connect("localhost","id8994286_cano","123454321","id8994286_datos") or die ("Error1");
$result = mysqli_query($con, "select count(*) from fichas") or die ("Error2");
$r = mysqli_fetch_array($result);
echo $r[0];
?>