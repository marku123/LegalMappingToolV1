package updatedb;

import java.sql.*;

import javax.servlet.http.HttpServletRequest;

import dbconnect.*;

public class UpdateDB {

	static public void UpdateCountry(HttpServletRequest request) {

		try {
			String country = request.getParameter("country");
			String region = request.getParameter("region");
			String constitutionyesno = request
					.getParameter("constitutionyesno");
			String basicrights = request.getParameter("basicrights");
			String intl_instrument_rat = request
					.getParameter("intl_instrument_rat");
			String entities_courts = request.getParameter("entities_courts");
			Connection c = MySql.connect();

			String sql = "INSERT INTO countries (CountryName,Region,Constitution,ConstBasicRights )VALUES ('"
					+ country
					+ "','"
					+ region
					+ "','"
					+ constitutionyesno
					+ "', '" + basicrights + "')";

			String sql2 = "INSERT INTO intl_instruments (country_name,intl_instr_ratified) VALUES ('"
					+ country + "', '" + intl_instrument_rat + "')";

			String sql3 = "INSERT INTO judicial_entities (Country,JudEntities) VALUES ('"
					+ country + "', '" + entities_courts + "')";

			PreparedStatement pst = c.prepareStatement(sql);
			PreparedStatement pst2 = c.prepareStatement(sql2);
			PreparedStatement pst3 = c.prepareStatement(sql3);

			pst.executeUpdate();
			pst2.executeUpdate();
			pst3.executeUpdate();
			pst.close();
			pst2.close();
			pst3.close();
			MySql.close(c);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	static public void UpdateCountry2(HttpServletRequest request) {

		try {
			String country = request.getParameter("country");
			String ratifiedyesno = request.getParameter("ratifiedyesno");
			String instrumentname = request.getParameter("instrumentname");

			String instrumenttype = request.getParameter("instrumenttype");

			String cleargrantingyesno = request
					.getParameter("cleargrantingyesno");
			String formalyesno = request.getParameter("formalyesno");
			String restrictyesno = request.getParameter("restrictyesno");

			String explicityesno = request.getParameter("explicityesno");

			String formalimplyesno = request.getParameter("formalimplyesno");

			String instrumentlinks = request.getParameter("instrumentlinks");

			Connection c = MySql.connect();

			String sql = "INSERT INTO rightasylum (CountryName,RatifiedInstruments,InstrumentName,InstrumentType,ClearGranting,FormalGuarantee,RestrictEnjoyment,Explicit,FormalImpl,InstrumentLinks)VALUES ('"
					+ country
					+ "','"
					+ ratifiedyesno
					+ "','"
					+ instrumentname
					+ "','"
					+ instrumenttype
					+ "', '"
					+ cleargrantingyesno
					+ "', '"
					+ formalyesno
					+ "', '"
					+ restrictyesno
					+ "', '"
					+ explicityesno
					+ "', '"
					+ formalimplyesno
					+ "', '"
					+ instrumentlinks + "')";

			PreparedStatement pst = c.prepareStatement(sql);

			pst.executeUpdate();

			pst.close();

			MySql.close(c);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}



	public String selectFromDBCost(Integer itemNum) {

		try {
			Connection c = MySql.connect();
			String sql = "SELECT ItemValue FROM costchecklist WHERE ItemNo = '"
					+ itemNum + "' ";
			PreparedStatement pst = c.prepareStatement(sql);
			String itemValue = "";

			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				itemValue = rs.getString("ItemValue");
			}
			rs.close();
			pst.close();

			pst.close();
			MySql.close(c);

			return itemValue;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public void updateCostDB(Integer itemNum, String dropValue) {

		try {
			Connection c = MySql.connect();
			String sql = "UPDATE costchecklist SET ItemValue = '" + dropValue
					+ "' WHERE ItemNo = '" + itemNum + "' ";
			PreparedStatement pst = c.prepareStatement(sql);

			pst.executeUpdate();
			pst.close();
			MySql.close(c);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
