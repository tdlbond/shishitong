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
<?php
  session_start();
  if (!isset($_SESSION["user"])) {
    header("location: login.php");
  }
  $title = $_POST["title"];
  $content = $_POST["content"];
  $date = date("Y/m/d");
  if ($_FILES["img"]["error"] > 0) {
    echo "<script>alert('图片上传失败')</script>";
  }else{
    $imgName = $_FILES["img"]["name"];
    move_uploaded_file($_FILES["img"]["tem_name"], "images/".$imgName);
    if ($content != "" && $title != ""){
      include "../../util/dbutil.php";
      $sql = "insert into activity (apic, atitle, ainfo, adate) values ('$imgName', '$title', '$content', '$date')";
      $flag = mysqli_query($connect, $sql);
      if ($flag) {
        header("location: listActivity.php");
      }else{
        echo "<script>alert('数据上传失败')</script>";
      }
    } 
    
  }

?>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>增加内容</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="" enctype='multipart/form-data'>
      <div class="form-group">
        <div class="label">
          <label>标题：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="title" data-validate="required:请输入标题" />
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
          <textarea name="content" class="input" style="height:200px; border:1px solid #ddd;"></textarea>
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