package com.chengxiaoxiao.web;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.CORBA.Request;

import com.chengxiaoxiao.domain.Users;
import com.chengxiaoxiao.services.UsersServices;

public class ResetUserPwd extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		
		String id = request.getParameter("id");
		
		int eid = Integer.parseInt(id);
		
		UsersServices services = new UsersServices();
		
		PrintWriter out = response.getWriter();
		if(services.resetUserpwd(eid))
		{
			out.print("{\"status\":\"ok\",\"msg\":\"密码重置成功\"}");
		}
		else {
			out.print("{\"status\":\"false\",\"msg\":\"密码重置失败\"}");
		}

		
	}
	
}
