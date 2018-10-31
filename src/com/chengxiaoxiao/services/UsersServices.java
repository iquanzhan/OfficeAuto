package com.chengxiaoxiao.services;

import java.util.List;

import com.chengxiaoxiao.dao.UsersDao;
import com.chengxiaoxiao.domain.Users;
import com.chengxiaoxiao.domain.UsersAddRole;
import com.chengxiaoxiao.utils.JDBCUtils;

public class UsersServices {

	UsersDao dao = new UsersDao();

	// 登录
	public boolean login(String uid, String pwd) {

		return dao.getLoginRow(uid, pwd) > 0;

	}

	// 添加账户
	public boolean addUser(Users user) {
		return dao.add(user) > 0;
	}

	// 获取所有用户信息，包括部门信息
	public List<UsersAddRole> getUsers() {

		return dao.getUsers();

	}

	// 根据ID删除用户
	public boolean delete(int id) {

		return dao.delete(id) > 0;

	}

	// 根据ID获取Users
	public Users getUserById(int id) {

		return dao.getUserById(id);
	}

	// 重置密码
	public boolean resetUserpwd(int id) {

		return dao.resetUserpwd(id) > 0;

	}

	// 更新
	public boolean updateUser(Users user) {

		return dao.updateUser(user) > 0;

	}

	// 根据用户名判断是否为管理员
	public boolean getUserIsManager(String username) {

		return dao.getUserIsManager(username)==0;

	}
}
