package com.gaia.business.pattern.service;
import java.util.Date;

import com.gaia.business.pattern.dao.OrderInformationDAO;
import com.gaia.business.pattern.dao.UserDAO;
import com.gaia.business.pattern.entity.User;

/**
 * 
 * 提供跟 MyUser功能相關的服務, 主要在兜畫面的資訊, 或是每個動作查詢的內容
 * 
 * 如果要再加一層 Facade, 表示要轉成TO
 * 
 * @author 823285
 *
 */
public class CustomerService {
	private UserDAO udao = new UserDAO();
	private OrderInformationDAO oidao = new OrderInformationDAO();
	
	/**
	 * 
	 * 提供一開始畫面所有資訊
	 * 
	 * Class.method = 什麼功能(Class)的什麼動作(method)要的資訊
	 * 
	 * @param userid
	 * @return
	 */
	public User getUserInfo(String userid) {
		User user = udao.getUser(userid);
		
		return user;
	}
}
