

<h3 class="mt-3 text-center">新增學習經歷</h3>
<hr>
<form action="api/add.php"  method="post" enctype="multipart/form-data">
<table style="width:60%;margin:auto">

    <tr>
        <td style="text-align:right">學校名稱：</td>
        <td><input type="text" name="edu_name"></td>
    </tr>
    <tr>
        <td style="text-align:right">系所名稱：</td>
        <td><input type="text" name="edu_dept"></td>
    </tr>
    <tr>
        <td style="text-align:right">就讀日期：</td>
        <td><input type="text" name="edu_date"></td>
    </tr>
    <tr>
        <td style="text-align:right">說明：</td>
        <td><textarea name="edu_con" style='width:65%;height:60px'></textarea></td>
    </tr>
</table>
<div style="width:100px;margin:auto">
    <input type="hidden" name="table" value="<?=$_GET['table'];?>">
    <input type="submit" value="新增">
    <input type="reset" value="重置">
</div>
</form>