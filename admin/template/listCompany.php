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

?>
</head>
<body>

<form method="post" action="" id="listform">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li> <a class="button border-main icon-plus-square-o" href="addNew.php"> 添加内容</a> </li>
      </ul>
    </div>
    <table class="table table-hover text-center">
      <tr>
        <th width="100" style="text-align:left; padding-left:20px;">ID</th>
        <th>图片</th>
        <th>标题</th>
        <th width="10%">更新时间</th>
        <th width="310">操作</th>
      </tr>
      <div id="trs">
      <?php
        include "../../util/dbutil.php";
        $pageSize = 4;
        $clickPage = $_REQUEST["clickPage"];
        if ($clickPage == "") {
          $clickPage = 1;
        }

        $sql1 = "select count(0) size from company";
        $result1 = mysqli_query($connect, $sql1);
        $r = mysqli_fetch_array($result1, MYSQL_ASSOC);
        $count = $r["size"];
        $pages = ceil($count / $pageSize);
        $start = ($clickPage -1)*$pageSize;

        $sql2 = "select company.cid, company.cpic, company.ctitle, company.cdate, company.cinfo from company limit $start, $pageSize";

        $result2 = mysqli_query($connect, $sql2);
        while ($row = mysqli_fetch_array($result2, MYSQL_ASSOC)) {
          $id = $row["cid"];
          $pic = $row["cpic"];
          $title = $row["ctitle"];
          $date = $row["cdate"];
          $info = $row["cinfo"];
          echo "
            <tr>
              <td style='text-align:left; padding-left:20px;'>
                <input type='checkbox' name='id[]' value=''>$id
              </td>
              <td width='10%'>
                <img src='../../image/index_image/$pic' width='70' height='50'>
              </td>
              <td>$title</td>
              <td>$date</td>
              <td>
                <div class='button-group'>
                  <a class='button border-main modify' onclick='doModify($id)' href='javascript:void(0)'>
                    <span class='icon-edit'></span> 修改
                  </a>
                  <a class='button border-red' href='javascript:void(0)'' onclick='return del($id,1,1)'>
                    <span class='icon-trash-o'></span> 删除
                  </a>
                </div>
              </td>
            </tr>
          ";
          
        }

      ?>
      </div>
      <tr>
        <td colspan="8">
            <div class="pagelist" id="lists">

            </div>
        </td>
      </tr>

    </table>
  </div>
</form>
<script type="text/javascript">
  //删除
  function del(id,mid,iscid){
    if(confirm("您确定要删除吗?")){
          window.location.href="delete.php?tname=company&id="+id;
    }else{
          alert(1);
      }
  }

  $(function(){
    // 分页
    var clickPage = <?php echo "$clickPage"; ?>;
    var pages = <?php echo "$pages"; ?>;

    $("#lists").html();
    $("#lists").append("<a>首页</a>");
    $("#lists").append("<a>上一页</a>");
    for (var i =1; i <= pages; i++) {
      if (i == clickPage) {
        $("#lists").append("<span class='current'>"+i+"</span>");
      }else{
        $("#lists").append("<a>"+i+"</a>");
      }
      
    }
    $("#lists").append("<a id='next'>下一页</a>");
    $("#lists").append("<a id='end'>尾页</a>");

    $("#lists > a").click(function(){
      var clicks = $(this).html();
      if (clicks == "下一页" && clickPage != pages) {
        clickPage += 1 ;
      }
      if (clicks == "上一页" && clickPage != 1) {
        clickPage -= 1;
      }
      if (clicks == "首页" && clickPage != 1) {
        clickPage = 1;
      }
      if (clicks == "尾页" && clickPage != pages) {
        clickPage = pages;
      }
      if (clicks != "下一页" && clicks != "上一页" && clicks != "首页" && clicks != "尾页") {
        clickPage = clicks;
      }
      $.post("listCompany.php", {"clickPage":clickPage}, function(data){
        $("form").html("");
        $("form").html(data);
      });
    });

    
  });
  // 修改
  function doModify(x) {
    window.location.href = "edit.php?tname=company&id="+x;
  }

</script>
</body>
</html>