<?php include_once "./base.php" ?>
<div>
    <h3 class="bd">技能管理</h3>
   
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
        <table style="margin-top:40px; width:70%;">
            <tbody>
                <tr>
                    <td width="200px"><input type="button"
                            onclick="op(&#39;#cover&#39;,&#39;#cvr&#39;,&#39;modal/admin.php?table=<?=$table;?>&#39;)" value="新增管理者帳號">
                    </td>
                    <td class="cent"><input type="submit" value="修改確定"><input type="reset" value="重置">
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</div>