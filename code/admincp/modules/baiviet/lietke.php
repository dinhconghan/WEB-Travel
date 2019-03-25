<?php
	$sql="select MaTin,TieuDe,Tintuc.UrlHinh,Tintuc.TomTat,NoiDung,Loaitintuc.TenLTT,Tintuc.AnHien
   from Tintuc,Loaitintuc where loaitintuc.MaLTT=Tintuc.MaLTT ";
	$tintuc=mysqli_query($connect,$sql);
?>
<div class="content-right">
  <table width="426" border="1">
    <tr>
      <td>ID</td>
      <td>Tên bài viết</td>
      <td>Ảnh minh họa</td>
      <td>Loại tin</td>
      <td>Trạng thái</td>
      <td colspan="2">Quản lý</td>
    </tr>
    <?php
      $i=0;
      while($dong=mysqli_fetch_array($tintuc)){
        ?>
    <tr>
      
      <td><?php echo $i; ?></td>
      <td style="background:#0FF"><?php echo $dong['TieuDe']?></td>
      <td><img src="../<?php echo $dong['UrlHinh'] ?>" width="30" height="30" /></td>
      <td style="background:#0FF"><?php echo $dong['TenLTT']?></td>
      <td><?php echo $dong['AnHien']?></td>
      <td><a href="index.php?quanly=baiviet&ac=sua&id=<?php echo $dong['MaTin'] ?>">Sửa</a></td>
      <td><a href="modules/tintuc/xuly.php?xoa=baiviet&id=<?php  echo $dong['MaTin']?>">Xóa</a></td>
    </tr>
    <?php
    $i++;    }     ?>
  </table>
</div>
<div class="clear"></div>