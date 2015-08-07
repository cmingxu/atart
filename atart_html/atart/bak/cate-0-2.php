<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>走进欧娃 欧娃介绍 标题文案</title>
	<link rel="stylesheet" href="css/dpl.css">
	<style>
		/* 防止滚动条闪现 */
		html { overflow-y: scroll; }

		.main { }

		.main .margin-right-90 { margin-right: 90px; }
		.main .margin-right-50-list li { margin-right: 50px; }
		.main .inline-list li  { display: inline; }

		.main .job-list .job-item { padding-bottom: 15px; }

		.main .job-list .job-title,
		.main .job-list .job-title:visited { display: block; position: relative; height: 35px; padding-left: 38px; background: #f0f0f0; }
		.main .job-list .job-title:hover   { text-decoration: none; }
		.main .job-list .job-title span    { display: block; padding-left: 15px; font-weight: normal; color: #333; font-size: 14px; line-height: 35px; background: #f8f8f8; }
		.main .job-list .job-title:hover span   { background: #f0f0f0; }
		.main .job-list .job-title:before,
		.main .job-list .job-title .before  { display: block; content: ""; position: absolute; height: 22px; width: 1px; top: 50%; left: 19px; margin-top: -11px; background: #db2f10; overflow: hidden; }
		.main .job-list .job-title:after,
		.main .job-list .job-title .after   { display: block; content: ""; position: absolute; height: 1px; width: 22px; top: 50%; left:  8px; margin-top: -1px;  background: #db2f10; overflow: hidden; }

		.main .job-list .job-detail { display: none; margin-left: 38px; background: #f8f8f8; padding: 13px 13px 20px 20px; }
		.main .job-list .job-detail .title { display: block; color: #333; font-weight: bold; line-height: 26px; padding-top: 17px; padding-bottom: 6px; }
		.main .job-list .job-detail ul { display: inline-block; *display: inline; zoom:1; vertical-align: top; }
		.main .job-list .job-detail p { color: #333; padding-top: 17px; }

		.main .job-list .unfold .job-detail { display: block; }
		.main .job-list .unfold .job-detail { display: block; }
		.main .job-list .unfold .job-title:before,
		.main .job-list .unfold .job-title .before { display: none; }
		.main .job-list .unfold .job-title span,
		.main .job-list .unfold .job-title:visited span 
		.main .job-list .unfold .job-title:hover span   { color: #db2f10; }


	</style>
</head>
<body>
	
	<?php 
		$cate1Index = 0;
		$cate2Index = 2;
	?>

	<?php include("./header.php"); ?>
	<?php include("./crumb.php"); ?>

	<div class="center main">
		<ul class="job-list">
			<?php 
				$repeat = Array( 1, 2, 3, 4 );
			?>
			<?php foreach ($repeat as $key => $value): ?>
			<li class="job-item" data-dpl="toggle-class" data-class-name="unfold">
				<a href="javascript:void(0)" class="job-title" data-patch="pseudo" data-role="trigger"><span>杭州 / 会计 / 会计师</span></a>
				<div class="job-detail">
					<ul class="margin-right-90">
						<li><label>招聘职位：</label> 会计/会计师</li>
						<li><label>工作年限：</label> 1-2年 </li>
						<li><label>工作区域：</label> 杭州  滨江</li>
						<li><label>转正工资：</label> 2000-3000元</li>
						<li><label>起始时间：</label> 2013年4月8日</li>
					</ul>

					<ul>
						<li><label>性别要求：</label> 男</li>
						<li><label>招聘人数：</label> 5人 </li>
						<li><label>学历要求：</label> 大专 </li>
						<li><label>年龄要求：</label> 18-35岁</li>
						<li><label>结束时间：</label> 2013年10月8日</li>
					</ul>

					<span class="title">职位描述:</span>
					<ul>
						<li>1、会计相关专业，大专以上学历；</li>
						<li>2、3年以上工作经验，有一般纳税人企业工作经验者优先；</li>
						<li>3、认真细致，爱岗敬业，吃苦耐劳，有良好的职业操守；</li>
						<li>4、思维敏捷，接受能力强，能独立思考，善于总结工作经验；</li>
						<li>5、熟练应用财务及Office办公软件，对金蝶、用友等财务系统有实际操作者优先；</li>
						<li>6、有会计从业资格证书，同时具备会计初级资格证者优先考虑。</li>
					</ul>

					<span class="title">联系方式:</span>
					<ul class="inline-list margin-right-50-list">
						<li><label>联系人：</label> 陈小姐</li>
						<li><label>电话：</label> 0571-88589988</li>
						<li><label>邮箱：</label> hr@mail.com</li>
					</ul>
					
					<p>
						需要报名的请下载统一报名格式表格，并发送到联系人邮箱。  <a href="" class="strong-link">点击下载报名表格</a>
					</p>

				</div>
			</li>
			<?php endforeach ?>
		</ul>
	</div>

	<?php include("./footer.php"); ?>
</body>
</html>