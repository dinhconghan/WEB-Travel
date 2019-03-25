<form action="modules/loaitin/xuly.php" method="post">
<div class="content-left">
<table width="200" border="1">
  <tr>
    <td colspan="2"><div align="center">Thêm loại tin</div></td>
  </tr>
  <tr>
    <td>Tên loại tin</td>
    <td><label>
      <input type="text" name="TenLTT" id="TenLTT">
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