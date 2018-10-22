package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AccountDao;
import dao.CarDao;
import model.Account;
import model.Car;

@WebServlet(urlPatterns = { "/account" })
public class AccountServlet extends HttpServlet {
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	List<Account> list = AccountDao.instance().getAll();
	req.setAttribute("accountList", list);
	RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/ListAccount.jsp");
	dispatcher.forward(req, resp);
}
@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
