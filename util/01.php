<?php
	include "dbutil.php";

	$sql = "select count(0) from news";

	$count = mysqli_query($connect, $sql);

	$row = mysqli_fetch_array($count, MYSQL_ASSOC);

	echo "<pre>";
	print_r($row);
	echo "</pre>";