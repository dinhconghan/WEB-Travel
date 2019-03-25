<?php 
	$sql="select * from loaitintuc where MaLTT='$_GET[id]'";
	$loaitin=mysqli_query($connect,$sql);
	$dong=mysqli_fetch_array($loaitin); 
?>
<form action="modules/loaitin/xuly.php?id=<?php echo $dong['MaLTT'] ?>" method="post">
<div class="content-left">
<table width="200" border="1">
  <tr>
    <td colspan="2"><div align="center">Sửa loại tin</div></td>
  </tr>
  <tr>
    <td>Tên loại tin</td>
    <td><label>
      <input type="text" name="TenLTT" id="TenLTT" value="<?php echo $dong['TenLTT'] ?>">
    </label></td>
  </tr>
  <tr>
    <td>Trạng thái</td>
    <td><label>
      <select name="AnHien" id="AnHien">
      <?php
	  if($dong['AnHien']=='Hiển thị'){
	  ?>
        <option value="1" selected>Hiển thị</option>
        <option value="0">Không hiển thị</option>
        <?php
	  }else{
		?>
         <option value="1" >Hiển thị</option>
        <option value="0" selected>Không hiển thị</option>
        <?php
	  }
		?>
      </select>
    </label></td>
  </tr>
  
  <tr>
    <td colspan="2"><div align="center">
      <input type="submit" name="sua" id="sua" value="Sửa">
    </div></td>
  </tr>
</table>
</div>
</form>