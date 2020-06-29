<?php include_once "base.php";?>
<!DOCTYPE html
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>卓越科技大學校園資訊系統</title>
    <!-- <link rel="stylesheet" href="css/style.css" /> -->
    <link rel="stylesheet" href="css/bootstrap.css">    
    <style>
        .sidebar{
            background:#D9D9D9;
            width:30%;
            height:100%;
        }
    </style>
</head>

<body>
    <div id="ms" class="sidebar">
            <div id="lf" style="float:left;" >
                <div id="menuput" class="dbor">
                    <!--主選單放此-->
                    <span class="t botli">後台管理選單</span>
                    <a style="color:#000;"
                        href="admin.php?do=title">
                        <div class="mainmu">
                            網站標題管理 </div>
                    </a>
                    <a style="color:#000;" href="?do=ad">
                        <div class="mainmu">
                            動態文字廣告管理 </div>
                    </a>
                    <a style="color:#000;" href="?do=mvim">
                        <div class="mainmu">
                            動畫圖片管理 </div>
                    </a>
                    <a style="color:#000;" href="?do=image">
                        <div class="mainmu">
                            校園映象資料管理 </div>
                    </a>
                    <a style="color:#000;" href="?do=total">
                        <div class="mainmu">
                            進站總人數管理 </div>
                            
                    </a>
                    <a style="color:#000;" href="?do=bottom">
                        <div class="mainmu">
                            頁尾版權資料管理 </div>
                    </a>
                    <a style="color:#000;" href="?do=news">
                        <div class="mainmu">
                            最新消息資料管理 </div>
                    </a>
                    <a style="color:#000;" href="?do=admin">
                        <div class="mainmu">
                            管理者帳號管理 </div>
                    </a>
                    <a style="color:#000;" href="?do=menu">
                        <div class="mainmu">
                            選單管理 </div>
                    </a>
                </div>
            </div>  
        </div>    
        <div class="di"
                style="height:540px; border:#999 1px solid; width:76.5%; margin:2px 0px 0px 0px; float:left; position:relative; left:20px;">
                <!--正中央-->
                <table width="100%">
                    <tbody>
                        <tr>
                            <td style="width:70%;font-weight:800; border:#333 1px solid; border-radius:3px;"
                                class="cent"><a href="?do=admin" style="color:#000; text-decoration:none;">後台管理區</a>
                            </td>
                            <td><button onclick="document.cookie=&#39;user=&#39;;location.replace(&#39;?&#39;)"
                                    style="width:99%; margin-right:2px; height:50px;">管理登出</button></td>
                        </tr>
                    </tbody>
                </table>
                <?php 

                        $do=(!empty($_GET['do']))?$_GET['do']:'title';
                        $file='backend/'.$do.".php";
                        //echo $file;
				        // 判斷檔案是否存在
				        if(file_exists($file)){
                            include $file;
                        }else{

                            include 'backend/title.php';
                        }
                        
				?>
            </div>
</body>

</html>