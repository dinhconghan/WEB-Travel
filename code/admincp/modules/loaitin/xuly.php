<?php
	include('../config.php');
	$TenLTT=$_POST['TenLTT'];
	$AnHien=$_POST['AnHien'];
	$thutu=$_POST['thutu'];
	$id=$_GET['id'];
	if(isset($_POST['them'])){
		//them loai tin
		$sql="insert into loaitintuc(TenLTT,AnHien) values('$TenLTT','$AnHien')";
		mysqli_query($connect,$sql);
		header('location:../../index.php?quanly=loaitin&ac=them');
	}elseif(isset($_POST['sua'])){
		//sua loai tin
		$sql="update loaitintuc set TenLTT='$TenLTT',AnHien='$AnHien'
		where MaLTT='$_GET[id]'";
		mysqli_query($connect,$sql);
		header('location:../../index.php?quanly=loaitin&ac=sua&id='.$id);
	}else{
		//xoa loai tin
		$sql="delete from loaitintuc where MaLTT='$id'";
		mysqli_query($connect,$sql);
		header('location:../../index.php?quanly=loaitin&ac=them');
	}
?>