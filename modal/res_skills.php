

<h3 class="mt-3 text-center">新增學習經歷</h3>
<hr>
<form action="api/add.php"  method="post" enctype="multipart/form-data">
<table style="width:60%;margin:auto">

    <tr>
        <td style="text-align:right">網頁：</td>
        <td><input type="text" name="web"></td>
    </tr>
    <tr>
        <td style="text-align:right">圖像處理：</td>
        <td><input type="text" name="graphic"></td>
    </tr>
    <tr>
        <td style="text-align:right">其他：</td>
        <td><input type="text" name="others"></td>
    </tr>
</table>
<div style="width:100px;margin:auto">
    <input type="hidden" name="table" value="<?=$_GET['table'];?>">
    <input type="submit" value="新增">
    <input type="reset" value="重置">
</div>
</form>