package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.Entity.User;
import com.dao.UserDAO;

@WebServlet("/add_user")
public class RegisterServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			String name=req.getParameter("name");
			String qua=req.getParameter("qua");
			String email=req.getParameter("email");
			String ps=req.getParameter("ps");
			
			UserDAO dao=new UserDAO(DBConnect.getConn());
			
			User u=new User(name, email,ps,qua,"User");
			boolean f=dao.addUser(u);
			
			HttpSession session=req.getSession();
			
			if(f) {
				session.setAttribute("succMsg", "Registration Successfully");
				resp.sendRedirect("Signup.jsp");
				}else {
					session.setAttribute("succMsg", "Something wrong on server");
					resp.sendRedirect("Signup.jsp");
				}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
			
	

}
