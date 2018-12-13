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

import dao.CarDao;
import model.Car;

/**
 * Servlet implementation class CarListServlet
 */
@WebServlet(urlPatterns = { "/car" })
public class CarServlet extends HttpServlet {
	Logger log=Logger.getLogger(CarServlet.class);
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CarServlet() {
		super();

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Car> list = CarDao.instance().getAll();
		request.setAttribute("carList", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/ListCar.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String method = request.getParameter("method");
		if ("update".equals(method)) {
			Car c = new Car();
			c.setModel(request.getParameter("model"));
			c.setMaker(request.getParameter("maker"));
			c.setYear(Integer.parseInt(request.getParameter("year")));
			c.setColor(request.getParameter("color"));
			c.setNote(request.getParameter("note"));
			c.setId(request.getParameter("carID"));
			log.info(c.getId());
			String flag =CarDao.instance().update(c);
			response.setContentType("text/html");
			PrintWriter out =response.getWriter();
			if("true".equals(flag))out.print("true");
			else out.print("false");
			out.flush();
		}
		else if ("delete".equals(method)){
			
			
		}
	}

}
