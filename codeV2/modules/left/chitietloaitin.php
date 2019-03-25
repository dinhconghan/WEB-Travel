<?php
	$sql="select * from Tintuc where MaLTT='$_GET[id]'";
	$Tintuc=mysqli_query($connect,$sql);
	
 ?>
<div class="content_left" style="width:auto;">
	<div class="box2 widthloaitin">
        	<ul>
            <?php
			while($dong=mysqli_fetch_array($Tintuc)){
			?>
            	<img src="<?php echo $dong['UrlHinh']  ?>" width="80" height="80"  style="float:left;padding-right: 5px;"/>
            	<li style="list-style:none; font-size:16px">
                    <a href="index.php?xem=chitiet&id=<?php echo $dong['MaTin'] ?>"><?php echo $dong['TieuDe'] ?></a>
                </li></br>
               	<p class="tomtatloaitin"><?php echo $dong['TomTat'] ?></p>
                <div class="clear"></div>
                <?php
			}
				?>
            </ul>
        </div>
</div>