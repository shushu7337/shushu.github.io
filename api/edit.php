<?php
include_once '../base.php';
$table=$_POST['table'];
$db=new DB($table);
foreach($_POST['id'] as $key=>$id){
    if(!empty($_POST['del']) && in_array($id,$_POST['del'])){
        $db->del($id);
    }else{ 
        $row=$db->find($id);

        switch($table){

            case "res_admin":
                $row['acc']=$_POST['acc'][$key];
                $row['pw']=$_POST['pw'][$key];
            break;

            case "res_profile":
                $row['intro']=$_POST['intro'][$key];
                $row['name']=$_POST['name'][$key];
                $row['phone']=$_POST['phone'][$key];
                $row['email']=$_POST['email'][$key];
                $row['birth']=$_POST['birth'][$key];
                $row['location']=$_POST['location'][$key];
            break;

            case "res_edu_exp":
                $row['edu_name']=$_POST['edu_name'][$key];
                $row['edu_dept']=$_POST['edu_dept'][$key];
                $row['edu_date']=$_POST['edu_date'][$key];
                $row['edu_con']=$_POST['edu_con'][$key];
                $row['sh']=(!empty($_POST['sh']) && in_array($id,$_POST['sh']))?1:0;
            break;
            
            case "res_work_exp":
                $row['ser_name']=$_POST['ser_name'][$key];
                $row['ser_title']=$_POST['ser_title'][$key];
                $row['ser_date']=$_POST['ser_date'][$key];
                $row['ser_con']=$_POST['ser_con'][$key];
                $row['sh']=(!empty($_POST['sh']) && in_array($id,$_POST['sh']))?1:0;
            break;
            
            case "res_jsc":
                $row['item']=$_POST['item'][$key];
                $row['content']=$_POST['content'][$key];
                $row['sh']=(!empty($_POST['sh']) && in_array($id,$_POST['sh']))?1:0;
            break;

            case "res_portfolio":
                if(!empty($_POST['img'])){
                    $row['img']=$_POST['img'][$key];
                }
                $row['title']=$_POST['title'][$key];
                $row['point']=$_POST['point'][$key];
                $row['type']=$_POST['type'][$key];
                $row['sh']=(!empty($_POST['sh']) && in_array($id,$_POST['sh']))?1:0;
            break;
            
            case "res_skills":
                $row['web']=$_POST['web'][$key];
                $row['graphic']=$_POST['graphic'][$key];
                $row['others']=$_POST['others'][$key];
                $row['sh']=(!empty($_POST['sh']) && in_array($id,$_POST['sh']))?1:0;
            break;

            case "res_intro":
                $row['intro']=$_POST['intro'][$key];
                $row['sh']=(!empty($_POST['sh']) && in_array($id,$_POST['sh']))?1:0;
            break;
            
            default:
                $row['sh']=(!empty($_POST['sh']) && in_array($id,$_POST['sh']))?1:0;
            break;    
        }
        $db->save($row);
    }
}
to("../admin.php?do=$table");


?>