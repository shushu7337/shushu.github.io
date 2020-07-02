

<?php
include_once "../base.php";
    $acc=$_POST['acc'];
    $pw=md5($_POST['pw']);
        //hash('md5',$_POST['pw']);
    $chk=count(['acc'=>$acc,'pw'=>$pw]);

    if($chk>=1){
        $_SESSION['admin']=$acc;
        to("../admin.php?do=res_admin");
    }else{
        // to("../front/login.php");
    }

?>