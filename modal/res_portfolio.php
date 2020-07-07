

<h3 class="mt-3 text-center">新增作品集</h3>
<hr>
<form action="api/add.php"  method="post" enctype="multipart/form-data">
<div class="form-group">
<table style="width:80%;margin:auto">

    <tr>
        <td style="text-align:right">作品照片 : </td>
        <td><input type="file" name="img"></td>
    </tr>
    <tr>
        <td style="text-align:right">作品標題 : </td>
        <td><input type="text" name="title"></td>
    </tr>
    <tr>
        <td style="text-align:right">作品分類 : </td>
        <td>
            <select name="type" class="form-control">
              <option name="JavaScript">JavaScript</option>
              <option name="PHP">PHP</option>
              <option name="Others">Others</option>
            </select>
        </td>
    </tr>
    <tr>
        <td style="text-align:right">作品說明 : </td>
        <td><textarea name="point" style='width:65%;height:60px'></textarea></td>
    </tr>
</table>
</div>
<div style="width:100px;margin:auto">
    <input type="hidden" name="table" value="<?=$_GET['table'];?>">
    <input type="submit" value="新增">
    <input type="reset" value="重置">
</div>
</form>