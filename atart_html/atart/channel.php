<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>首页标题文案</title>
	<?php include("./common/common-style.php"); ?>
	<link rel="stylesheet" href="assets/css/views/channel.css">
</head>
<body>
	<?php $currentCate1Index = 1; ?>
	<?php $currentCate2Index = 1; ?>
	<?php include("./common/header.php"); ?>

	<div class="page-content">

		<div class="items item-art">
			<a href="" style="background-image: url(assets/demo/atart频道_03.jpg);">
				<img src="assets/demo/atart频道_03.jpg" alt="">
				<span class="title">ART</span>
				<span class="shares">718 shares</span>
			</a>
		</div>
		<div class="items item-design">
			<a href="" style="background-image: url(assets/demo/atart频道_05.jpg);">
				<img src="assets/demo/atart频道_05.jpg" alt="">
				<span class="title">DESIGN</span>
				<span class="shares">718 shares</span>
			</a>
		</div>
		<div class="items item-technology">
			<a href="" style="background-image: url(assets/demo/atart频道_09.jpg);">
				<img src="assets/demo/atart频道_09.jpg" alt="">
				<span class="title">TECHNOLOGY</span>
				<span class="shares">718 shares</span>
			</a>
		</div>
		<div class="items item-architecture">
			<a href="" style="background-image: url(assets/demo/atart频道_12.jpg);">
				<img src="assets/demo/atart频道_12.jpg" alt="">
				<span class="title">ARCHITECTURE</span>
				<span class="shares">718 shares</span>
			</a>
		</div>

	</div>

	<?php include("./common/footer.php"); ?>
</body>
</html>
