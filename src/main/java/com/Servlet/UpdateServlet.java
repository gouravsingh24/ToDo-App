package com.Servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Connection.FactoryProvider;
import com.Entities.Note;


public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id").trim());
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		Session s = FactoryProvider.getFactory().openSession();
		Note note = (Note)s.load(Note.class, id);
		
		Transaction tx = s.beginTransaction();
		
		note.setTitle(title);
		note.setContent(content);
		note.setAddedDate(new Date());
		
		response.sendRedirect("showNotes.jsp");
		
		tx.commit();
		s.close();
	}

}
