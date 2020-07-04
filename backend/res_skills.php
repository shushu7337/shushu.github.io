<div style="width:100%; height:87%; margin:auto; overflow:auto; ">
    <p class="t cent botli">技能管理</p>
    <!-- 因為這裡被include到 admin.php 所以是從admin.php的位置去找尋 -->
    <form method="post" action="api/edit.php">
        <table class="table text-center bek">
            <thead>
                <tr>
                    <th scope="col">網頁</th>
                    <th scope="col">圖像處理</th>
                    <th scope="col">其他</th>
                    <th scope="col">顯示</th>
                    <th scope="col" colspan="2">操作</th>
                </tr>
            </thead>
            <?php
                    $table=$do;
                    $db=new DB($table);
                    // 撈出所有資料
                    $rows=$db->all();
                    // 用迴圈撈各筆
                    foreach($rows as $row){
                        $isChk=($row['sh']==1)?'checked':'';
                ?>
            
            <tbody>
                <tr>
                    <th scope="row"><input type="text" style="font-size:15px; padding:1px 0" name="text[]" size="18" value="<?=$row['web'];?>"></th>
                    <td><input type="text" style="font-size:15px; padding:1px 0" name="text[]" size="15" value="<?=$row['graphic'];?>"></td>
                    <td><input type="text" style="font-size:15px; padding:1px 0" name="text[]" size="13" value="<?=$row['others'];?>"></td>
                    <td><input type="checkbox" name="sh[]" value="<?=$row['id'];?>" <?=$isChk;?>></td>
                    <td><input type="checkbox" name="del[]" size="2" value="<?=$row['id'];?>">刪除</td>
                    <td><input type="button" size="2"
                        onclick="op(&#39;#cover&#39;,&#39;#cvr&#39;,&#39;modal/upload_title.php?id=<?=$row['id'];?>&table=<?=$table;?>&#39;)"
                        value="更新"></td>
                    <input type="hidden" name="table" value="title">
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
                            onclick="op(&#39;#cover&#39;,&#39;#cvr&#39;,&#39;modal/title.php?table=<?=$table;?>&#39;)"
                            value="新增網站標題圖片">
                    </td>
                    <td><input type="submit" value="修改確定"><input type="reset" value="重置">
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</div>