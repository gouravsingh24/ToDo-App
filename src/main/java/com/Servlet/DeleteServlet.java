package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Connection.FactoryProvider;
import com.Entities.Note;


public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int id = Integer.parseInt(request.getParameter("id").trim());
		
		Session s = FactoryProvider.getFactory().openSession();
		
		Note note = (Note)s.load(Note.class, id);
		
		Transaction tx = s.beginTransaction();
		s.delete(note);
		tx.commit();
		
		response.sendRedirect("showNotes.jsp");
		
		s.close();
	}
}
