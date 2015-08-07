<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>走进欧娃 欧娃介绍 标题文案</title>
	<link rel="stylesheet" href="css/dpl.css">
	<style>
		.main { }

		.main .cate-filter .hori-cate-list { padding-bottom: 0; }

		.main .result-list ul { overflow: hidden; }
		.main .result-list ul li { float: left; width: 212px; height: 246px; padding: 20px; padding-left: 0; }
		.main .result-list ul a,
		.main .result-list ul a:visited { display: block; position: relative; width: 212px; height: 212px; margin-bottom: 34px; }
		.main .result-list ul a span {
			display: block; width: 212px; height: 34px; position: absolute; left: 0; bottom: -34px; background: #f2f1ee;
			font-weight: normal; color: #333; line-height: 34px; font-size: 12px; text-indent: 7px;
		}
		.main .result-list ul a:hover span { text-decoration: underline; }
	</style>
</head>
<body>
	
	<?php 
		$cate1Index = 1;
		$cate2Index = 2;
	?>

	<?php include("./header.php"); ?>
	<?php include("./crumb.php"); ?>

	<div class="main center">

		<div class="cate-filter">
			<ul class="hori-cate-list">
				<li class="all"><a href="#全部" hidefocus="true" >全部</a></li>
				<li><a href="#男装" hidefocus="true" >男装</a></li>
				<li class="current" hidefocus="true" ><a href="#女装">女装</a></li>
				<li><a href="#鞋" hidefocus="true" >鞋/包</a></li>
				<li><a href="#珠宝饰品" hidefocus="true" >珠宝饰品</a></li>
				<li><a href="#家居生活" hidefocus="true" >家居生活</a></li>
				<li><a href="#家用电器" hidefocus="true" >家用电器</a></li>
			</ul>
		</div>

		<div class="result-list">
			<ul class="center-wigher">
				<?php 
					$repeat = Array('001','002','003','004','005','006','007','008','009','010','011','012','013','014','015');
				?>
				<?php foreach ($repeat as $key => $val): ?>
				<li>
					<a href="cate-1-3.php" class="focus-img-link" data-patch="pseudo">
						<img src="<?= './demo/shopping_brand_small_'.$val.'.jpg'; ?>" alt="" height="212" width="212">
						<span class="text-overflow">SUITE BLANCO</span>
					</a>
				</li>
				<?php endforeach ?>
			</ul>
		</div>
		
		<div class="pager">
			<ul class="page-navi">
				<li class="current"><a href="#1" hidefocus="true" >1</a></li>
				<li><a href="#2" hidefocus="true" >2</a></li>
				<li><a href="#3" hidefocus="true" >3</a></li>
				<li><a href="#4" hidefocus="true" >4</a></li>
			</ul>
		</div>

	</div>

	<?php include("./footer.php"); ?>
</body>
</html>