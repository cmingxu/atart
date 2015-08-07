<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>走进欧娃 欧娃介绍 标题文案</title>
	<link rel="stylesheet" href="css/dpl.css">
	<style>
		.main p { text-indent: 24px; line-height: 24px; color: #333; padding-bottom: 24px; }
		.main .layout-temp { overflow: hidden; padding-bottom: 20px; }
		.main .layout-temp .col-main { float: left; width: 100%; }
		.main .layout-temp .main-wrap { margin-right: 360px; }
		.main .layout-temp .col-sub  { float: left; width: 340px; margin-left: -360px; }

		.main .floor-navi-map { margin-top: 57px; position: relative; z-index: 0; }
		.main .floor-navi-map .map-navi-item,
		.main .floor-navi-map .map-navi-item:visited  { cursor: default; }
		.main .floor-navi-map .map-navi-item-inner { display: none; position: absolute; bottom: 50%; left: 55%; line-height: 18px; font-size: 12px; color: #000; font-weight: normal; border-bottom: 1px solid #000; padding-left: 70px;  }
		.main .floor-navi-map .map-navi-item-inner .name,
		.main .floor-navi-map .map-navi-item-inner .id  { display: block; }
		.main .floor-navi-map .map-navi-item-inner .tel { display: none; }
		.main .hori-cate-list { padding-bottom: 0; }
		.main .floor-navi-map {  }
		.main .floor-navi-map .selected {  }
		.main .floor-navi-map .selected .map-navi-item-inner,
		.main .floor-navi-map .map-navi-item:hover .map-navi-item-inner { display: block; z-index: 10; }

		.main .store-navi-carousel { position: relative; margin-top: 90px; }
		.main .store-navi-carousel .title { display: block; padding-right: 85px; height: 40px; line-height: 42px; text-indent: 15px; font-weight: normal; font-size: 13px; color: #fff; background: #d92100; }
		.main .store-navi-carousel .prev { display: block; position: absolute; height: 22px; width: 11px; top: 10px; right: 64px; overflow: hidden; background-position: 0 -555px; }
		.main .store-navi-carousel .next { display: block; position: absolute; height: 22px; width: 11px; top: 10px; right: 21px; overflow: hidden; background-position: 0 -530px; }
		.main .store-navi-carousel .fields { display: block; overflow: hidden; background: #f5f3f3; }
		.main .store-navi-carousel .fields li { height: 38px; line-height: 38px; overflow: hidden; font-size: 13px; color: #999; font-weight: normal; display: inline-block; *display: inline; zoom:1; white-space: nowrap; }
		.main .store-navi-carousel .store-lists { background: #f5f3f3; overflow: hidden; }
		.main .store-navi-carousel .store-lists ul { float: left; }
		.main .store-navi-carousel .store-lists li { height: 30px; line-height: 30px; overflow: hidden; font-size: 13px; color: #333; }
		.main .store-navi-carousel .store-lists li.odd,
		.main .store-navi-carousel .store-lists li:nth-of-type(odd) { background: #fbfafa; }
		.main .store-navi-carousel .store-lists li span { display: inline-block; *display: inline; zoom:1; white-space: nowrap; vertical-align: top; }
		.main .store-navi-carousel .name  { width: 155px; text-indent: 12px; padding-right: 5px; }
		.main .store-navi-carousel .id    { width: 80px;  text-indent: 12px; padding-right: 5px; }
		.main .store-navi-carousel .tel   { widows: 90px; text-indent: 12px; padding-right: 5px; }
		.main .store-navi-carousel .store-lists li.hover,
		.main .store-navi-carousel .store-lists li:hover { background: #f4cac3; color: #d92100; }
	</style>
</head>
<body>
	
	<?php 
		$cate1Index = 1;
		$cate2Index = 1;
	?>

	<?php include("./header.php"); ?>
	<?php include("./crumb.php"); ?>

	<div class="center main">
		<div class="layout-temp" data-dpl="map-navi">
			<div class="col-main">
				<div class="main-wrap">

					<ul class="hori-cate-list">
						<li><a href="#" hidefocus="true" >一层：钟表/名包/珠宝</a></li>
						<li class="current" hidefocus="true" ><a href="#">二层：女装服饰</a></li>
						<li><a href="#" hidefocus="true" >三层：男装/服饰/名鞋/名包</a></li>
						<li><a href="#" hidefocus="true" >四层：服饰/餐饮</a></li>
					</ul>

					<div class="floor-navi-map" data-role="map-image" data-hover-bg="./demo/floor_1_hover.png">
						<img src="./demo/floor_1.png" alt="">
					</div>

				</div>
			</div>
			<div class="col-sub">
				<div class="store-navi-carousel" data-dpl="carousel" data-responsive="true" data-auto="false">
					<span class="title text-overflow">二层：女装服饰</span>
					<a href="javascript:void(0)" class="prev iconbg role-prev"></a>
					<a href="javascript:void(0)" class="next iconbg role-next"></a>
					<ul class="fields">
						<li class="name">品牌名称</li>
						<li class="id">店铺号</li>
						<li class="tel">服务热线</li>
					</ul>
					<div class="store-lists role-list" data-patch="container">
						<ul data-patch="odd-list">
							<li data-patch="hover" data-role="navi-link" data-id="B275" data-area-width="36"  data-area-height="63"  data-area-x="284" data-area-y="227"> <span class="text-overflow name">ALEX</span> <span class="id">B275</span> <span class="tel">89705848</span> </li>
							<li data-patch="hover" data-role="navi-link" data-id="B215" data-area-width="144" data-area-height="128" data-area-x="0"   data-area-y="241"> <span class="text-overflow name">Angelico</span> <span class="id">B215</span> <span class="tel">89705848</span> </li>
							<li data-patch="hover" data-role="navi-link" data-id="B214" data-area-width="95"  data-area-height="82"  data-area-x="189" data-area-y="270"> <span class="text-overflow name">ANNA</span> <span class="id">B214</span> <span class="tel">89705848</span> </li>
							<li data-patch="hover" data-role="navi-link" data-id="B213" data-area-width="46"  data-area-height="42"  data-area-x="145" data-area-y="230"> <span class="text-overflow name">carmen melero</span> <span class="id">B213</span> <span class="tel">89705848</span> </li>
							<li data-patch="hover" data-role="navi-link" data-id="B210" data-area-width="45"  data-area-height="45"  data-area-x="234" data-area-y="185"> <span class="text-overflow name">DINOU</span> <span class="id">B210</span> <span class="tel">89705848</span> </li>
							<li data-patch="hover" data-role="navi-link" data-id="B209" data-area-width="45"  data-area-height="47"  data-area-x="189" data-area-y="182"> <span class="text-overflow name">EVEVT</span> <span class="id">B209</span> <span class="tel">89705848</span> </li>
							<li data-patch="hover" data-role="navi-link" data-id="B208" data-area-width="88"  data-area-height="29"  data-area-x="190" data-area-y="155"> <span class="text-overflow name">GROC</span> <span class="id">B208</span> <span class="tel">89705848</span> </li>
							<li data-patch="hover" data-role="navi-link" data-id="B276" data-area-width="42"  data-area-height="49"  data-area-x="409" data-area-y="8"  > <span class="text-overflow name">LAURA BERNAL</span> <span class="id">B275</span> <span class="tel">89705848</span> </li>
							<li data-patch="hover" data-role="navi-link" data-id="B216" data-area-width="44"  data-area-height="50"  data-area-x="365" data-area-y="7"  > <span class="text-overflow name">LORIBLU</span> <span class="id">B215</span> <span class="tel">89705848</span> </li>
							<li data-patch="hover" data-role="navi-link" data-id="B212" data-area-width="191" data-area-height="199" data-area-x="496" data-area-y="96" > <span class="text-overflow name">MASSANA</span> <span class="id">B214</span> <span class="tel">89705848</span> </li>
						</ul>
						<ul data-patch="odd-list">
							<li data-patch="hover" data-role="navi-link" data-id="B290" data-area-width="55" data-area-height="50" data-area-x="449" data-area-y="97"> <span class="text-overflow name">DINOU</span> <span class="id">B290</span> <span class="tel">89705848</span> </li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<?php include("./footer.php"); ?>
</body>
</html>