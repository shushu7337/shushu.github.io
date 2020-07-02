<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!-- FONT -->
    <link href="https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Bilbo+Swash+Caps&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Autour+One&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@500&display=swap" rel="stylesheet">
    <!-- FONTAWESOME -->
    <script src="https://kit.fontawesome.com/7b3164b4a9.js" crossorigin="anonymous"></script>

    <title>SHU Zone</title>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrap-grid.css">
    <link rel="stylesheet" href="css/bootstrapreboot.css">
    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/admin-style.css" />
  </head>

  <body>
    <div id="page-wraper">
      <!-- Sidebar Menu -->
      <div class="responsive-nav">
        <i class="fa fa-bars" id="menu-toggle"></i>
        <div id="menu" class="menu">
          <i class="fa fa-times" id="menu-close"></i>
          <div class="container">
            <div class="t-image">
              <a href="#"><img src="assets/images/LOGO-USING.png" alt="" /></a>
            </div>
            <div class="image">
            </div>
            <h4 class="name">後臺管理</h4>
            <nav class="main-nav" role="navigation">
              <ul class="main-menu">
                <li><a href="?do=res_admin">登入者帳號管理</a></li>
                <li><a href="?do=res_profile">個人資料管理</a></li>
                <li><a href="?do=res_edu_exp">學歷管理</a></li>
                <li><a href="?do=res_work_exp">工作經歷管理</a></li>
                <li><a href="?do=res_skills">技能管理</a></li>
                <li><a href="?do=res_portfolio">作品集管理</a></li>
                <li><a href="index.html">返回</a></li>
              </ul>
            </nav>
         
         
            <div class="copyright-text">
              <span>Copyright 2020 SHU Design</span>
              <span class="login"><a href="front/login.php">LOGIN</a></span>
              
            </div>
          </div>
        </div>
      </div>

    </div>
    <div class="di">
      <button onclick="location.replace(&#39;api/logout.php&#39;)" class="btn btn-dark mb-5  py-2">管理登出</button>
      <?php 
              $do=(!empty($_GET['do']))?$_GET['do']:'res_admin';
              $file='backend/'.$do.".php";
              //echo $file;
			// 判斷檔案是否存在
			if(file_exists($file)){
                  include $file;
              }else{
                  include 'backend/res_admin.php';
              }
			?>
    </div>
  </body>
</html>
