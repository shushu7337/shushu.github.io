

<h3 class="mt-3 text-center">新增工作經歷</h3>
<hr>
<form action="api/add.php"  method="post" enctype="multipart/form-data">
<table style="width:60%;margin:auto">

    <tr>
        <td style="text-align:right">公司名稱：</td>
        <td><input type="text" name="ser_name"></td>
    </tr>
    <tr>
        <td style="text-align:right">職位名稱：</td>
        <td><input type="text" name="ser_title"></td>
    </tr>
    <tr>
        <td style="text-align:right">服務日期：</td>
        <td><input type="text" name="ser_date"></td>
    </tr>
    <tr>
        <td style="text-align:right">說明：</td>
        <td><textarea name="ser_con" style='width:65%;height:60px'></textarea></td>
    </tr>
</table>
<div style="width:100px;margin:auto">
    <input type="hidden" name="table" value="<?=$_GET['table'];?>">
    <input type="submit" value="新增">
    <input type="reset" value="重置">
</div>
</form>