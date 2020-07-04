<div style="width:100%; height:87%; margin:auto; overflow:auto; ">
    <p class="t cent botli">個人資料管理</p>
    <!-- 因為這裡被include到 admin.php 所以是從admin.php的位置去找尋 -->
    <form method="post" action="api/edit.php">
        <table class="table text-center bek">
            <thead>
                <tr>
                    <th scope="col">圖片</th>
                    <th scope="col">自我介紹</th>
                    <th scope="col">姓名</th>
                    <th scope="col">電話</th>
                    <th scope="col">信箱</th>
                    <th scope="col">生日</th>
                    <th scope="col">所在地</th>
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
                ?>
            
            <tbody>
                <tr>
                    <th scope="row"><img src='pic/<?=$row['img'];?>' style="width:50px;height:50px"></th>
                    <td><textarea name="text[]" style='width:90%;height:60px'><?=$row['intro'];?></textarea></td>
                    <td><input type="text" name="text[]" size="5" value="<?=$row['name'];?>"></td>
                    <td><input type="text" name="text[]" size="5" value="<?=$row['phone'];?>"></td>
                    <td><input type="text" name="text[]" size="10" value="<?=$row['email'];?>"></td>
                    <td><input type="text" name="text[]" size="5" value="<?=$row['birth'];?>"></td>
                    <td><input type="text" name="text[]" size="3" value="<?=$row['location'];?>"></td>
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
                    <td class="cent"><input type="submit" value="修改確定"><input type="reset" value="重置">
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</div>