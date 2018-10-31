package com.chengxiaoxiao.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import sun.jdbc.odbc.JdbcOdbc;

import com.chengxiaoxiao.domain.Users;
import com.chengxiaoxiao.domain.UsersAddRole;
import com.chengxiaoxiao.utils.JDBCUtils;
import com.sun.jmx.snmp.UserAcl;

import java.util.*;

public class UsersDao {

	// 添加账户
	public int add(Users user) {

		String sql = "INSERT INTO users(uid,pwd,IdCard,FamilyAddress,PhoneNum,Email,School,Gender,HeadImage,Birthday,RealName,RoleId) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";

		String[] pms = { user.getUid(), user.getPwd(), user.getIdCard(),
				user.getFamilyAddress(), user.getPhoneNum(), user.getEmail(),
				user.getSchool(), user.getGender(), user.getHeadImage(),
				user.getBirthday(), user.getRealName(), user.getRoleId() + "" };

		return JDBCUtils.executeUpdate(sql, pms);

	}

	//修改用户信息
	public int updateUser(Users user) {

		String sql = "update users SET uid=?,IdCard=?,FamilyAddress=?,PhoneNum=?,Email=?,School=?,Gender=?,Birthday=?,RealName=?,RoleId=? where id=?";

		String[] pms = { user.getUid(), user.getIdCard(),
				user.getFamilyAddress(), user.getPhoneNum(), user.getEmail(),
				user.getSchool(), user.getGender(), user.getBirthday(),
				user.getRealName(), user.getRoleId() + "", user.getID() + "" };
		
		
		return JDBCUtils.executeUpdate(sql, pms);

	}

	// 进行登录
	public int getLoginRow(String uid, String pwd) {

		String sql = "select COUNT(*) from users where uid=? and Pwd=?";
		String[] pms = { uid, pwd };

		ResultSet rSet = JDBCUtils.executeQuery(sql, pms);

		try {
			if (rSet.next()) {
				return rSet.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return 0;
	}

	// 获取所有用户信息，包括部门信息
	public List<UsersAddRole> getUsers() {

		String sql = "select u.Id,u.Uid,u.RealName,u.PhoneNum,r.RoleName from users as u INNER JOIN (roles as r) ON u.RoleId=r.Id";

		List<UsersAddRole> list = new ArrayList<UsersAddRole>();

		ResultSet rs = JDBCUtils.executeQuery(sql, null);

		try {
			while (rs.next()) {

				UsersAddRole usersAddRole = new UsersAddRole();
				usersAddRole.setId(rs.getInt(1));
				usersAddRole.setUid(rs.getString(2));
				usersAddRole.setRealName(rs.getString(3));
				usersAddRole.setPhoneNum(rs.getString(4));
				usersAddRole.setRoleName(rs.getString(5));

				list.add(usersAddRole);

			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;

	}

	// 根据id获取User信息
	public Users getUserById(int id) {
		String sql = "select * from users where id=?";
		String[] pms = { id + "" };

		ResultSet rSet = JDBCUtils.executeQuery(sql, pms);

		try {
			if (rSet.next()) {
				Users users = new Users();

				users.setID(rSet.getInt(1));
				users.setUid(rSet.getString(2));
				users.setPwd(rSet.getString(3));
				users.setIdCard(rSet.getString(4));
				users.setFamilyAddress(rSet.getString(5));
				users.setPhoneNum(rSet.getString(6));
				users.setEmail(rSet.getString(7));
				users.setSchool(rSet.getString(8));
				users.setGender(rSet.getString(9));
				users.setHeadImage(rSet.getString(10));
				users.setBirthday(rSet.getString(11));
				users.setRealName(rSet.getString(12));
				users.setRoleId(rSet.getInt(13));

				return users;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;

	}

	// 根据ID删除用户
	public int delete(int id) {

		String sql = "delete from users where id=?";
		String[] pms = new String[] { id + "" };

		return JDBCUtils.executeUpdate(sql, pms);

	}

	// 重置密码
	public int resetUserpwd(int id) {

		String sql = "update users SET Pwd='000000' where id=?";
		String[] pms = { id + "" };

		return JDBCUtils.executeUpdate(sql, pms);

	}
	
	//根据用户名判断是否为管理员
	public int getUserIsManager(String username) {
		String sql ="select RoleId from users where Uid=?";
		String[] pms = {username };

		ResultSet rSet = JDBCUtils.executeQuery(sql, pms);

		try {
			if (rSet.next()) {
				return rSet.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return 100;

	}
	
	
}
