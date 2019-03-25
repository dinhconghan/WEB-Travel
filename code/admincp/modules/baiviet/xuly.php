<?php
	include('../config.php');
	$TieuDe=$_POST['TieuDe'];
	$TomTat=$_POST['TomTat'];
	$NoiDung=$_POST['NoiDung'];
	$loaitintuc=$_POST['loaitintuc'];
	$AnHien=$_POST['AnHien'];
	$id=$_GET['id'];
	if(isset($_POST['them'])){
		//them loai tin
		$tenanh=$_FILES['UrlHinh']['name'];
		if($tenanh!=''){
		$time=date('Ymdhis');
		$tenanh=$time.$tenanh;
		$dich='../../../uploads/'.$tenanh;
		copy($_FILES['UrlHinh']['tmp_name'],$dich);
		$dich=substr($dich,9);
		}
		$sql="insert into Tintuc(TieuDe,UrlHinh,TomTat,NoiDung,MaLTT,AnHien)
		values('$TieuDe','$dich','$TomTat','$NoiDung','$loaitintuc','$AnHien')";
		mysql_query($sql);
		header('location:../../index.php?quanly=Tintuc&ac=them');
	}elseif(isset($_POST['sua'])){
		//sua loai tin
		$tenanh=$_FILES['UrlHinh']['name'];
		if($tenanh!=''){
		$time=date('Ymdhis');
		$tenanh=$time.$tenanh;
		$dich='../../../uploads/'.$tenanh;
		copy($_FILES['UrlHinh']['tmp_name'],$dich);
		$dich=substr($dich,9);
		$sql="update Tintuc set TieuDe='$TieuDe',UrlHinh='$dich',TomTat='$TomTat',NoiDung='$NoiDung',MaLTT='$loaitintuc',AnHien='$AnHien'
		where MaTin='$id'";
		//layanh
		$layanh="select UrlHinh from Tintuc where MaTin='$id'";
		$Tintuc=mysql_query($layanh);
		$dong=mysql_fetch_array($Tintuc);
		if($dong['UrlHinh']!='')
			unlink("../../../".$dong['UrlHinh']);
		}else{
			$sql="update Tintuc set TieuDe='$TieuDe',NoiDung='$NoiDung',TomTat='$TomTat',MaLTT='$loaitintuc',AnHien='$AnHien'
			where MaTin='$id'";
		}
		mysql_query($sql);
		header('location:../../index.php?quanly=Tintuc&ac=sua&id='.$id);
	}else{
		//xoa loai tin
		$sql="delete from Tintuc where MaTin='$id' ";
		mysql_query($sql);
		header('location:../../index.php?quanly=Tintuc&ac=them');
		
	}
?>