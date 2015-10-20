package com.gaia.freemaker.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gaia.business.pattern.entity.User;
import com.gaia.utils.to.BeanConvert;


public class WebAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static List<User> userList = new ArrayList<User>();
	
	//Just prepare static data to display on screen
	static {
		userList.add(new User("Bill", "Gates"));
		userList.add(new User("Steve", "Jobs"));
//		userList.add(new User("Larry", "Page"));
//		userList.add(new User("Sergey", "Brin"));
//		userList.add(new User("Larry", "Ellison"));
	}
	
    public WebAction() {}

    /**
     * post 處理表單資料, get 處理正常查詢資料
     */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// ftl 要的參數, 都要放到  attribute - WebAction
        request.setAttribute("users", userList);
		// 會丟給 Servlet freemarker.ext.servlet.FreemarkerServlet 去 進行 gen code轉換成內容          
//		request.getRequestDispatcher("/ftl/index.ftl").forward(request, response);		// JSP PAGE
		request.getRequestDispatcher("/ftl/index.ftl").forward(request, response);		// JSP PAGE
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String json = request.getParameter("json");
		
		if(null != firstname && null != lastname
				&& !firstname.isEmpty() && !lastname.isEmpty()) {
			
			synchronized (userList) {
				User user = BeanConvert.toBean(request, User.class);
				System.out.println(user.getFirstname());
				System.out.println(user.getLastname());
				userList.add(user);
			}
			System.out.println(firstname + ":" + lastname);
			
		} else if(null != json && !json.isEmpty()){
			synchronized (userList) {
				User user = BeanConvert.json2Bean(json, User.class);
				userList.add(user);
			}
			System.out.println(json);
		}

		doGet(request, response);
	}
}
