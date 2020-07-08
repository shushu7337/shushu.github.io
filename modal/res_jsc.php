

<h3 class="mt-3 text-center">新增求職條件</h3>
<hr>
<form action="api/add.php"  method="post" enctype="multipart/form-data">
<table style="width:60%;margin:auto">

    <tr>
        <td style="text-align:right">項目：</td>
        <td><input type="text" name="item"></td>
    </tr>
    <tr>
        <td style="text-align:right">內容：</td>
        <td><input type="text" name="content"></td>
    </tr>
   
</table>
<div style="width:100px;margin:auto">
    <input type="hidden" name="table" value="<?=$_GET['table'];?>">
    <input type="submit" value="新增">
    <input type="reset" value="重置">
</div>
</form>