<?php include_once "base.php";?>
<!DOCTYPE html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title></title>
    <link rel="stylesheet" href="./css/bootstrap.css">
    <link rel="stylesheet" href="./js/jquery-3.4.1.min.js">   
    <link rel="stylesheet" href="./js/js.js">   
    <link rel="stylesheet" href="./js/bootstrap.js">   
</head>

<body>
<div>個人資料</div>
<div>學歷</div>
<div>工作經歷</div>
<div>作品集</div>
<?php
        // 如果session是空的 就顯示登入，如果else顯示返回管理
            if(empty($_SESSION['login'])){
        ?>
        
        <button style="width:20%;"
            onclick="lo(&#39;?do=login&#39;)">管理登入</button>
        <?php
            }else{
        ?>
        <button style="width:20%;"
            onclick="lo(&#39;admin.php?&#39;)">返回管理</button>
        <?php
            }
        ?>
<?php 
		$do=(!empty($_GET['do']))?$_GET['do']:'main';
		$file='front/'.$do.".php";
		// 判斷檔案是否存在
		if(file_exists($file)){
			include $file;
		}else{
			include 'front/main.php';
		}
		?>
        
</script>
</body>

</html>