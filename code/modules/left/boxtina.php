<?php 
	$sql="select * from loaitintuc,tintuc 
	where loaitintuc.MaLTT=tintuc.MaLTT and loaitintuc.MaLTT='$dong_loaitin[MaLTT]' LIMIT 5 ";
	$baiviet=mysqli_query($connect,$sql);
	$dong=mysqli_fetch_array($baiviet); 
?>
<div class="content">
	<div class="boxtin">
	<p style="margin-left:5px;"><a href="index.php?xem=loaitintuc&id=<?php echo $dong['MaLTT'] ?>"><?php echo $dong['TenLTT'] ?></a></p>
    </div>
	<div class="content_left " style="width:100%;margin-top:10px;">
    	<div class="box1">
        	<img src="<?php echo $dong['UrlHinh']?>" width="auto" height="250" width="200px" />
            <p class="tieude"><a href="index.php?xem=chitiet&id=<?php echo $dong['MaTin'] ?>"><?php echo $dong['TieuDe'] ?></a></p>
            <p class="tomtat"><?php echo $dong['TomTat'] ?></p>
        </div>
        <div class="box2 margin">
        	<ul>
            <?php
				while($dong=mysqli_fetch_array($baiviet)){
			?>
            	<img src="<?php echo $dong['UrlHinh'] ?>" width="50" height="50"  style="float:left;"/>
            	<li style="list-style:none;"><a href="index.php?xem=chitiet&id=<?php echo $dong['MaTin'] ?>"><?php echo $dong['TieuDe'] ?></a></li>
                <div class="clear"></div>
                <?php
				}
				?>
                
                
            </ul>
        </div>
    </div>
    <!-- Ket thuc content_left -->
    
   <div class="clear"></div>
</div>

<!-- ket thuc content 2 -->