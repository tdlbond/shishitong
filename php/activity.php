<?php
	include "../util/dbutil.php";

	$sql = "select activity.atitle, activity.ainfo, activity.adate from activity";

	$result = mysqli_query($connect, $sql);

	$arr = array();
	while ($row = mysqli_fetch_array($result, MYSQL_ASSOC)) {
		array_push($arr, $row);
	}
	header("Access-Control-Allow-Origin:*");
	echo json_encode($arr);