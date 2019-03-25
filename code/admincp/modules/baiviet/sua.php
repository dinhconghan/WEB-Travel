<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php
 
 $sql="select * from Tintuc where MaTin='$_GET[id]'";
 $tintuc=mysqli_query($connect,$sql);
 $dong=mysqli_fetch_array($tintuc);
?>

<form action="modules/Tintuc/xuly.php?id=<?php echo $dong['MaTin'] ?>" method="post" enctype="multipart/form-data">
<div class="content-left">
<script src="http://js.nicedit.com/nicEdit-latest.js" type="text/javascript"></script>
<script type="text/javascript">bkLib.onDomLoaded(nicEditors.allTextAreas);</script>
<table width="200" border="1">
  <tr>
    <td colspan="2"><div align="center">Sửa bài viết</div></td>
  </tr>
  <tr>
    <td>Tên bài viết</td>
    <td><label>
      <input type="text" name="TieuDe" id="TieuDe" value="<?php echo $dong['TieuDe'] ?>">
    </label></td>
  </tr>
  <tr>
    <td>Ảnh minh họa</td>
    <td><label>
      <input type="file" name="UrlHinh" id="UrlHinh" />
      <img src="../<?php echo $dong['UrlHinh'] ?>" width="85" height="85" />
    </label></td>
  </tr>
  <tr>
    <td>Tóm tắt</td>
    <td><label>
      <textarea name="TomTat" id="TomTat" cols="45" rows="5" >
      	<?php  echo $dong['TomTat']?>
      </textarea>
    </label></td>
  </tr>
  <tr>
    <td>Nội dụng</td>
    <td><label>
      <textarea name="NoiDung" id="NoiDung" cols="45" rows="5">
      	<?php echo $dong['NoiDung'] ?>
      </textarea>
    </label></td>
  </tr>
  <tr>
    <td>Loại tin</td>
    <td><label>
      <select name="loaitintuc" id="loaitintuc">
      <?php
	  $sql="select * from loaitintuc";
	 $loaitintuc= mysql_query($sql);
	  while($dong_loaitintuc=mysql_fetch_array($loaitintuc)){
		  if($dong_loaitintuc['MaLTT']==$dong['MaLTT']){
	  ?>
      
      <option value="<?php echo $dong_loaitintuc['MaLTT'] ?>" selected="selected"><?php echo $dong_loaitintuc['TenLTT'] ?></option>
     <?php
	  }else{
	 ?>
     <option value="<?php echo $dong_loaitintuc['MaLTT'] ?>"><?php echo $dong_loaitintuc['TenLTT']?></option>
     <?php
	  }
	  }
	 ?>
      </select>
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
