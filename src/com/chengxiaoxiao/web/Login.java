package com.chengxiaoxiao.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.chengxiaoxiao.services.UsersServices;

public class Login extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		response.setContentType("application/json");

		PrintWriter out = response.getWriter();

		String uid = request.getParameter("uid");
		String pwd = request.getParameter("password");
		String validCode = request.getParameter("validCode").toLowerCase();

		if (!checkParam(out, uid, "请输入用户名") || !checkParam(out, pwd, "请输入密码")
				|| !checkParam(out, validCode, "请输入验证码")) {
			return;
		}

		HttpSession session = request.getSession();

		String vcode = (String) session.getAttribute("vcode");

		if (vcode == null || !vcode.equals(validCode)) {
			out.print("{\"status\":\"false\",\"msg\":\"验证码错误\"}");
			return;
		}
		UsersServices services = new UsersServices();

		Boolean isLogin = services.login(uid, pwd);

		if (isLogin) {

			String remeber = request.getParameter("remeber");

			Cookie theUsername = new Cookie("username", uid);

			if (remeber.equals("1")) {

				theUsername.setMaxAge(24 * 60 * 60 * 7);
				theUsername.setPath("/"); 
				
				response.addCookie(theUsername);
			} else {
				theUsername.setMaxAge(0);
				response.addCookie(theUsername);
			}

			HttpSession session1 = request.getSession();
			session1.setAttribute("username", uid);
			
			out.print("{\"status\":\"ok\",\"msg\":\"登陆成功\"}");

		} else {
			out.print("{\"status\":\"false\",\"msg\":\"用户名或者密码错误\"}");

		}

	}

	// 判断参数是否为空
	private Boolean checkParam(PrintWriter out, String uid, String alertMsg) {

		if (uid == null || uid.length() <= 0) {
			out.print("{\"status\":\"false\",\"msg\":\"" + alertMsg + "\"}");
			return false;
		} else {
			return true;
		}

	}

}
