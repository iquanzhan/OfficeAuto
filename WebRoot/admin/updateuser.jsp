<%@page import="com.chengxiaoxiao.domain.Users"%>
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

<link href="/OfficeAuto/lib/css/layui.css" rel="stylesheet" />

<script src="/OfficeAuto/lib/lay/modules/element.js"></script>
<script src="/OfficeAuto/lib/layui.js"></script>
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
<script type="text/javascript" src="../js/jquery-1.7.min.js"></script>
</head>
<body>

	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");

		int eid = Integer.parseInt(id);
		UsersServices services = new UsersServices();
		Users user = services.getUserById(eid);
	%>

	<div style="padding:10px 5px 0 5px;">

		<div
			style="line-height:26px;height:26px;margin-bottom:10px;margin-top:20px;">
			<h1 style="font-size:26px;margin-left:30px;">修改信息</h1>
		</div>

		<form class="layui-form" action="">
			<input type="hidden" id="userId" value="<%=user.getID()%>" />
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">用户名</label>
					<div class="layui-input-inline">
						<input type="text" value="<%=user.getUid()%>" id="uid"
							lay-verify="required" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-inline">
					<label class="layui-form-label">姓名</label>
					<div class="layui-input-inline">
						<input type="text" value="<%=user.getRealName()%>"
							autocomplete="off" id="realname" lay-verify="required"
							class="layui-input">
					</div>
				</div>
				<div class="layui-inline">
					<label class="layui-form-label">身份证号</label>
					<div class="layui-input-inline">
						<input type="text" id="idcard" value="<%=user.getIdCard()%>"
							lay-verify="identity" placeholder="" autocomplete="off"
							class="layui-input">
					</div>
				</div>



			</div>



			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">性别</label>

					<div class="layui-input-inline">

						<%
							if (user.getGender().equals("男")) {
						%>

						<input type="radio" name="sex" value="男" title="男" checked="">
						<input type="radio" name="sex" value="女" title="女">

						<%
							} else {
						%>
						<input type="radio" name="sex" value="男" title="男"> <input
							type="radio" name="sex" value="女" title="女" checked="checked">

						<%
							}
						%>

					</div>
				</div>
				<div class="layui-inline">
					<label class="layui-form-label">邮箱</label>
					<div class="layui-input-inline">
						<input type="text" id="email" value="<%=user.getEmail()%>"
							lay-verify="email" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-inline">
					<label class="layui-form-label">电话号码</label>
					<div class="layui-input-inline">
						<input type="tel" id="phone" value="<%=user.getPhoneNum()%>"
							lay-verify="phone" autocomplete="off" class="layui-input">
					</div>
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">出生日期</label>
					<div class="layui-input-inline">
						<input id="birthday" class="layui-input" placeholder="出生日期"
							value="<%=user.getBirthday()%>" lay-verify="required"
							onclick="layui.laydate({elem: this, festival: true})">
					</div>
				</div>
				<div class="layui-inline">
					<label class="layui-form-label">毕业院校</label>
					<div class="layui-input-inline">
						<input type="text" id="school" value="<%=user.getSchool()%>"
							name="idcard" lay-verify="required" autocomplete="off"
							class="layui-input">
					</div>
				</div>
				<div class="layui-inline">
					<label class="layui-form-label">部门</label>
					<div class="layui-input-inline">
						<select id="department">
							<%
								int roleId = user.getRoleId();

								if (roleId == 1) {
							%>
							<option value="0">管理员</option>
							<option value="1" selected="selected">学生处</option>
							<option value="2">党委</option>
							<option value="3">电信学院</option>
							<option value="4">艺术学院</option>
							<option value="5">教务处</option>
							<option value="6">招生处</option>
							<%
								} else if (roleId == 2) {
							%>
							<option value="0">管理员</option>
							<option value="1">学生处</option>
							<option value="2" selected="selected">党委</option>
							<option value="3">电信学院</option>
							<option value="4">艺术学院</option>
							<option value="5">教务处</option>
							<option value="6">招生处</option>

							<%
								} else if (roleId == 3) {
							%>
							<option value="0">管理员</option>
							<option value="1">学生处</option>
							<option value="2">党委</option>
							<option value="3" selected="selected">电信学院</option>
							<option value="4">艺术学院</option>
							<option value="5">教务处</option>
							<option value="6">招生处</option>

							<%
								} else if (roleId == 4) {
							%>
							<option value="0">管理员</option>
							<option value="1">学生处</option>
							<option value="2">党委</option>
							<option value="3">电信学院</option>
							<option value="4" selected="selected">艺术学院</option>
							<option value="5">教务处</option>
							<option value="6">招生处</option>
							<%
								} else if (roleId == 5) {
							%>
							<option value="0">管理员</option>
							<option value="1">学生处</option>
							<option value="2">党委</option>
							<option value="3">电信学院</option>
							<option value="4">艺术学院</option>
							<option value="5" selected="selected">教务处</option>
							<option value="6">招生处</option>

							<%
								} else if (roleId == 6) {
							%>
							<option value="0">管理员</option>
							<option value="1">学生处</option>
							<option value="2">党委</option>
							<option value="3">电信学院</option>
							<option value="4">艺术学院</option>
							<option value="5">教务处</option>
							<option value="6" selected="selected">招生处</option>

							<%
								}else if (roleId == 0) {
							%>
							%>
							<option value="0" selected="selected">管理员</option>
							<option value="1">学生处</option>
							<option value="2">党委</option>
							<option value="3">电信学院</option>
							<option value="4">艺术学院</option>
							<option value="5">教务处</option>
							<option value="6">招生处</option>

							<%
								}
							%>

						</select>
					</div>
				</div>

			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">家庭住址</label>
				<div class="layui-input-block">
					<input type="text" id="familyaddress" autocomplete="off"
						value="<%=user.getFamilyAddress()%>" lay-verify="required"
						placeholder="请输入家庭地址" class="layui-input" style="width:750px;">
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn" lay-submit="" lay-filter="demo1">修改信息</button>
					<button type="button" id='canel'
						class="layui-btn layui-btn-primary">取消</button>
				</div>
			</div>


		</form>





	</div>




	<script>
		layui
				.use(
						[ 'form', 'layedit', 'laydate' ],
						function() {
							var form = layui.form(), layer = layui.layer, layedit = layui.layedit, laydate = layui.laydate;

							//监听提交
							form.on('submit(demo1)', function(data) {

								var userId = $("#userId").val();
								var uid = $("#uid").val();
								var realname = $("#realname").val();
								var idcard = $("#idcard").val();
								var str = "";
								$("input[name='sex']:checked").each(function() {
									str = $(this).val();
								});

								var email = $("#email").val();
								var phone = $("#phone").val();
								var birthday = $("#birthday").val();
								var school = $("#school").val();
								var familyaddress = $("#familyaddress").val();

								var depart = $("#department").val();

								$.post("/OfficeAuto/User/UpdateUser", {
									"id" : userId,
									"uid" : uid,
									"realname" : realname,
									"idcard" : idcard,
									"sex" : str,
									"id" : userId,
									"email" : email,
									"phone" : phone,
									"birthday" : birthday,
									"school" : school,
									"familyaddress" : familyaddress,
									"depart" : depart
								}, function(data) {

									layer.msg(data["msg"]);

									setTimeout(function() {

										var index = parent.layer
												.getFrameIndex(window.name); //先得到当前iframe层的索引
										parent.layer.close(index); //再执行关闭   
									}, 1500);

								});

								return false;
							});

						});

		layui.use('laydate', function() {
			var laydate = layui.laydate;

		});
		$("#canel").click(function() {

			var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
			parent.layer.close(index); //再执行关闭   
		});
	</script>

</body>
</html>
