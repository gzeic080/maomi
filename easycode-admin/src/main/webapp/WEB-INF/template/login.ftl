<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
		<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="assets/css/ace.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="css/style.css" />
		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
		<script src="assets/js/ace-extra.min.js"></script>
		<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
		<script src="js/jquery-1.9.1.min.js"></script>
		<script src="assets/layer/layer.js" type="text/javascript"></script>
		<title>登陆</title>
		<script type="text/javascript">
				$(function(){
					var  str="${error}";
					if (str !== null && str !== undefined && str !=='') { 
						layer.alert(str, {
							title: '提示',
							icon: 5,
						});
					} 
				});
		</script>
	</head>

	<body class="login-layout">
		<div class="logintop">
			<span>欢迎后台管理界面平台</span>
			<ul>
				<li>
					<a href="#">返回首页</a>
				</li>
				<li>
					<a href="#">帮助</a>
				</li>
				<li>
					<a href="#">关于</a>
				</li>
			</ul>
		</div>
		<div class="loginbody">
			<div class="login-container">
				<div class="center">
					<h1>
						<i class="icon-leaf green"></i>
						<span class="orange">乐购商城</span>
						<span class="white">后台管理系统</span>
					</h1>
					<h4 class="white">Background Management System</h4>
				</div>
				<div class="space-6"></div>
				<div class="position-relative">
					<div id="login-box" class="login-box widget-box no-border visible">
						<div class="widget-body">
							<div class="widget-main">
								<h4 class="header blue lighter bigger">
									<i class="icon-coffee green"></i>
									管理员登陆
								</h4>

								<div class="login_icon"><img src="images/login.png" /></div>

								<form id="loginfrom" action="login" method="post">
									<fieldset>
										<label class="block clearfix">
											<span class="block input-icon input-icon-right">
												<input type="text" class="form-control" placeholder="用户名"  name="username">
												<i class="icon-user"></i>
											</span>
										</label>

										<label class="block clearfix">
											<span class="block input-icon input-icon-right">
												<input type="password" class="form-control" placeholder="密码" name="password">
												<i class="icon-lock"></i>
											</span>
										</label>

										<label class="block clearfix">
											<input type="text" placeholder="验证码" class="form-control" name="validateCode" style="width:155px;height: 34px;float: left;"  />
											<img id="codePic" src="validateCode"  style="float: left;margin: 0px 0px 0px 5px;display: inline-block;"/>
										</label>

										<div class="space"></div>

										<div class="clearfix">
											<label class="inline">
												<input type="checkbox" class="ace" name="rememberMe">
												<span class="lbl">记住密码</span>
											</label>

											<button type="button" class="width-35 pull-right btn btn-sm btn-primary" id="login_btn">
												<i class="icon-key">登陆</i>
											</button>
										</div>

										<div class="space-4"></div>
									</fieldset>
								</form>
							</div>
							<div class="toolbar clearfix">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="loginbm">版权所有 2016-2050
		</div><strong></strong>
	</body>

</html>
<script>
	$('#login_btn').on('click', function() {
		var num = 0;
		var str = "";
		$("input").each(function(n) {
			if($(this).val() == "") {
				layer.alert(str += "" + $(this).attr("placeholder") + "不能为空！\r\n", {
					title: '提示框',
					icon: 0,
				});
				num++;
				return false;
			}
		});
		if(num > 0) {
			return false;
		} else {
			$("#loginfrom").submit();
		}
	})
	$('#codePic').on('click', function() {
		$("#codePic").attr("src","${pageContext.request.contextPath}/validateCode?flag="+Math.random());
	})
</script>