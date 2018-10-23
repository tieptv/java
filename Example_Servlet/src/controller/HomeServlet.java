package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import Until.MyUtils;
import dao.AccountDao;
import model.Account;

@WebServlet(urlPatterns = { "/home" })
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static Logger log = Logger.getLogger(HomeServlet.class);

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/MainPage.jsp");

		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String email = req.getParameter("email");
		String password = req.getParameter("pwd");
		String status = req.getParameter("status");
        
		log.debug(status);
		Account account = AccountDao.instance().findAccount(email, password);
		if ("login".equals(status)) {
			if (account != null) {
			    HttpSession session = req.getSession();
			    MyUtils.storeLoginedUser(session, account);
				RequestDispatcher dispatcher = this.getServletContext()
						.getRequestDispatcher("/WEB-INF/views/MainPage.jsp");
				dispatcher.forward(req, resp);
			} else {
				resp.sendRedirect(req.getContextPath());
			}
		}
		else {
			if (account != null) {RequestDispatcher dispatcher = this.getServletContext()
					.getRequestDispatcher("/WEB-INF/views/MainPage.jsp");
			dispatcher.forward(req, resp);}
			else {
				Account a=new Account();
				a.setEmail(email);
				a.setPassword(password);
				boolean flag=AccountDao.instance().insert(a);
				if(flag){
				  HttpSession session = req.getSession();
				    MyUtils.storeLoginedUser(session, a);
				RequestDispatcher dispatcher = this.getServletContext()
						.getRequestDispatcher("/WEB-INF/views/MainPage.jsp");
				dispatcher.forward(req, resp);
				}
				else
				resp.sendRedirect(req.getContextPath());
			}
		}
	}

}
