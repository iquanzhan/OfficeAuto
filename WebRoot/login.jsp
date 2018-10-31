<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title></title>
<link href="lib/css/layui.css" rel="stylesheet" />

<style type="text/css">
#content {
	width: 300px;
	height: 280px;
	background: #ffffff;
	border-radius: 10px;
	color: #666;
	margin: 0 auto;
	margin-top: 25px;
	text-align: left;
	padding: 15px;
}

#login-box {
	text-align: center;
	padding: 80px;
}

.login_title {
	text-align: center;
	padding: 0 20px 20px 20px;
	font-size: 16px;
}

.mylink:link,.mylink:hover,.mylink:visited {
	color: #01AAED;
}
</style>

<script type="text/javascript" src="js/jquery-1.7.min.js"></script>
<script src="lib/layui.js"></script>
<script src="lib/lay/modules/form.js"></script>

<script type="text/javascript">
	function changeCode() {
		$("#imgCode").attr("src", "User/ValidCode?num=" + Math.random())
	}
</script>

</head>
<body
	style="background:url(images/login_bg.jpg) no-repeat #222D32; background-size:100%;">

	<%
		Cookie cookie[] = request.getCookies();

		String username = "";

		for (int n = 0; n < cookie.length; n++) {
			Cookie newCookie = cookie[n];

			if (newCookie.getName().equals("username")) {
				username = newCookie.getValue();
			}
		}
	%>

	<div id="login-box">
		<img src="images/logo.png" width="190" />
		<div id="content">
			<p class="login_title">欢迎使用学生管理系统</p>
			<form method="post" class="layui-form">
				<div class="layui-form-item">
					<label class="layui-form-label" style="width:50px;">用户名</label>
					<div class="layui-input-inline">
						<input type="text" id="uid" required lay-verify="required"
							placeholder="请输入用户名" autocomplete="off" class="layui-input"
							value="<%=username%>">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label" style="width:50px;">密&nbsp;&nbsp;&nbsp;&nbsp;码</label>
					<div class="layui-input-inline">
						<input type="password" id="pwd" required lay-verify="required"
							placeholder="请输入密码" autocomplete="off" class="layui-input">
					</div>

				</div>
				<div class="layui-form-item">
					<label class="layui-form-label" style="width:50px;"> 验证码 </label>

					<div class="layui-input-inline">
						<input type="text" required lay-verify="required" id="code"
							placeholder="请输入验证码" autocomplete="off" class="layui-input"
							style="width:100px;display:inline;"> <img id="imgCode"
							src="User/ValidCode" style="cursor:pointer;"
							onclick="changeCode()" width="80" height="30" alt="验证码" />
					</div>

				</div>

				<div class="layui-form-item" style="width:100%;padding-left:28px;">
					<div class="layui-input-inline" style="text-align:left;width:100%">
						<input type="checkbox" id="remeber" name="remeber" checked="checked" title="记住我">
						<button class="layui-btn" id="login" lay-submit
							lay-filter="formDemo" style="margin-left:60px;">登录</button>
					</div>
				</div>
				<a href="rember.html"
					style="float:left;margin-left:30px;margin-bottom:10px;"
					class="mylink">忘记密码?</a>


			</form>

		</div>

	</div>

	<script>
		var i = 0;
		layui.use('form', function() {
			var form = layui.form();

			//监听提交
			form.on('submit(formDemo)', function(data) {

				var uid = $("#uid").val();
				var pwd = $("#pwd").val();
				var code = $("#code").val();

				var field =data.field;
				
				var check =0;
				if(field.remeber)
				{
					check=1;
				}
				
				

				$.post("User/Login", {
					"uid" : uid,
					"password" : pwd,
					"validCode" : code,
					"remeber":check
				}, function(datas) {

					var uid = $("#uid").val();
					var pwd = $("#pwd").val();
					var code = $("#code").val();

					if (datas["status"] != 'ok') {
						changeCode();
						layer.msg(datas["msg"]);
					} else {
						window.location.href="/OfficeAuto/index.jsp";
					}

				});

				return false;
			});
		});
	</script>

</body>
</html>