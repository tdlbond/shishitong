<?php
	define("HOST", "127.0.0.1");
	define("USERNAME", "root");
	define("PASSWORD", "");
	define("DBNAME", "demo2");
	define("MYSQL_CHARSET", "utf8");

	$connect = mysqli_connect(HOST, USERNAME, PASSWORD, DBNAME);
	if (!$connect) {
		die("数据库连接失败！");
	}
	
	$mysql_charset_sql = " set names ".MYSQL_CHARSET;
	mysqli_query($connect, $mysql_charset_sql);
