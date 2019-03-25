<?php
	$sql=mysqli_query($connect,"select * from Tintuc where MaTin<10 ");
	$dong=mysqli_fetch_array($sql);
	
?>
<div class="box1">
        	<img src="<?php echo $dong['UrlHinh'] ?>" width="350" height="250" />
            <p class="tieude"><a href="index.php?xem=chitiet&id=<?php echo $dong['MaTin'] ?>"><?php echo $dong['TieuDe'] ?></a></p>
            <p class="tomtat" ><?php echo $dong['TomTat'] ?></p>
        </div>
        <div class="box2">
        	<ul>
            <?php
				while($dong=mysqli_fetch_array($sql)){
			?>
            	<li><a href="index.php?xem=chitiet&id=<?php echo $dong['MaTin'] ?>">
                <?php echo $dong['TieuDe'] ?>
                </a></li>
               <?php
				}
			   ?>
            </ul>
        </div>
 <div class="clear"></div>