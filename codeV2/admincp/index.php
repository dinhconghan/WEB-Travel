
<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>ADMIN</title>

    <link rel="shortcut icon" href="Content/Images/ico.png" />

    <link href="Content/Admin/StyleSheet.css" rel="stylesheet" />
    <script src="Content/Admin/jquery.js"></script>

    
    <script type="text/javascript">
        $(document).ready(function () {
            
            $(".number_ne").keydown(function (event) {
                if (event.keyCode == 46 || event.keyCode == 8 || event.keyCode == 9) {//46:DELETE ,8:BACKSPACE ,9:TAB 
                    return;//3 phím trên cho sử dụng bình thường
                }
                else {// P/s:48->57 là phím từ 0 đến 9(k sử dụng Numlock), còn 96->105 là có sd Numlock (ở dưới bỏ lại 37,38,39,40 là 4 phím mũi tên)
                    if ((event.keyCode >= 0 && event.keyCode < 37) || (event.keyCode > 40 && event.keyCode < 48) || (event.keyCode > 57 && event.keyCode < 96) || event.keyCode > 105) {
                        event.preventDefault();//Chặn những phím trên
                    }
                    if (event.shiftKey) {//Chặn các phím Shift + .., ví dụ :!#$%^&*()_+:"?
                        if (event.keyCode >= 48 || event.keyCode <= 57) {
                            event.preventDefault();//Chặn những phím trên
                        }
                    }
                }
            });
        });
    </script>
</head>

<body>
    <div id="header">
    	<?php
    		include('modules/config.php');
    		include('modules/header.php');
    	?>
        
    </div>

    <div id="bgrepeart">
        <div id="bg">
            <div id="body">
                <div class="content">
	
			    	<?php
                        include('modules/menu.php');
    					include('modules/content.php');
					?>
   
				</div>
            </div>

        </div>
    </div>

    <div id="footer">
        <?php
			include('modules/footer.php');
		?>
    </div>
</body>
</html>

