<?php
	$tenmaychu='localhost';
	$taikhoan='root';
	$matkhau='';
	$csdl='php-travel-store';
	$connect=mysqli_connect($tenmaychu,$taikhoan,$matkhau)or die('Connect fail');
	mysqli_set_charset($connect,'utf8');
	mysqli_select_db($connect,$csdl);
?>