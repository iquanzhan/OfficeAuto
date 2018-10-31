package com.chengxiaoxiao.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chengxiaoxiao.domain.Users;
import com.chengxiaoxiao.services.UsersServices;
import com.chengxiaoxiao.utils.JDBCUtils;
import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

public class AddUser extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		
		String uid = request.getParameter("uid");
		String realname = request.getParameter("realname");
		String idcard = request.getParameter("idcard");

		String sex =request.getParameterValues("sex")[0];
		
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String birthday = request.getParameter("birthday");
		String school = request.getParameter("school");
		
		int department =Integer.parseInt(request.getParameter("department")) ;
	
		String family = request.getParameter("family");
		

		Users users = new Users();
		
		users.setBirthday(birthday);
		users.setEmail(email);
		users.setFamilyAddress(family);
		users.setGender(sex);
		users.setHeadImage("/OfficeAuto/images/touxiang.png");
		users.setIdCard(idcard);
		users.setPhoneNum(phone);
		users.setPwd("000000");
		users.setRealName(realname);
		users.setRoleId(department);
		users.setSchool(school);
		users.setUid(uid);
		
		
		UsersServices services = new UsersServices();
		boolean result =services.addUser(users);
		
		if (result) {
			response.sendRedirect("/OfficeAuto/admin/manageruser.jsp");
		}
		else {
			
		}
		
		
	}

}
