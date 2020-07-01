<!-- 來判斷是否登入 -->
<!-- index檔已經載入了include檔 -->
<?php
// 拿到acc & pw
if(!empty($_POST['acc']) && !empty($_POST['pw'])){
    $admin=new DB("admin");
    $acc=$_POST['acc'];
    $pw=$_POST['pw'];
    $chk=$admin->count(['acc'=>$acc,'pw'=>$pw]);
    if($chk>0){
        to("admin.php");
        $_SESSION['login']=$acc;
    }else{
        echo "<script>alert('帳號或密碼錯誤')</script>";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>管理者登入</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <!-- fontawesome -->
    <script src="https://kit.fontawesome.com/7b3164b4a9.js" crossorigin="anonymous"></script>
    <!-- css -->
    <link rel="stylesheet" href="../assets/css/login.scss">
</head>
<body>
<form class="login-form">
  <p class="login-text">
    <i class="fas fa-user fa-4x"></i>
    </span>
  </p>
  <input type="text" class="login-username" autofocus="true" required="true" placeholder="Account" />
  <input type="password" class="login-password" required="true" placeholder="Password" />
  <div>
    <input type="submit" name="Login" value="Login" class="login-submit" />
    <input type="submit" name="Login" value="InSign" class="login-submit" />
</div>
</form>
<a href="#" class="login-forgot-pass">forgot password?</a>
<div class="underlay-photo"></div>
<div class="underlay-black"></div> 
</body>
</html>