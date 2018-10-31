package com.chengxiaoxiao.utils;

import java.sql.*;
import java.util.Properties;


public class JDBCUtils {
	private static Properties properties = new Properties();
	private static String driver;
	private static String url;
	private static String uid;
	private static String pwd;

	private static Connection conn;
	private static ResultSet rs;
	private static PreparedStatement ps;

	static {

		try {
			properties.load(JDBCUtils.class.getClassLoader()
					.getResourceAsStream("db.properties"));
			driver = properties.getProperty("driver");
			uid = properties.getProperty("uid");
			pwd = properties.getProperty("pwd");
			url = properties.getProperty("url");

			Class.forName(driver);

		} catch (Exception e) {
			// TODO: handle exception
		}

	}

	// /获取数据库连接
	public static void getConnection() {
		try {
			conn = DriverManager.getConnection(url, uid, pwd);

		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	// 关闭数据库连接
	public static void closeConnection() {
		try {
			if (conn != null) {
				conn.close();
			}
			if (ps != null) {
				ps.close();
			}
			if (rs != null) {
				rs.close();
			}

		} catch (Exception e) {
			// TODO: handle exception
		}

	}

	// 执行查询方法
	public static ResultSet executeQuery(String sql, String[] pms) {

	
		getConnection();

		try {

			ps = conn.prepareStatement(sql);

			if (pms != null) {
				for (int i = 0,j=1; i < pms.length; i++) {
					ps.setString(j++, pms[i]);
				}
			}

			rs = ps.executeQuery();

		} catch (Exception e) {
			// TODO: handle exception
		}

		

		return rs;

	}

	// /执行增删改方法
	public static int executeUpdate(String sql, String[] pms) {

		getConnection();

		int num = 0;
		try {

			ps = conn.prepareStatement(sql);

			if (pms != null) {
				for (int i = 0,j=1; i < pms.length; i++) {
					ps.setString(j++, pms[i]);
				}
			}

			num = ps.executeUpdate();

		} catch (Exception e) {
			// TODO: handle exception
		}

		

		return num;

	}

}
