<div style="width:100%; height:87%; margin:auto; overflow:auto; ">
    <p class="t cent botli">求職條件管理</p>
    <!-- 因為這裡被include到 admin.php 所以是從admin.php的位置去找尋 -->
    <form method="post" action="api/edit.php">
        <table class="table text-center bek">
            <thead>
                <tr>
                    <th scope="col">項目</th>
                    <th scope="col">內容</th>
                    <th scope="col">顯示順序</th>
                    <th scope="col">顯示</th>
                    <th scope="col" colspan="2">操作</th>
                </tr>
            </thead>
            <?php
                    $table=$do;
                    $db=new DB($table);
                    // 撈出所有資料
                    $rows=$db->all([]," order by `no` ");
                    $num=$db->count();
                    // 用迴圈撈各筆
                    foreach($rows as $row){
                        $isChk=($row['sh']==1)?'checked':'';
                ?>
            
            <tbody>
                <tr>
                    <th scope="row"><input class="form-control" type="text" style="font-size:15px; padding:1px 0" name="item[]" size="5" value="<?=$row['item'];?>"></th>
                    <td><input class="form-control" type="text" style="font-size:15px; padding:1px 0" name="content[]" size="15" value="<?=$row['content'];?>"></td>
                    <td>
                    <select class="form-control" name="no[]">
                        <?php
                            for($i=0; $i<=$num;$i++){
                
                                $no=($row['no']==$i)?'selected':'';
                                echo "<option value='".$i."' ".$no.">".$i."</option>";
                            }
                        ?>
                    </select>
                    </td>
                    <td><input type="checkbox" name="sh[]" value="<?=$row['id'];?>" <?=$isChk;?>></td>
                    <td><input type="checkbox" name="del[]" size="2" value="<?=$row['id'];?>">刪除</td>
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
            <button type="button" class="float-right mr-5 btn btn-outline-danger" onclick="op(&#39;#cover&#39;,&#39;#cvr&#39;,&#39;./modal/res_jsc.php?table=<?=$table;?>&#39;)">新增求職項目</button>
        </div>
    </form>
</div>