package com.gaia.business.pattern.dao;

import com.gaia.business.pattern.entity.User;

/**
 * 
 * 連接DB, 取得 entity
 * 
 * @author 823285
 *
 */

public class UserDAO {
	public User getUser(String loginId) {
		User user = new User();
		user.setFirstname("kevin");
		user.setLastname("yang");
		return user;
	}
}
