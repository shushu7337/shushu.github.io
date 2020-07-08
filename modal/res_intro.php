

<h3 class="mt-3 text-center">新增自傳</h3>
<hr>
<form action="api/add.php"  method="post" enctype="multipart/form-data">
<div class="form-group">
<table style="width:80%;margin:auto">

    <tr>
        <td style="text-align:right">自傳 : </td>
        <td><textarea name="intro" style='width:65%;height:60px'></textarea></td>
    </tr>
</table>
</div>
<div style="width:100px;margin:auto">
    <input type="hidden" name="table" value="<?=$_GET['table'];?>">
    <input type="submit" value="新增">
    <input type="reset" value="重置">
</div>
</form>