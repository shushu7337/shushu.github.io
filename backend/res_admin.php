<?php include_once "./base.php" ?>
<div>
    <h3 class="bd">管理者帳號管理</h3>
    
    <form method="post" action="api/edit.php">
        <table width="100%">
            <tbody>
                <tr class="yel">
                    <td width="45%">帳號</td>
                    <td width="45%">密碼</td>
                    <td width="10%">刪除</td>
                </tr>
                <?php
                    $table=$do;
                    $db=new DB($table);
                    $rows=$db->all();
                    foreach($rows as $row){
                ?>
                <tr style="text-align: center;">
                    <td><input type="text" style="width:90%" name="acc[]" value="<?=$row['acc'];?>"></td>
                    <td><input type="password" style="width:90%" name="pw[]" value="<?=$row['pw'];?>"></td>
                    <td> <input type="checkbox" name="del[]" value="<?=$row['id'];?>">刪除</td>
                    <!-- 藏值 -->
                    <input type="hidden" name="table" value="<?=$table;?>">
                    <input type="hidden" name="id[]" value="<?=$row['id'];?>">
                </tr>
                <?php
                    }
                ?>
            </tbody>
        </table>
        <div class="container mt-5 ">
            <input class="float-right ml-3 btn btn-outline-info" type="submit" value="修改確定">
            <input class="float-right ml-5 btn btn-outline-info" type="reset" value="重置">
            <button type="button" class="float-right mr-5 btn btn-outline-danger" onclick="op(&#39;#cover&#39;,&#39;#cvr&#39;,&#39;./modal/res_admin.php?table=<?=$table;?>&#39;)">新增管理者帳號</button>
        </div>
    </form>
</div>