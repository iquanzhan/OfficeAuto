<%@page import="com.chengxiaoxiao.services.UsersServices"%>
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
<meta charset="utf-8" />
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title></title>

<link href="lib/css/layui.css" rel="stylesheet" />

<script src="lib/lay/modules/element.js"></script>
<script src="lib/layui.js"></script>

</head>
<body>


	<%
		HttpSession sess = request.getSession();

		String name = (String) sess.getAttribute("username");
		if (name == null || name.length() <= 0) {
			response.sendRedirect("login.jsp");

		}

		UsersServices services = new UsersServices();
		boolean isManager = services.getUserIsManager(name);
	%>


	<div class="layui-header header"
		style="line-height:60px;background:#393D49;padding-left:30px;">

		<a href="#"> <img src="images/logo.png" width="160" /> </a>

		<ul class="layui-nav" style="float:right;">

			<li class="layui-nav-item"><a href=""> <img
					src="images/index_message.png" height="16" /> </a>
			</li>
			<li class="layui-nav-item"><a href=""> <img
					src="images/index_mail.png" height="16" /> </a>
			</li>
			<li class="layui-nav-item"><a href=""> <img
					src="images/index_daiban.png" height="16" /> </a>
			</li>

			<li class="layui-nav-item"><a href=""> <img
					src="images/touxiang.jpg" height="25" style="border-radius:25px;" />&nbsp;&nbsp;&nbsp;&nbsp;盖茨
			</a>
			</li>
			<li class="layui-nav-item"><a href=""> <img
					src="images/index_logout.png" height="18" /> </a>
			</li>


		</ul>

	</div>


	<%
		if (isManager) {
	%>
	<ul class="layui-nav layui-nav-tree layui-nav-side" lay-filter="demo"
		style="margin-top:60px;border-radius:0px;">
		<li style="padding-left:20px;margin-top:8px;"><img
			src="/OfficeAuto/images/touxiang.jpg" height="45"
			style="border-radius:45px;float:left;" />
			<div style="float:left">
				<span style="margin-left:10px;font-weight:bold;">盖茨</span>
				<div>
					<img src="/OfficeAuto/images/online.png" />在线
				</div>

			</div></li>
		<li class="layui-nav-item" style="clear:both;"><a
			href="javascript:;">系统管理</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="javascript:;">个人信息</a>
				</dd>

				<dd>
					<a href="">修改密码</a>
				</dd>
			</dl></li>
		<li class="layui-nav-item"><a href="#">用户管理</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="/OfficeAuto/admin/adduser.html">账户添加</a>
				</dd>
				<dd>
					<a href="/OfficeAuto/admin/manageruser.jsp">用户管理</a>
				</dd>
			</dl></li>
		<li class="layui-nav-item"><a href="#">流程管理</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="javascript:;">流程审核</a>
				</dd>
			</dl></li>
		<li class="layui-nav-item"><a href="#">公告通知</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="javascript:;">发布公告</a>
				</dd>
				<dd>
					<a href="javascript:;">公告通知</a>
				</dd>
			</dl></li>
		<li class="layui-nav-item"><a href="javascript:;">邮件管理</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="">邮件管理</a>
				</dd>
			</dl></li>
		<li class="layui-nav-item"><a href="#">任务管理</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="javascript:;">任务管理</a>
				</dd>
				<dd>
					<a href="javascript:;">布置任务</a>
				</dd>
			</dl></li>
		<li class="layui-nav-item"><a href="#">通讯录</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="javascript:;">通讯录</a>
				</dd>
			</dl></li>
		<li class="layui-nav-item"><a href="#">文件管理</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="javascript:;">文件管理</a>
				</dd>
			</dl></li>
		<li class="layui-nav-item"><a href="#">笔记管理</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="javascript:;">笔记管理</a>
				</dd>
			</dl></li>
	</ul>
	<%
		} else {
	%>

	<ul class="layui-nav layui-nav-tree layui-nav-side" lay-filter="demo"
		style="margin-top:60px;">
		<li style="padding-left:20px;margin-top:8px;"><img
			src="images/touxiang.jpg" height="45"
			style="border-radius:45px;float:left;" />
			<div style="float:left">
				<span style="margin-left:10px;font-weight:bold;">盖茨</span>
				<div>
					<img src="images/online.png" />在线
				</div>

			</div>
		</li>
		<li class="layui-nav-item" style="clear:both;"><a
			href="javascript:;">系统管理</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="javascript:;">个人信息</a>
				</dd>
				<dd>
					<a href="javascript:;">绑定邮箱</a>
				</dd>
				<dd>
					<a href="">修改密码</a>
				</dd>
			</dl>
		</li>
		<li class="layui-nav-item"><a href="#">我的老师</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="#">我的老师</a>
				</dd>
			</dl>
		</li>
		<li class="layui-nav-item"><a href="#">学生社团</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="javascript:;">学生社团</a>
				</dd>
			</dl>
		</li>
		<li class="layui-nav-item"><a href="#">在线评教</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="javascript:;">在线评教</a>
				</dd>
			</dl>
		</li>
		<li class="layui-nav-item"><a href="javascript:;">网上选课</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="">选课</a>
				</dd>
				<dd>
					<a href="">退选</a>
				</dd>
				<dd>
					<a href="">我的选修老师</a>
				</dd>
			</dl>
		</li>
		<li class="layui-nav-item"><a href="#">就业登记</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="javascript:;">就业登记</a>
				</dd>
			</dl>
		</li>
		<li class="layui-nav-item"><a href="#">通讯录</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="javascript:;">通讯录</a>
				</dd>
			</dl>
		</li>
		<li class="layui-nav-item"><a href="#">文件管理</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="javascript:;">文件管理</a>
				</dd>
			</dl>
		</li>
	</ul>



	<%
		}
	%>



	<div style="margin-left:210px;margin-top:15px;">
		<fieldset class="layui-elem-field" style="width:500px;float:left;">
			<legend>新闻通知</legend>
			<div class="layui-field-box">
				<table class="layui-table" lay-skin="line" style="width:500px">
					<thead>
						<tr>
							<th width="100">日期</th>
							<th>标题</th>

						</tr>
					</thead>
					<tr>
						<td>2017-05-24</td>
						<td>周一上午全体员工会议</td>

					</tr>
					<tr>
						<td>2017-05-24</td>
						<td>周一上午全体员工会议</td>
					</tr>
					<tr>
						<td>2017-05-24</td>
						<td>周一上午全体员工会议</td>
					</tr>
					<tr>
						<td>2017-05-24</td>
						<td>周一上午全体员工会议</td>
					</tr>
					<tr>
						<td>2017-05-24</td>
						<td>周一上午全体员工会议</td>
					</tr>
					<tr>
						<td>2017-05-24</td>
						<td>周一上午全体员工会议</td>
					</tr>
				</table>

			</div>
		</fieldset>
		<fieldset class="layui-elem-field"
			style="width:580px;float:right;margin-right:8px;">
			<legend>登录日志</legend>
			<div class="layui-field-box">
				<table class="layui-table" lay-skin="line">
					<thead>
						<tr>
							<th width="50">序号</th>
							<th>登录IP</th>
							<th width="150">登录时间</th>
							<th>登录方式</th>
						</tr>
					</thead>

					<tr>
						<td>1</td>
						<td>225.255.255.255</td>
						<td>2017-06-11 18:29:57</td>
						<td>网页登录</td>
					</tr>
					<tr>
						<td>1</td>
						<td>225.255.255.255</td>
						<td>2017-06-11 18:29:57</td>
						<td>网页登录</td>
					</tr>
					<tr>
						<td>1</td>
						<td>225.255.255.255</td>
						<td>2017-06-11 18:29:57</td>
						<td>网页登录</td>
					</tr>
					<tr>
						<td>1</td>
						<td>225.255.255.255</td>
						<td>2017-06-11 18:29:57</td>
						<td>网页登录</td>
					</tr>
					<tr>
						<td>1</td>
						<td>225.255.255.255</td>
						<td>2017-06-11 18:29:57</td>
						<td>网页登录</td>
					</tr>
					<tr>
						<td>1</td>
						<td>225.255.255.255</td>
						<td>2017-06-11 18:29:57</td>
						<td>网页登录</td>
					</tr>

				</table>

			</div>
		</fieldset>



		<fieldset class="layui-elem-field" style="width:640px;">
			<legend>更新日志</legend>
			<div class="layui-field-box">增加不支持IE8的页面提示
				修复页面链接和表单提交默认在新窗口中打开的问题 更新suggest插件，修复错位问题 升级bootstrap版本到3.3.6版本
				升级layer到2.1版本 升级echarts到2.2.7版本 升级webuploader到0.1.5版本
				修复网络条件不好情况下，页面加载提示遮挡页面无法操作的问题</div>
		</fieldset>

	</div>








	<script>
		//注意：导航 依赖 element 模块，否则无法进行功能性操作
		layui.use('element', function() {
			var element = layui.element();

			//监听导航点击
			element.on('nav(demo)', function(elem) {
				//console.log(elem)
				layer.msg(elem.text());
			});
		});
	</script>

</body>
</html>
