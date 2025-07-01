package com.my.controller;

import java.io.IOException;
import javax.servlet.http.*;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.sql.DataSource;

/**
 * Servlet implementation class SessionController
 */
@WebServlet("/handle-form")
public class SessionController extends HttpServlet {
		
	    @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	    		throws ServletException, IOException {
	    	
	        // 1. Get form values
	        String fName = request.getParameter("f_name");
	        String lName = request.getParameter("l_name");
	        String pass = request.getParameter("pass");
	        String favRadio = request.getParameter("favProgramming");
	        String favDropdown = request.getParameter("favPr");
	        String[] favCheckbox = request.getParameterValues("favProgrammingWithCheckbox");

	        // 2. Store in session
	        HttpSession session = request.getSession();
	        session.setAttribute("f_name", fName);
	        session.setAttribute("l_name", lName);
	        session.setAttribute("pass", pass);
	        session.setAttribute("favRadio", favRadio);
	        session.setAttribute("favDropdown", favDropdown);
	        session.setAttribute("favCheckbox", favCheckbox);

	        // 3. Redirect to JSP view
	        response.sendRedirect("printDataForm.jsp");
	    }
	}