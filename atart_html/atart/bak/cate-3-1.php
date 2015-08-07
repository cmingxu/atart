<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>走进欧娃 欧娃介绍 标题文案</title>
	<link rel="stylesheet" href="css/dpl.css">
	<style>
		.main { }
		.main .new-promotions { overflow: hidden; }
		.main .new-promotions ul { font-size: 0; }
		.main .new-promotions li { vertical-align: top; width: 360px; margin-right: 30px; padding-bottom: 35px; font-size: 12px; }
		.main .new-promotions li a,
		.main .new-promotions li a:visited { color: #333; }
		.main .new-promotions li a:hover { color: #000; text-decoration: underline; }
		.main .new-promotions li .pic,
		.main .new-promotions li .pic:visited { height: 130px; }
		.main .new-promotions li .title { display: block; padding-top: 9px; }
		.main .new-promotions li .description { display: block; line-height: 18px; padding-top: 4px; }

		.main .prev-promotions { padding-bottom: 40px; }
		.main .prev-promotions .section-title { display: block; height: 60px; line-height: 60px; line-height: 60px; font-size: 22px; font-weight: normal; }
		.main .prev-promotions li { line-height: 24px; padding: 15px 0; }
		.main .prev-promotions li .title { display: block; font-weight: normal; color: #000; font-size: 14px; }
		.main .prev-promotions li .sub-title { display: block; font-weight: normal; color: #666; font-size: 12px; }
	</style>
</head>
<body>
	
	<?php 
		$cate1Index = 3;
		$cate2Index = 1;
	?>

	<?php include("./header.php"); ?>
	<?php include("./crumb.php"); ?>

	<div class="main center">

		<div class="new-promotions">
			<ul class="center-wigher">
				<li class="inline-block">
					<a href="" class="pic focus-img-link" data-patch="pseudo">
						<img src="./demo/home_x_banner_001.jpg" alt="" height="130" width="360">
					</a>
					<span class="title text-overflow">
						<a href="#"><label>活动主题：</label> WAOW 特惠，恋上春天,WAOW 特惠，恋上春天</a>
					</span>
					<span class="time"><label>活动时间：</label> 4月8日-30日</span>
					<p class="description">
						<a href="">
							2013春夏款满400元赠120元赠券，以此类推，上不封顶，参与
							活动品牌及赠券消费范围详见店内告示...
						</a>
					</p>
				</li>
				<li class="inline-block">
					<a href="" class="pic focus-img-link" data-patch="pseudo">
						<img src="./demo/home_x_banner_002.jpg" alt="" height="130" width="360">
					</a>
					<span class="title text-overflow">
						<a href="#"><label>活动主题：</label> WAOW 特惠，恋上春天,WAOW 特惠，恋上春天</a>
					</span>
					<span class="time"><label>活动时间：</label> 4月8日-30日</span>
					<p class="description">
						<a href="">
							2013春夏款满400元赠120元赠券，以此类推，上不封顶，参与
							活动品牌及赠券消费范围详见店内告示...
						</a>
					</p>
				</li>
				<li class="inline-block">
					<a href="" class="pic focus-img-link" data-patch="pseudo">
						<img src="./demo/home_x_banner_003.jpg" alt="" height="130" width="360">
					</a>
					<span class="title text-overflow">
						<a href="#"><label>活动主题：</label> WAOW 特惠，恋上春天,WAOW 特惠，恋上春天</a>
					</span>
					<span class="time"><label>活动时间：</label> 4月8日-30日</span>
					<p class="description">
						<a href="">
							2013春夏款满400元赠120元赠券，以此类推，上不封顶，参与
							活动品牌及赠券消费范围详见店内告示...
						</a>
					</p>
				</li>
			</ul>
		</div>

		<div class="prev-promotions hr-top-2">
			<span class="section-title hr-bottom-1">往期活动回顾</span>
			<ul>
				<li class="hr-bottom-1">
					<span class="title">4月21日-28日  恋上春天，让风筝飞</span>
					<span class="sub-title">（凡消费即可免费领取风筝）</span>
				</li>
				<li class="hr-bottom-1">
					<span class="title">4月20日   恋上春天，我的风筝自己画Ⅱ</span>
					<span class="sub-title">（DIY手绘风筝亲子活动）</span>
				</li>
				<li class="hr-bottom-1">
					<span class="title">3月25日-4月7日 绚丽四月，美在娃欧</span>
					<span class="sub-title">（满减促销活动）</span>
				</li>
				<li class="hr-bottom-1">
					<span class="title">3月19日-3月30日 我和AMEI有个约会</span>
					<span class="sub-title">（购物“抢”张惠妹演唱会门票）</span>
				</li>
				<li class="hr-bottom-1">
					<span class="title">3月8日-3月17日 花开三月，娃欧特惠三重奏</span>
					<span class="sub-title">（满减、满送促销活动）</span>
				</li>
			</ul>
		</div>

	</div>

	<?php include("./footer.php"); ?>
</body>
</html>