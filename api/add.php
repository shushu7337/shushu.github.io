<?php
include_once "../base.php";
$table=$_POST['table'];
$db=new DB($table);

// 先給予一個data的空陣列讓他做暫存;
$data=[];
if(!empty($_FILES['img']['tmp_name'])){
    $filename=$_FILES['img']['name'];
    move_uploaded_file($_FILES['img']['tmp_name'],"../pic/".$filename);
    // 如果檔案上傳成功的話,就放到data陣列裡面
    $data['img']=$filename;
}

// 改成switch做判斷因應admin沒有相對應欄位
switch($table){

    case "res_edu_exp":
        $data['edu_name']=$_POST['edu_name'];
        $data['edu_dept']=$_POST['edu_dept'];
        $data['edu_date']=$_POST['edu_date'];
        $data['edu_con']=$_POST['edu_con'];
        $data['sh']=0;
    break;

    case "res_admin":
        $data["acc"]=$_POST['acc'];
        $data["pw"]=$_POST['pw'];
    break;
    
    case "res_work_exp":
        $data['ser_name']=$_POST['ser_name'];
        $data['ser_date']=$_POST['ser_date'];
        $data['ser_con']=$_POST['ser_con'];
        $data['ser_title']=$_POST['ser_title'];
        $data['sh']=0;
    break;
    
    case "res_jsc":
        $data['item']=$_POST['item'];
        $data['content']=$_POST['content'];
        $data['sh']=0;
    break;

    case "res_intro":
        $data['intro']=$_POST['intro'];
        $data['sh']=0;
    break;

    case "res_skills":
        $data['web']=$_POST['web'];
        $data['graphic']=$_POST['graphic'];
        $data['others']=$_POST['others'];
        $data['sh']=0;
    break;
    
    case "res_portfolio":
        $data["title"]=$_POST['title'];
        $data["point"]=$_POST['point'];
        $data["type"]=$_POST['type'];
        $data["sh"]=0;
    break;

    default:
    $data['sh']=1;

}



// 直接做儲存$data
$db->save($data);
// 從哪個table來回到哪個table
to("../admin.php?do=$table");

?>