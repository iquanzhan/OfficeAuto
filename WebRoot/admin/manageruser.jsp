<%@page import="com.chengxiaoxiao.domain.UsersAddRole"%>
<%@page import="com.chengxiaoxiao.services.UsersServices"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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

<link href="../lib/css/layui.css" rel="stylesheet" />

<script src="../lib/lay/modules/element.js"></script>
<script src="../lib/layui.js"></script>
<script type="text/javascript" src="../js/jquery-1.7.min.js"></script>
<style type="text/css">
.notes { /*border-top: 3px solid #1AA094;*/
	background: #fff;
	height: 35px;
	line-height: 35px;
}

.update p {
	line-height: 30px;
}

.layui-form-item {
	margin-top: 35px;
}
</style>

</head>
<body>
	<div class="layui-header header"
		style="line-height:60px;background:#23262E;padding-left:30px;position:fixed;left:0;top:0;width:100%;">

		<a href="#"> <img src="../images/logo.png" width="160" /> </a>

		<ul class="layui-nav" style="float:right;background:#23262E">

			<li class="layui-nav-item"><a href=""> <img
					src="../images/index_message.png" height="16" /> </a></li>
			<li class="layui-nav-item"><a href=""> <img
					src="../images/index_mail.png" height="16" /> </a></li>
			<li class="layui-nav-item"><a href=""> <img
					src="../images/index_daiban.png" height="16" /> </a></li>

			<li class="layui-nav-item"><a href=""> <img
					src="../images/touxiang.jpg" height="25"
					style="border-radius:25px;" />&nbsp;&nbsp;&nbsp;&nbsp;盖茨 </a></li>
			<li class="layui-nav-item"><a href=""> <img
					src="../images/index_logout.png" height="18" /> </a></li>


		</ul>

	</div>

	<ul class="layui-nav layui-nav-tree layui-nav-side" lay-filter="demo"
		style="margin-top:60px;border-radius:0px;">
		<li style="padding-left:20px;margin-top:8px;"><img
			src="../images/touxiang.jpg" height="45"
			style="border-radius:45px;float:left;" />
			<div style="float:left">
				<span style="margin-left:10px;font-weight:bold;">盖茨</span>
				<div>
					<img src="../images/online.png" />在线
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
		<li class="layui-nav-item  layui-nav-itemed"><a href="#">用户管理</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="/OfficeAuto/admin/adduser.html">账户添加</a>
				</dd>
				<dd class="layui-this">
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
	<div style="margin-left:210px;margin-top:65px;padding:10px 5px 0 5px;">

		<div style="line-height:26px;height:26px;margin-bottom:10px;">
			<h1 style="float:left;font-size:26px;">账户管理</h1>

			<span class="layui-breadcrumb" style="float:right;font-size:12px;">
				<a href="#">首页</a> <a><cite>账户管理</cite> </a> </span>
		</div>
		<div style="clear:both;"></div>
		<div style="clear:both;margin-top:20px;">

			<a href="adduser.html">
				<button class="layui-btn layui-btn-small layui-btn-normal"
					style="float:left;">
					<i class="layui-icon" style="font-size: 30px; ">&#xe654;</i> 添加
				</button> </a>


			<div style="float:right;">

				<div class="layui-input-inline">
					<input type="text" name="username" lay-verify="required"
						style="height:30px;" placeholder="请输入" autocomplete="off"
						class="layui-input">

				</div>
				<div class="layui-inline" style="margin-left:-4px;">
					<button class="layui-btn layui-btn-normal layui-btn-small"
						style="height:30px;">
						<i class="layui-icon">&#xe615;</i>
					</button>
				</div>

			</div>
		</div>
		<div style="clear:both;"></div>

		<table class="layui-table" lay-skin="line" style="margin-top:10px;">
			<colgroup>
				<col width="150">
				<col width="150">
				<col width="200">
				<col>
			</colgroup>
			<thead>
				<tr>
					<th>ID</th>
					<th>部门</th>
					<th>用户名</th>
					<th>真实姓名</th>
					<th>电话</th>
					<th>操作</th>
				</tr>
			</thead>

			<tbody>
				<%
					UsersServices services = new UsersServices();
												            
												            	List<UsersAddRole> list =services.getUsers();
												            	
												            	for(int i=0;i<list.size();i++)
												            	{
												            		UsersAddRole item = list.get(i);
				%>

				<tr>
					<td><%=item.getId()%></td>
					<td><%=item.getRoleName()%></td>
					<td><%=item.getUid()%></td>
					<td><%=item.getRealName()%></td>
					<td><%=item.getPhoneNum()%></td>
					<td>

						<button ids="<%=item.getId()%>"
							class="layui-btn layui-btn-normal layui-btn-small notice">
							<i class="layui-icon"></i>
						</button>
						<button ids="<%=item.getId()%>"
							class="layui-btn layui-btn-normal layui-btn-small delete">
							<i class="layui-icon"></i>
						</button>
						<button ids="<%=item.getId()%>"
							class="layui-btn layui-btn-normal layui-btn-small resetPwd">
							重置密码</button>
					</td>
				</tr>

				<%
					}
				%>

			</tbody>
		</table>



		<div
			style="width:100%;height:50px;line-height:50px;background:#F2F2F2;margin-top:50px;margin-left:-15px;position:fixed;bottom:0;">
			<span style="margin-left:10px;">Copyright © 2017 . All rights
				reserved.</span> <span style="margin-left:10px;float:right;">2017年06月19日,
				星期一</span>
		</div>


	</div>




	<script>
		//注意：导航 依赖 element 模块，否则无法进行功能性操作
		layui.use('element', function() {
			var element = layui.element();

			//监听导航点击
			element.on('nav(demo)', function(elem) {
				//console.log(elem)
				//layer.msg(elem.text());
			});

		});

		layui
				.use(
						[ 'form', 'layedit', 'laydate' ],
						function() {
							var form = layui.form(), layer = layui.layer, layedit = layui.layedit, laydate = layui.laydate;

							//创建一个编辑器
							var editIndex = layedit.build('LAY_demo_editor');

							//监听提交
							form.on('submit(demo1)', function(data) {
								layer.alert(JSON.stringify(data.field), {
									title : '最终的提交信息'
								})
								return false;
							});

						});

		layui.use('laydate', function() {
			var laydate = layui.laydate;

		});

		//删除用户
		$(".delete").click(function() {

			var check = confirm("确认要删除吗？");

			if (!check) {
				return;
			}
			var item = $(this);

			var id = item.attr("ids");

			$.post("/OfficeAuto/User/DeleteUser", {
				"id" : id
			}, function(data) {

				if (data["status"] != 'ok') {

					layer.msg(data["msg"]);

				} else {

					window.location = "/OfficeAuto/admin/manageruser.jsp";
				}

			});
		});

		//重置密码
		$(".resetPwd").click(function() {

			var check = confirm("确认要为此用户重置密码吗？");

			if (!check) {
				return;
			}
			var item = $(this);

			var id = item.attr("ids");

			$.post("/OfficeAuto/User/ResetUserPwd", {
				"id" : id
			}, function(data) {

				layer.msg(data["msg"]);

			});
		});

		//弹出一个iframe层
		$('.notice').on('click', function() {

			var item = $(this);
			var ids = item.attr("ids");

			layer.open({
				type : 2,
				title : '修改账号信息',
				maxmin : true,
				shadeClose : true, //点击遮罩关闭层
				area : [ '1000px', '520px' ],
				content : 'updateuser.jsp?id=' + ids
			});
		});
	</script>

</body>
</html>
