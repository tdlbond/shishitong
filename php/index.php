<?php
	include "../util/dbutil.php";
	$num = $_POST["num"];
	if ($num == 1) {
		$sql = "select news.ntitle, news.ninfo, news.npic from news limit 0, 1";
	}
	if ($num == 2) {
		$sql = "select news.ntitle, news.ninfo from news limit 1, 6";
	}
	

	$result = mysqli_query($connect, $sql);

	$arr = array();
	while ($row = mysqli_fetch_array($result, MYSQL_ASSOC)) {
		array_push($arr, $row);
	}

	header("Access-Control-Allow-Origin:*");
	echo json_encode($arr);
