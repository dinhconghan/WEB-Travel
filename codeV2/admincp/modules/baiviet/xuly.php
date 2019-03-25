<?php
	include('../config.php');
	$tenbaiviet=$_POST['tenbaiviet'];
	$tomtat=$_POST['tomtat'];
	$noidung=$_POST['noidung'];
	$loaitin=$_POST['loaitin'];
	$trangthai=$_POST['trangthai'];
	$thutu=$_POST['thutu'];
	$id=$_GET['id'];
	if(isset($_POST['them'])){
		//them loai tin
		$tenanh=$_FILES['anhminhhoa']['name'];
		if($tenanh!=''){
		$time=date('Ymdhis');
		$tenanh=$time.$tenanh;
		$dich='../../../uploads/'.$tenanh;
		copy($_FILES['anhminhhoa']['tmp_name'],$dich);
		$dich=substr($dich,9);
		}
		$sql="insert into baiviet(tenbaiviet,anhminhhoa,tomtat,noidung,idloaitin,trangthai,thutu)
		values('$tenbaiviet','$dich','$tomtat','$noidung','$loaitin','$trangthai','$thutu')";
		mysql_query($sql);
		header('location:../../index.php?quanly=baiviet&ac=them');
	}elseif(isset($_POST['sua'])){
		//sua loai tin
		$tenanh=$_FILES['anhminhhoa']['name'];
		if($tenanh!=''){
		$time=date('Ymdhis');
		$tenanh=$time.$tenanh;
		$dich='../../../uploads/'.$tenanh;
		copy($_FILES['anhminhhoa']['tmp_name'],$dich);
		$dich=substr($dich,9);
		$sql="update baiviet set tenbaiviet='$tenbaiviet',anhminhhoa='$dich',tomtat='$tomtat',noidung='$noidung',idloaitin='$loaitin',trangthai='$trangthai',thutu='$thutu'
		where idbaiviet='$id'";
		//layanh
		$layanh="select anhminhhoa from baiviet where idbaiviet='$id'";
		$baiviet=mysql_query($layanh);
		$dong=mysql_fetch_array($baiviet);
		if($dong['anhminhhoa']!='')
			unlink("../../../".$dong['anhminhhoa']);
		}else{
			$sql="update baiviet set tenbaiviet='$tenbaiviet',noidung='$noidung',tomtat='$tomtat',idloaitin='$loaitin',trangthai='$trangthai',thutu='$thutu'
			where idbaiviet='$id'";
		}
		mysql_query($sql);
		header('location:../../index.php?quanly=baiviet&ac=sua&id='.$id);
	}else{
		//xoa loai tin
		$sql="delete from baiviet where idbaiviet='$id' ";
		mysql_query($sql);
		header('location:../../index.php?quanly=baiviet&ac=them');
		
	}
?>