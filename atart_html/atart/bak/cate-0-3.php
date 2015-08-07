<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>走进欧娃 欧娃介绍 标题文案</title>
	<link rel="stylesheet" href="css/dpl.css">
	<style>
		.main { }
		.main .map { height: 350px; }

		.main form td { padding-top: 20px; padding-right: 3px; vertical-align: top; }
		.main form label { line-height: 28px;  }

		.main .layout-temp { overflow: hidden;  padding-top: 6px; padding-bottom: 30px; }
		.main .layout-temp .col-main { float: left; width: 100%; }
		.main .layout-temp .main-wrap { margin-right: 540px; }
		.main .layout-temp .col-sub  { float: left; width: 540px; margin-left: -540px; }

		.main .section-title { display: block; padding-top: 44px; padding-bottom: 7px; font-size: 18px; line-height: 18px; color: #333; font-weight: normal; }
		.main .title { display: block; font-weight: bold; color: #333; line-height: 26px; padding-top: 17px; }

	</style>
</head>
<body>
	
	<?php 
		$cate1Index = 0;
		$cate2Index = 3;
	?>

	<?php include("./header.php"); ?>
	<?php include("./crumb.php"); ?>

	<div class="main">

		<div class="map min-width-center" data-patch="min-width" data-min-width="1140" >
			<iframe width="100%" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://ditu.google.cn/maps?q=%E6%B5%99%E6%B1%9F%E7%9C%81%E6%9D%AD%E5%B7%9E%E5%B8%82%E6%B1%9F%E5%B9%B2%E5%8C%BA+%E9%92%B1%E6%B1%9F%E6%96%B0%E5%9F%8E%E5%9F%8E%E6%98%9F%E8%B7%AF89%E5%8F%B7&amp;hl=zh-CN&amp;ie=UTF8&amp;sll=35.86166,104.195397&amp;sspn=48.093689,93.076172&amp;brcurrent=3,0x344c99a9066e532d:0x6ac7a6fdfa6d9f6e,0,0x344bb629439aaa99:0xa7bfd183824de83a%3B5,0,0&amp;hnear=%E6%B5%99%E6%B1%9F%E7%9C%81%E6%9D%AD%E5%B7%9E%E5%B8%82%E6%B1%9F%E5%B9%B2%E5%8C%BA%E9%92%B1%E6%B1%9F%E8%B7%AF%E5%9F%8E%E6%98%9F%E8%B7%AF&amp;t=m&amp;hq=&amp;z=14&amp;iwloc=A&amp;ll=30.249672,120.208147&amp;output=embed"></iframe>
			<!-- <br /><small><a href="http://ditu.google.cn/maps?q=%E6%B5%99%E6%B1%9F%E7%9C%81%E6%9D%AD%E5%B7%9E%E5%B8%82%E6%B1%9F%E5%B9%B2%E5%8C%BA+%E9%92%B1%E6%B1%9F%E6%96%B0%E5%9F%8E%E5%9F%8E%E6%98%9F%E8%B7%AF89%E5%8F%B7&amp;hl=zh-CN&amp;ie=UTF8&amp;sll=35.86166,104.195397&amp;sspn=48.093689,93.076172&amp;brcurrent=3,0x344c99a9066e532d:0x6ac7a6fdfa6d9f6e,0,0x344bb629439aaa99:0xa7bfd183824de83a%3B5,0,0&amp;hnear=%E6%B5%99%E6%B1%9F%E7%9C%81%E6%9D%AD%E5%B7%9E%E5%B8%82%E6%B1%9F%E5%B9%B2%E5%8C%BA%E9%92%B1%E6%B1%9F%E8%B7%AF%E5%9F%8E%E6%98%9F%E8%B7%AF&amp;t=m&amp;hq=&amp;z=14&amp;iwloc=A&amp;ll=30.242672,120.204147&amp;source=embed" style="color:#0000FF;text-align:left">查看大图</a></small> -->
		</div>

		<div class="center">
			<div class="layout-temp">
				<div class="col-main">
					<div class="main-wrap">

						<span class="section-title">在线留言</span>	
						<form action="">
							<table>
								<tbody>
									<tr>
										<td><label for="msg-name">你的姓名：</label></td>
										<td><input type="text" name="" class="text-input" id="msg-name"></td>
									</tr>
									<tr>
										<td><label for="msg-contact">联系方式：</label></td>
										<td><input type="text" name="" class="text-input" id="msg-contact"></td>
									</tr>
									<tr>
										<td><label for="msg-title">留言标题：</label></td>
										<td><input type="text" name="" class="text-input" id="msg-title"></td>
									</tr>
									<tr>
										<td><label for="msg-content">详细内容：</label></td>
										<td><textarea name="" id="msg-content" cols="30" rows="10"></textarea></td>
									</tr>
									<tr>
										<td></td>
										<td>
											<input class="btn-highlight" type="submit" value="确认提交">
										</td>
									</tr>
								</tbody>
							</table>
						</form>
					</div>
				</div>
				<div class="col-sub">
					<span class="section-title">联系方式</span>

					<span class="title">娃哈哈商业股份公司</span>
					<ul>
						<li><label>地址：</label> 浙江省杭州市江干区秋涛路一弄6号</li>
						<li><label>电话：</label> 0571-86738313</li>
						<li><label>传真：</label> 0571-86738254</li>
						<li><label>邮箱：</label> <a href="mailto:retail-tenant@wahaha.com.cn" class="strong-link">retail-tenant@wahaha.com.cn</a></li>
					</ul>
					
					<span class="title">娃欧商场杭州店</span>
					<ul>
						<li><label>地址：</label> 浙江省杭州市江干区钱江新城城星路89号</li>
						<li><label>电话：</label> 0571-87339000 0571-87330001</li>
						<li><label>传真：</label> 86571-86738254</li>
						<li><label>微博：</label> <a href="" target="_blank" class="strong-link">@WAOW-PLAZA杭州店</a></li>
					</ul>

					<span class="section-title">交通示意</span>
					<ul>
						<li><label>地址：</label>杭州市江干区钱江新城城星路89号娃欧商场</li>
						<li><label>公交：</label>156路、105路、106路、84路、566路、325路、9路、110路、108路</li>
					</ul>
				</div>
			</div>
		</div>

	</div>

	<?php include("./footer.php"); ?>
</body>
</html>