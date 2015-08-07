<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>首页标题文案</title>
	<?php include("./common/common-style.php"); ?>
	<link rel="stylesheet" href="assets/css/views/onsite-detail.css">
</head>
<body>
	<?php include("./common/header.php"); ?>


	<!-- <iframe title="pannellum panorama viewer" width="480" height="390" webkitAllowFullScreen mozallowfullscreen allowFullScreen style="border-style:none;" src="../src/pannellum.htm?config=../examples/example-cube.json"></iframe> -->
	<iframe id="resize-iframe" src="./assets/pannellum/pannellum.htm?config=../pannellum-config/example/example-cube.json" width="100%" frameborder="0" class="pannellum" webkitAllowFullScreen mozallowfullscreen allowFullScreen ></iframe>
	<script>
	(function(){
		var ifm = document.getElementById('resize-iframe');
		function setHeight(){
			ifm.height = document.documentElement.clientHeight -100 + 'px';
		}
		setHeight();
		window.onresize = setHeight;
	})();
	</script>

	<?php include("./common/footer-2.php"); ?>
</body>
</html>
