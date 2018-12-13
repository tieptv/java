package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import dao.AccountDao;
import dao.CarDao;
import model.Account;
import model.Car;

@WebServlet(urlPatterns = { "/account" })
public class AccountServlet extends HttpServlet {
	Logger log = Logger.getLogger(AccountServlet.class);

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		List<Account> list = AccountDao.instance().getAll();
		req.setAttribute("accountList", list);
		RequestDispatcher dispatcher = req
				.getRequestDispatcher("/WEB-INF/views/ListAccount.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String method = req.getParameter("method");
		if ("update".equals(method)) {
			Account c = new Account();
			c.setId(Integer.parseInt(req.getParameter("id")));
			c.setEmail(req.getParameter("email"));
			c.setPassword(req.getParameter("pass"));
			String new_pass = AccountDao.instance().update(c);
			resp.setContentType("text/html");
			PrintWriter out = resp.getWriter();
			if ("false".equals(new_pass))
				out.print("false");
			else
				out.print(new_pass);
			out.flush();
		} else if ("delete".equals(method)) {
             
		}
	}
}
