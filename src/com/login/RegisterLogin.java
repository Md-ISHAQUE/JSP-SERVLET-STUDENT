package com.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




@WebServlet("/RegisterLogin")
public class RegisterLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public RegisterLogin() {      
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	       StudentMethodContainer sc = new StoreRet();
	       String eMail = request.getParameter("email");	
	       String password = request.getParameter("pwd");
	       String submitType = request.getParameter("submit");
	       Student s = sc.getStudent(eMail, password);
	       if(submitType.equals("LOG IN") && s!=null && s.getName()!=null)
	       {
	   		HttpSession session = request.getSession();	// SESSION MANAGEMENT
		       session.setAttribute("EMAIL", eMail);
		       response.sendRedirect("welcome.jsp");
	    	   request.setAttribute("message", s.getName());
	    	   /*request.getRequestDispatcher("welcome.jsp").forward(request,response);*/
	       }
	       else if(submitType.equals("REGISTER NOW") && (s!=null))
	    	{
	    	  s.setID(Integer.parseInt(request.getParameter("id"))); // Type Casting to Integer
	    	  s.setName(request.getParameter("name"));
	    	  s.setPassword(password);
	    	  s.setEmail(eMail);
	    	  s.setPhone(Integer.parseInt(request.getParameter("phone")));  // Type Casting to Integer
	    	  sc.insertStudent(s);
	    	  request.setAttribute("successMessage","Registration done,please login to continue ....");
	   	   	  request.getRequestDispatcher("login.jsp").forward(request,response);    	  
	       }
	       /*else if(s.getEmail()==null)
	       {
    		   response.sendRedirect("register.jsp");	
	       }*/
	      /* else if(s.getEmail()!=null && s!=null)
	       {
	    	   request.setAttribute("message", "");
	       }*/
	       else if(submitType.equals("LOG IN") && s.getEmail()==null)
	       {
	    	   request.setAttribute("message", "Enter Details then click LOGIN");
	    	   request.getRequestDispatcher("login.jsp").forward(request,response);
	       }
	       else if(submitType.equals("REGISTER NOW") && (s.getEmail()==null))
	    	   {
	    	   request.setAttribute("message","Enter Details then click on Register !!!");
	    	   request.getRequestDispatcher("register.jsp").forward(request,response);
	    	   
	       }
	}

}
