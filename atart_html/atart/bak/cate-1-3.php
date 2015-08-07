<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>走进欧娃 欧娃介绍 标题文案</title>
	<link rel="stylesheet" href="css/dpl.css">
	<style>
		.main { padding-bottom: 30px; }

		.main .layout-temp { overflow: hidden;  }
		.main .layout-temp .col-main { float: left; width: 100%; }
		.main .layout-temp .main-wrap { margin-left: 720px; }
		.main .layout-temp .col-sub  { float: left; width: 690px; margin-left: -100%; }

		.main .col-main { position: relative; }
		.main .col-main .logo  { display: block; margin-bottom: 12px; }
		.main .col-main .logo img { display: block; }
		.main .col-main .title { font-size: 16px; font-weight: normal; display: block; margin-bottom: 14px; }
		.main .col-main .info  { line-height: 24px; margin-bottom: 25px; }
		.main .col-main .view-store { margin-bottom: 29px; }
		.main .col-main p { line-height: 20px; margin-top: 15px; }
		.main .col-main .exit-btn { position: absolute; right: 0; top: 0; }

	</style>
</head>
<body>
	
	<?php 
		$cate1Index = 1;
		$cate2Index = 3;
	?>

	<?php include("./header.php"); ?>
	<?php include("./crumb.php"); ?>

	<div class="main center">
		<div class="layout-temp">
			<div class="col-main">
				<div class="main-wrap">

					<div class="logo">
						<img src="./demo/canyi_logo_001.jpg" alt="" height="38" width="103">
					</div>

					<span class="title">San Qiao Yi Yi 三上料理</span>

					<ul class="info">
						<li><label>店铺楼层：</label>L4</li>
						<li><label>店铺编号：</label>L421</li>
						<li><label>联系方式：</label>89705587</li>
					</ul>
					
					<a href="" class="btn-dark view-store">商店平面图</a>
				
					<label class="block">品牌简介：</label>
					<p data-dpl="view-more">
						三上日本料理诞生于二十年前的香港,为香港历史最为悠久的日本料理店之一,其创办人邓耀祥先生于1989年在香港深水埠开创了第一家三上日本料理店。经过二十余年的长足发展,三上已从八十年代末的一家门店,逐步发展成为在港拥有六家门市的知名餐饮品牌,成为香港日式餐饮最为杰出的代表之一。2009年,三上
						<span data-role="view-more-spliter">...... </span>
						<span data-role="view-more-text" style="display:none;">
							日本料理诞生于二十年前的香港,为香港历史最为悠久的日本料理店之一,其创办人邓耀祥先生于1989年在香港深水埠开创了第一家三上日本料理店。经过二十余年的长足发展,三上已从八十年代末的一家门店,逐步发展成为在港拥有六家门市的知名餐饮品牌,成为香港日式餐饮最为杰出的代表之一。
						</span>
					</p>

					<a href="" class="exit-btn"></a>

				</div>
			</div>
			<div class="col-sub">
				<div class="carousel" data-dpl="carousel" data-responsive="true" data-auto="true" data-pause-duration="4500">
					<ul class="role-list">
						<li>
							<a href="" class="role-banner" img-src="demo/canyi_big_pic_001.jpg"></a>
						</li>
						<li>
							<a href="" class="role-banner" img-src="demo/canyi_big_pic_001.jpg"></a>
						</li>
						<li>
							<a href="" class="role-banner" img-src="demo/canyi_big_pic_001.jpg"></a>
						</li>
					</ul>
					<a class="role-prev" href="javascript:void(0)">&lt;</a>
					<a class="role-next" href="javascript:void(0)">&gt;</a>
					<div class="role-pagination"></div>
				</div>
			</div>
		</div>
	</div>

	<?php include("./footer.php"); ?>
</body>
</html>