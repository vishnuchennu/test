package com.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
	//	String logemail = request.getParameter("user");
      //  String logpass = request.getParameter("phone");
		String logemail = request.getParameter("email");
        String logpass = request.getParameter("password");
        
        UsersDao db =  new UsersDao();
        Users user = db.logUser(logemail, logpass);
        
        if(user!=null){
        	
            HttpSession session = request.getSession();
            
            session.setAttribute("logUser", user);
            
            response.sendRedirect("welcome.jsp");
            
        }
        else
        {
        	
            out.println("user not found");
        }

		
		
	}

}
