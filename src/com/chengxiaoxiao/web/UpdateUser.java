package com.chengxiaoxiao.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chengxiaoxiao.domain.Users;
import com.chengxiaoxiao.services.UsersServices;

public class UpdateUser extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		response.setContentType("application/json");
		
		
		String id = request.getParameter("id");
		int eid = Integer.parseInt(id);
		
		String uid = request.getParameter("uid");
		String realname = request.getParameter("realname");
		String idcard = request.getParameter("idcard");

		String sex = request.getParameter("sex");

		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String birthday = request.getParameter("birthday");
		String school = request.getParameter("school");

		int department = Integer.parseInt(request.getParameter("depart"));

		String family = request.getParameter("familyaddress");
		
		
		Users users = new Users();
		
		users.setID(eid);
		users.setBirthday(birthday);
		users.setEmail(email);
		users.setFamilyAddress(family);
		users.setGender(sex);
		users.setIdCard(idcard);
		users.setPhoneNum(phone);
		users.setRealName(realname);
		users.setRoleId(department);
		users.setSchool(school);
		users.setUid(uid);
		
		
		UsersServices services = new UsersServices();
		
		PrintWriter out = response.getWriter();
		if(services.updateUser(users))
		{
			out.print("{\"status\":\"ok\",\"msg\":\"修改信息成功\"}");
		}
		else {
			out.print("{\"status\":\"false\",\"msg\":\"修改失败\"}");
		}
		
		

	}

}
