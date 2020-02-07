<?php
function redimensionar_imagen($rutaimg, $newx, $newy){
	$ext = strtolower(end(explode(".", $rutaimg)));
	if($ext == "jpg" || $ext == "jpeg")
		$imagen = imagecreatefromjpeg($rutaimg);
	elseif($ext == "png")
		$imagen = imagecreatefrompng($rutaimg);

	$x = imagesx($imagen);
	$y = imagesy($imagen);

	$img2 = imagecreatetruecolor($newx, $newy);
	imagecopyresized($img2, $imagen, 0, 0, 0, 0, $newx, $newy, $x, $y);
	return $img2;
}

$imagen_optimizada = redimensionar_imagen('Imgs/img_23.PNG',100,100);
//imagepng($imagen_optimizada);
imagepng(imagecreatefrompng('Imgs/img_23.PNG'));
?>