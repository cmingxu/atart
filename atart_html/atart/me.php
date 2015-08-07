<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>首页标题文案</title>
	<?php include("./common/common-style.php"); ?>
	<link rel="stylesheet" href="assets/css/views/me.css">
</head>
<body>
	<?php $currentCate1Index = 3; ?>
	<?php include("./common/header.php"); ?>

	<div class="page-content">

		<div class="login-box">
			<div class="title-bar">
				<span class="title">第一风景会员</span>
				<a class="register" href="">立即注册</a>
			</div>

			<form action="">
				<span class="login-input username">
					<input type="text" placeholder="邮箱/用户名/已验证手机">
				</span>
				<span class="login-input password">
					<input type="password" placeholder="密码">
				</span>

				<span class="login-opts">
					<span class="auto-login"><input type="checkbox">自动登录</span>
					<a class="fgt-psw" href="">忘记密码？</a>
				</span>
				<input type="submit" value="登录" class="login-btn">
			</form>

			<div class="third-party-login">
				使用合作网站账号登录第一风景: <br>
				<a href="">QQ</a>
				<a href="">新浪微博</a>
			</div>
		</div>

	</div>

	<?php include("./common/footer.php"); ?>
</body>
</html>
