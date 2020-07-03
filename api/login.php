

<?php
include_once "../base.php";
    $admin=new DB("res_admin");
    $acc=$_POST['acc'];
    $pw=md5($_POST['pw']);
        //hash('md5',$_POST['pw']);
    $chk=count(['acc'=>$acc,'pw'=>$pw]);

    if($chk>0){
        $_SESSION['login']=$acc;
        to("../admin.php?do=res_admin");
    }else{
        to("../front/login.php");
    }
?>

<?php
// 拿到acc & pw
// if(!empty($_POST['acc']) && !empty($_POST['pw'])){
//     $admin=new DB("admin");
//     $acc=$_POST['acc'];
//     $pw=$_POST['pw'];
//     $chk=$admin->count(['acc'=>$acc,'pw'=>$pw]);
//     if($chk>0){
//         to("admin.php");
//         $_SESSION['login']=$acc;
//     }else{
//         echo "<script>alert('帳號或密碼錯誤')</script>";
//     }
// }
?>