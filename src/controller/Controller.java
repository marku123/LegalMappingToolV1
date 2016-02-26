package controller;

import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import updatedb.*;

/**
 * Servlet implementation class Controller
 */

public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Controller() {
		super();

	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");

		String page = null;

		if (action == null) {
			page = "/index.jsp";
		} else if (action.equals("home")) {
			page = "/index.jsp";
		} else if (action.equals("home2")) {
			page = "/index.jsp";
		} else if (action.equals("datacollection")) {
			page = "/datacollection.jsp";
		} else if (action.equals("analytical")) {
			page = "/analytical.jsp";
		} else if (action.equals("maps")) {
			page = "/maps.jsp";
		} else if (action.equals("reports")) {
			page = "/reports.jsp";
		} else if (action.equals("admin")) {
			page = "/admin.jsp";
		} else if (action.equals("country")) {
			page = "/country.jsp?countryName="
					+ request.getParameter("country");
		} else {
			page = "/index.jsp";
		}
		getServletContext().getRequestDispatcher(page).forward(request,
				response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String page = null;

		String action = request.getParameter("action");
		String country = request.getParameter("country");


		if (action.equals("datacollection")) {
			UpdateDB.UpdateCountry(request);
			page = "/datacollection2.jsp?country=" + country;
		} else if (action.equals("datacollection2")) {
			UpdateDB.UpdateCountry2(request);
			page = "/datacollection3.jsp?country=" + country;
		} else if (action.equals("datacollection3")) {
			page = "/datacollection4.jsp?country=" + country;
		} else if (action.equals("datacollection4")) {
			UpdateDBObstacles.UpdateCountry3(request);
			page = "/datacollection5.jsp?country=" + country;
		} else if (action.equals("datacollection5")) {
			UpdateDBActiveViolation.UpdateCountry3(request);
			page = "/datacollectionend.jsp?country=" + country;
		}else {
			page = "/index.jsp";
		}

		getServletContext().getRequestDispatcher(page).forward(request,
				response);
	}
}
