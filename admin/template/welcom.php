<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="../../css/toastr.min.css">
	<script src="../js/jquery.min.js"></script>
	<script src="../../js/toastr.min.js"></script>
        <?php
			session_start();
			$user = $_SESSION["user"];
			$name = $user["username"];
			echo "$name", "恭喜登录成功";
		?>
		
</head>
<body>
	
</body>
</html>