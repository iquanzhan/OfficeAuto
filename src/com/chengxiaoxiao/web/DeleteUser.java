package com.chengxiaoxiao.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chengxiaoxiao.domain.UsersAddRole;
import com.chengxiaoxiao.services.UsersServices;

public class DeleteUser extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		response.setContentType("application/json");
		
		String id = request.getParameter("id");
		int did = Integer.parseInt(id);
		
		UsersServices services = new UsersServices();
		
		PrintWriter out = response.getWriter();
		
		if(services.delete(did))
		{
			out.print("{\"status\":\"ok\",\"msg\":\"删除成功\"}");
		}else {
			out.print("{\"status\":\"false\",\"msg\":\"删除失败\"}");
		}
	}

}
