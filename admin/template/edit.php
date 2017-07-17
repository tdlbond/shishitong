<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="../css/pintuer.css">
<link rel="stylesheet" href="../css/admin.css">
<script src="../js/jquery.js"></script>
</head>
<body>
<?php
  include "../../util/dbutil.php";
  $tname = $_GET["tname"];
  $id = $_GET["id"];
  $date = date("Y/m/d");
  $imgName = $_FILES["img"]["name"];
  if ($tname == 'news') {
    $sql1 = "select news.ntitle title, news.npic pic, news.ninfo info from news where nid = $id";
    $sql2 = "update news set ntitle='$title', ninfo='$info', npic='$imgName', ndate='$date' where nid=$id";
  }
  if ($tname == 'company') {
    $sql1 = "select ctitle title, cpic pic, cinfo info from company where cid = $id";
    $sql2 = "update company set ctitle='$title', cinfo='$info', cpic='$imgName', cdate='$date' where cid=$id";
  }
  if ($tname == 'activity') {
    $sql1 = "select atitle title, apic pic, ainfo info from activity where aid = $id";
    $sql2 = "update activity set atitle='$title', ainfo='$info', apic='$imgName', adate='$date' where aid=$id";
  }
  
  $result1 = mysqli_query($connect, $sql1);
  while ($row1 = mysqli_fetch_array($result1, MYSQL_ASSOC)) {
    $titles = $row1["title"];
    $pic = $row1["pic"];
    $infos = $row1["info"];
  }

  $title = $_POST["title"];
  $info = $_POST["content"];
  if ($_FILES["img"]["error"] > 0) {
    echo "<script>alert('图片上传失败')</script>";
  }else{
    if ($title != "" && $info != "") {
      $sql2 = "update news set ntitle='$title', ninfo='$info', npic='$imgName', ndate='$date' where nid=$id";
      $flag = mysqli_query($connect, $sql2);
      if ($flag) {
        header("location: listNew.php");
      }else{
        echo "<script>alert('数据更新失败')</script>";
      }
    }
  }
   
?>
<div class="panel admin-panel">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>修改内容</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="" enctype='multipart/form-data'>
      <div class="form-group">
        <div class="label">
          <label>标题：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="<?php echo "$titles"; ?>" name="title" data-validate="required:请输入标题" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>图片：</label>
        </div>
        <div class="field">
          <input type="file" id="url1"  name="img" class="input tips" style="width:25%; float:left;"  value=""  data-toggle="hover" data-place="right" data-image="" />
          
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>内容：</label>
        </div>
        <div class="field">
          <textarea name="content" class="input" style="height:200px; border:1px solid #ddd;"><?php echo "$infos"; ?></textarea>
          <div class="tips"></div>
        </div>
      </div>
     
      <div class="clear"></div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
        </div>
      </div>
    </form>
  </div>
</div>

</body></html>