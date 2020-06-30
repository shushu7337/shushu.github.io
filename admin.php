<?php include_once "base.php";?>
<!DOCTYPE html
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>卓越科技大學校園資訊系統</title>
    <!-- <link rel="stylesheet" href="css/style.css" /> -->
    <link rel="stylesheet" href="./css/bootstrap.css">
    <link rel="stylesheet" href="./js/jquery-3.4.1.min.js">   
    <link rel="stylesheet" href="./js/js.js">   
    <style>
        *{
            margin:0;
            padding:0;
        }
        .sidebar{
            background:#D9D9D9;
            width:10%;
            height:100%;
            margin-left:10%;
        }
    </style>
</head>

<body>
    <div id="ms" class="sidebar" style="display:inline-block">
            <div id="lf" style="float:left;" >
                <div id="menuput" class="dbor">
                    <!--主選單放此-->
                    <span class="t botli">後台管理選單</span>
                    <a style="color:#000;"
                        href="admin.php?do=profile">
                        <div class="mainmu">
                            個人基本資料管理 </div>
                    </a>
                    <a style="color:#000;" href="?do=portfolio">
                        <div class="mainmu">
                            作品管理 </div>
                    </a>
                    <a style="color:#000;" href="?do=skill">
                        <div class="mainmu">
                            技能管理 </div>
                    </a>
                    <a style="color:#000;" href="?do=work_exp">
                        <div class="mainmu">
                            經歷管理 </div>
                    </a>
                    <a style="color:#000;" href="?do=edu_exp">
                        <div class="mainmu">
                            學歷管理 </div>
                    </a>
                    <a style="color:#000;" href="?do=admin">
                        <div class="mainmu">
                            管理者帳號管理 </div>
                    </a>
                </div>
            </div>  
        </div>    
        <div class="di"
                style="width:60%; margin:auto; display:inline-block;">
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
            </div>
            <script>
            $(".sswww").hover(
                function() {
                    $("#alt").html("" + $(this).children(".all").html() + "").css({
                        "top": $(this).offset().top - 50
                    })
                    $("#alt").show()
                }
            )
            $(".sswww").mouseout(
                function() {
                    $("#alt").hide()
                }
            )
            </script>
</body>

</html>