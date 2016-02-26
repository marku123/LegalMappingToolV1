package queryPackage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dbconnect.*;
import global.*;

public class QueryDB {

	public static String getGlobalCountries() {

		// <a href="/LegalMapping/Controller?action=maps">View Map</a>

		String tableToReturn = "";

		ArrayList<Global> allCountries = getGlobalCountriesDB();
		for (int i = 0; i < allCountries.size(); i++) {
			tableToReturn = tableToReturn
					+ "<tr>"
					+ "<td>"
					+ "<a href='/LegalMapping/Controller?action=country&country="
					+ allCountries.get(i).getCountryID()
					+ "'>"
					+ allCountries.get(i).getCountryName()
					+ "</a>"
					+ "</td>"

					+ "<td>"
					+ "<a href='/LegalMapping/Controller?action=country&country="
					+ allCountries.get(i).getCountryID()
					+ "'>"
					+ allCountries.get(i).getCountryRegion()
					+ "</a>"
					+ "</td>"

					+ "<td>"
					+ "<a href='/LegalMapping/Controller?action=country&country="
					+ allCountries.get(i).getCountryID() + "'>"
					+ "Rights Group Data Not Yet Available" + "</a>" + "</td>"

					+ "</tr>";
		}

		return tableToReturn;
	}

	public static ArrayList<Global> getGlobalCountriesDB() {

		try {
			Connection c = MySql.connect();
			ArrayList<Global> allCountries = new ArrayList<>();

			String sql = "SELECT * FROM countries";

			PreparedStatement pst = c.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				Global country = new Global(rs.getInt("CountryID"),
						rs.getString("CountryName"), rs.getString("Region"));
				allCountries.add(country);
			}
			rs.close();
			pst.close();

			MySql.close(c);
			return allCountries;

		} catch (Exception e) {
			return null;
		}
	}

}
