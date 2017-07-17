<?php
	include "../../util/dbutil.php";
	$tname = $_GET["tname"];
 	$id = $_GET["id"];

 	if ($tname == 'news') {
 		$sql = "delete from news where nid=$id";
 		$flag = mysqli_query($connect, $sql);
 		if ($flag) {
 			header("location: listNew.php");
 		}else{
 			echo "<script>alert('删除失败')</script>";
 		}
 	}
 	if ($tname == 'company') {
 		$sql = "delete from company where cid=$id";
 		$flag = mysqli_query($connect, $sql);
 		if ($flag) {
 			header("location: listNew.php");
 		}else{
 			echo "<script>alert('删除失败')</script>";
 		}
 	}
 	if ($tname == 'activity') {
 		$sql = "delete from activity where aid=$id";
 		$flag = mysqli_query($connect, $sql);
 		if ($flag) {
 			header("location: listNew.php");
 		}else{
 			echo "<script>alert('删除失败')</script>";
 		}
 	}
