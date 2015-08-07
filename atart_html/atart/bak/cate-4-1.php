<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>走进欧娃 欧娃介绍 标题文案</title>
	<link rel="stylesheet" href="css/dpl.css">
	<style>
		.main { }
		.main .brand-list { width: 100%; margin-bottom: 20px; position: relative; z-index: 0; }
		.main .brand-list td { border: 1px solid #efefef; vertical-align: middle; text-align: center; }
		.main .brand-list td a,
		.main .brand-list td a:visited { display: block; margin: -1px; border: 1px solid transparent; }
		.main .brand-list td a:hover { position: relative; zoom: 1; border-color: #ccc; z-index: 1000; }
		
	</style>
</head>
<body>
	
	<?php 
		$cate1Index = 4;
		$cate2Index = 1;
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

		<table class="brand-list">
			<tbody>
				<tr>
					<?php 
						$repeat = Array( '001','002','003','004','005','006','007','008','009','010','011','012','013','014','015','016','017','018','019','020','021','022','023','024','025' );
						$lastIndex = count($repeat)1;
					?>
					<?php foreach ($repeat as $i => $val): ?>
					<td>
						<a href="cate-4-2.php" >
							<img src="<?= './demo/join_brands_'.$val.'.gif'; ?>" alt="">
						</a>
					</td>
					<?php if ( ( $i + 1 ) % 5 == 0 && $i != $lastIndex ): ?>
				</tr>
				<tr>
					<?php endif ?>
					<?php endforeach ?>
				</tr>
			</tbody>
		</table>
		
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