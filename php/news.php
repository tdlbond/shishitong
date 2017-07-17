<?php
	include "../util/dbutil.php";

	$sql = "select news.ntitle, news.ninfo from news";

	$result = mysqli_query($connect, $sql);

	$arr = array();
	while ($row = mysqli_fetch_array($result, MYSQL_ASSOC)) {
		array_push($arr, $row);
	}
	header("Access-Control-Allow-Origin:*");
	echo json_encode($arr);