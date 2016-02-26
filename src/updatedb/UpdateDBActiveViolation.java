package updatedb;

import java.sql.*;

import javax.servlet.http.HttpServletRequest;

import dbconnect.MySql;

public class UpdateDBActiveViolation {

	static public void UpdateCountry3(HttpServletRequest request) {

		UpdateViolatedWide(request);
		UpdateViolatedViolAuth(request);
		UpdateViolatedThird(request);
		UpdateViolatedDiscrim(request);
		UpdateViolatedSameAccess(request);
		

	}

	private static void UpdateViolatedWide(HttpServletRequest request) {

		try {
			Connection c = MySql.connect();

			String sql = "INSERT INTO Violation (Country,Question,Response)VALUES ('"
					+ request.getParameter("country")
					+ "','"
					+ "ViolWidespread"
					+ "','"
					+ request.getParameter("widespreadviol") + "')";

			PreparedStatement pst = c.prepareStatement(sql);

			pst.executeUpdate();

			pst.close();

			MySql.close(c);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

	private static void UpdateViolatedViolAuth(HttpServletRequest request) {

		try {
			Connection c = MySql.connect();

			String sql = "INSERT INTO Violation (Country,Question,Response)VALUES ('"
					+ request.getParameter("country")
					+ "','"
					+ "ViolAuthorities"
					+ "','"
					+ request.getParameter("violauthorities") + "')";

			PreparedStatement pst = c.prepareStatement(sql);

			pst.executeUpdate();

			pst.close();

			MySql.close(c);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	private static void UpdateViolatedThird(HttpServletRequest request) {

		try {
			Connection c = MySql.connect();

			String sql = "INSERT INTO Violation (Country,Question,Response)VALUES ('"
					+ request.getParameter("country")
					+ "','"
					+ "ViolThird"
					+ "','"
					+ request.getParameter("violthird") + "')";

			PreparedStatement pst = c.prepareStatement(sql);

			pst.executeUpdate();

			pst.close();

			MySql.close(c);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	private static void UpdateViolatedDiscrim(HttpServletRequest request) {

		try {
			Connection c = MySql.connect();

			String sql = "INSERT INTO Violation (Country,Question,Response)VALUES ('"
					+ request.getParameter("country")
					+ "','"
					+ "ViolDiscrim"
					+ "','"
					+ request.getParameter("violdiscrim") + "')";

			PreparedStatement pst = c.prepareStatement(sql);

			pst.executeUpdate();

			pst.close();

			MySql.close(c);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private static void UpdateViolatedSameAccess(HttpServletRequest request) {

		try {
			Connection c = MySql.connect();

			String sql = "INSERT INTO Violation (Country,Question,Response)VALUES ('"
					+ request.getParameter("country")
					+ "','"
					+ "ViolSameAccess"
					+ "','"
					+ request.getParameter("sameaccess") + "')";

			PreparedStatement pst = c.prepareStatement(sql);

			pst.executeUpdate();

			pst.close();

			MySql.close(c);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
