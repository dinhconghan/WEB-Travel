
<form action="modules/baiviet/xuly.php" method="post" enctype="multipart/form-data">
<div class="content-left">
<script src="http://js.nicedit.com/nicEdit-latest.js" type="text/javascript"></script>
<script type="text/javascript">bkLib.onDomLoaded(nicEditors.allTextAreas);</script>
<table width="200" border="1">
  <tr>
    <td colspan="2"><div align="center">Thêm bài viết</div></td>
  </tr>
  <tr>
    <td>Tên bài viết</td>
    <td><label>
      <input type="text" name="TieuDe" id="TieuDe">
    </label></td>
  </tr>
  <tr>
    <td>Ảnh minh họa</td>
    <td><label>
      <input type="file" name="UrlHinh" id="UrlHinh" />
    </label></td>
  </tr>
  <tr>
    <td>Tóm tắt</td>
    <td><label>
      <textarea name="TomTat" id="TomTat" cols="45" rows="5"></textarea>
    </label></td>
  </tr>
  <tr>
    <td>Nội dụng</td>
    <td><label>
      <textarea name="NoiDung" id="NoiDung" cols="45" rows="5"></textarea>
    </label></td>
  </tr>
  <tr>
    <td>Loại tin</td>
    <td><label>
      <select name="loaitintuc" id="loaitintuc">
      <?php
	  $sql="select * from loaitintuc";
	 $loaitintuc= mysql_query($sql);
	  while($dong=mysql_fetch_array($loaitintuc)){
	  ?>
      
      <option value="<?php echo $dong['MaLTT'] ?>"><?php echo $dong['TenLTT'] ?></option>
     <?php
	  }
	 ?>
      </select>
    </label></td>
  </tr>
  <tr>
    <td>Trạng thái</td>
    <td><label>
      <select name="AnHien" id="AnHien">
        <option value="1" selected>Hiển thị</option>
        <option value="0">Không hiển thị</option>
      </select>
    </label></td>
  </tr>
  <tr>
    <td colspan="2"><div align="center">
      <input type="submit" name="them" id="them" value="Thêm">
    </div></td>
  </tr>
</table>
</div>
</form>
