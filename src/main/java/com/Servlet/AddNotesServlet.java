package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Connection.FactoryProvider;
import com.Entities.Note;


public class AddNotesServlet extends HttpServlet {
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		Note note = new Note(title,content,new Date());
		
		Session session = FactoryProvider.getFactory().openSession();
		
		Transaction tx = session.beginTransaction();
		session.save(note);
		tx.commit();
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		out.println("<h1 style = 'text-align : center'>Notes Added Successfully</h1>");
		out.println("<h1 style = 'text-align : center'><a href = 'showNotes.jsp'>View Notes</a></h1>");
		
		session.close();
		
	}

}
