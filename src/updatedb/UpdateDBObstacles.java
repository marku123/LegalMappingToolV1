package updatedb;

import java.sql.*;

import javax.servlet.http.HttpServletRequest;

import dbconnect.MySql;

public class UpdateDBObstacles {

	static public void UpdateCountry3(HttpServletRequest request) {

		UpdateAsl(request);
		UpdateRef(request);
		UpdateJus(request);
		UpdateDoc(request);
		UpdateLife(request);
		UpdateNat(request);
		UpdateMov(request);
		UpdateAsso(request);
		UpdateExpr(request);
		UpdatePub(request);
		UpdateFam(request);
		UpdateDiscr(request);
		UpdateEco(request);
		UpdateEmpl(request);
		UpdateHLP(request);
		UpdatePubref(request);
		UpdateEdu(request);

	}

	private static void UpdateAsl(HttpServletRequest request) {

		try {
			Connection c = MySql.connect();

			String sql = "INSERT INTO obstacles (Country,RightsGroup,LegalStatus,Financial,Documentation,Geographic,Administrative,Security,Discrimination)VALUES ('"
					+ request.getParameter("country")
					+ "','"
					+ "Asylum"
					+ "','"
					+ request.getParameter("asllegal")
					+ "','"
					+ request.getParameter("aslfin")
					+ "','"
					+ request.getParameter("asldoc")
					+ "','"
					+ request.getParameter("aslgeo")
					+ "','"
					+ request.getParameter("asladmin")
					+ "','"
					+ request.getParameter("aslsec")
					+ "','"
					+ request.getParameter("asldis") + "')";

			PreparedStatement pst = c.prepareStatement(sql);

			pst.executeUpdate();

			pst.close();

			MySql.close(c);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static void UpdateRef(HttpServletRequest request) {

		try {
			Connection c = MySql.connect();

			String sql = "INSERT INTO obstacles (Country,RightsGroup,LegalStatus,Financial,Documentation,Geographic,Administrative,Security,Discrimination)VALUES ('"
					+ request.getParameter("country")
					+ "','"
					+ "Refoulement"
					+ "','"
					+ request.getParameter("reflegal")
					+ "','"
					+ request.getParameter("reffin")
					+ "','"
					+ request.getParameter("refdoc")
					+ "','"
					+ request.getParameter("refgeo")
					+ "','"
					+ request.getParameter("refadmin")
					+ "','"
					+ request.getParameter("refsec")
					+ "','"
					+ request.getParameter("refdis") + "')";

			PreparedStatement pst = c.prepareStatement(sql);

			pst.executeUpdate();

			pst.close();

			MySql.close(c);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static void UpdateJus(HttpServletRequest request) {

		try {
			Connection c = MySql.connect();

			String sql = "INSERT INTO obstacles (Country,RightsGroup,LegalStatus,Financial,Documentation,Geographic,Administrative,Security,Discrimination)VALUES ('"
					+ request.getParameter("country")
					+ "','"
					+ "AccessJustice"
					+ "','"
					+ request.getParameter("juslegal")
					+ "','"
					+ request.getParameter("jusfin")
					+ "','"
					+ request.getParameter("jusdoc")
					+ "','"
					+ request.getParameter("jusgeo")
					+ "','"
					+ request.getParameter("jusadmin")
					+ "','"
					+ request.getParameter("jussec")
					+ "','"
					+ request.getParameter("jusdis") + "')";

			PreparedStatement pst = c.prepareStatement(sql);

			pst.executeUpdate();

			pst.close();

			MySql.close(c);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static void UpdateDoc(HttpServletRequest request) {

		try {
			Connection c = MySql.connect();

			String sql = "INSERT INTO obstacles (Country,RightsGroup,LegalStatus,Financial,Documentation,Geographic,Administrative,Security,Discrimination)VALUES ('"
					+ request.getParameter("country")
					+ "','"
					+ "Documentation"
					+ "','"
					+ request.getParameter("doclegal")
					+ "','"
					+ request.getParameter("docfin")
					+ "','"
					+ request.getParameter("docdoc")
					+ "','"
					+ request.getParameter("docgeo")
					+ "','"
					+ request.getParameter("docadmin")
					+ "','"
					+ request.getParameter("docsec")
					+ "','"
					+ request.getParameter("docdis") + "')";

			PreparedStatement pst = c.prepareStatement(sql);

			pst.executeUpdate();

			pst.close();

			MySql.close(c);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static void UpdateLife(HttpServletRequest request) {

		try {
			Connection c = MySql.connect();

			String sql = "INSERT INTO obstacles (Country,RightsGroup,LegalStatus,Financial,Documentation,Geographic,Administrative,Security,Discrimination)VALUES ('"
					+ request.getParameter("country")
					+ "','"
					+ "LifeIntegrity"
					+ "','"
					+ request.getParameter("lifelegal")
					+ "','"
					+ request.getParameter("lifefin")
					+ "','"
					+ request.getParameter("lifedoc")
					+ "','"
					+ request.getParameter("lifegeo")
					+ "','"
					+ request.getParameter("lifeadmin")
					+ "','"
					+ request.getParameter("lifesec")
					+ "','"
					+ request.getParameter("lifedis") + "')";

			PreparedStatement pst = c.prepareStatement(sql);

			pst.executeUpdate();

			pst.close();

			MySql.close(c);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static void UpdateNat(HttpServletRequest request) {

		try {
			Connection c = MySql.connect();

			String sql = "INSERT INTO obstacles (Country,RightsGroup,LegalStatus,Financial,Documentation,Geographic,Administrative,Security,Discrimination)VALUES ('"
					+ request.getParameter("country")
					+ "','"
					+ "Nationality"
					+ "','"
					+ request.getParameter("natlegal")
					+ "','"
					+ request.getParameter("natfin")
					+ "','"
					+ request.getParameter("natdoc")
					+ "','"
					+ request.getParameter("natgeo")
					+ "','"
					+ request.getParameter("natadmin")
					+ "','"
					+ request.getParameter("natsec")
					+ "','"
					+ request.getParameter("natdis") + "')";

			PreparedStatement pst = c.prepareStatement(sql);

			pst.executeUpdate();

			pst.close();

			MySql.close(c);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static void UpdateMov(HttpServletRequest request) {

		try {
			Connection c = MySql.connect();

			String sql = "INSERT INTO obstacles (Country,RightsGroup,LegalStatus,Financial,Documentation,Geographic,Administrative,Security,Discrimination)VALUES ('"
					+ request.getParameter("country")
					+ "','"
					+ "FreeMovement"
					+ "','"
					+ request.getParameter("movlegal")
					+ "','"
					+ request.getParameter("movfin")
					+ "','"
					+ request.getParameter("movdoc")
					+ "','"
					+ request.getParameter("movgeo")
					+ "','"
					+ request.getParameter("movadmin")
					+ "','"
					+ request.getParameter("movsec")
					+ "','"
					+ request.getParameter("movdis") + "')";

			PreparedStatement pst = c.prepareStatement(sql);

			pst.executeUpdate();

			pst.close();

			MySql.close(c);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static void UpdateAsso(HttpServletRequest request) {

		try {
			Connection c = MySql.connect();

			String sql = "INSERT INTO obstacles (Country,RightsGroup,LegalStatus,Financial,Documentation,Geographic,Administrative,Security,Discrimination)VALUES ('"
					+ request.getParameter("country")
					+ "','"
					+ "FreeAssociation"
					+ "','"
					+ request.getParameter("assolegal")
					+ "','"
					+ request.getParameter("assofin")
					+ "','"
					+ request.getParameter("assodoc")
					+ "','"
					+ request.getParameter("assogeo")
					+ "','"
					+ request.getParameter("assoadmin")
					+ "','"
					+ request.getParameter("assosec")
					+ "','"
					+ request.getParameter("assodis") + "')";

			PreparedStatement pst = c.prepareStatement(sql);

			pst.executeUpdate();

			pst.close();

			MySql.close(c);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static void UpdateExpr(HttpServletRequest request) {

		try {
			Connection c = MySql.connect();

			String sql = "INSERT INTO obstacles (Country,RightsGroup,LegalStatus,Financial,Documentation,Geographic,Administrative,Security,Discrimination)VALUES ('"
					+ request.getParameter("country")
					+ "','"
					+ "FreeExpression"
					+ "','"
					+ request.getParameter("exprlegal")
					+ "','"
					+ request.getParameter("exprfin")
					+ "','"
					+ request.getParameter("exprdoc")
					+ "','"
					+ request.getParameter("exprgeo")
					+ "','"
					+ request.getParameter("expradmin")
					+ "','"
					+ request.getParameter("exprsec")
					+ "','"
					+ request.getParameter("exprdis") + "')";

			PreparedStatement pst = c.prepareStatement(sql);

			pst.executeUpdate();

			pst.close();

			MySql.close(c);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static void UpdatePub(HttpServletRequest request) {

		try {
			Connection c = MySql.connect();

			String sql = "INSERT INTO obstacles (Country,RightsGroup,LegalStatus,Financial,Documentation,Geographic,Administrative,Security,Discrimination)VALUES ('"
					+ request.getParameter("country")
					+ "','"
					+ "PoliticalPart"
					+ "','"
					+ request.getParameter("publegal")
					+ "','"
					+ request.getParameter("pubfin")
					+ "','"
					+ request.getParameter("pubdoc")
					+ "','"
					+ request.getParameter("pubgeo")
					+ "','"
					+ request.getParameter("pubadmin")
					+ "','"
					+ request.getParameter("pubsec")
					+ "','"
					+ request.getParameter("pubdis") + "')";

			PreparedStatement pst = c.prepareStatement(sql);

			pst.executeUpdate();

			pst.close();

			MySql.close(c);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static void UpdateFam(HttpServletRequest request) {

		try {
			Connection c = MySql.connect();

			String sql = "INSERT INTO obstacles (Country,RightsGroup,LegalStatus,Financial,Documentation,Geographic,Administrative,Security,Discrimination)VALUES ('"
					+ request.getParameter("country")
					+ "','"
					+ "FamilyUnity"
					+ "','"
					+ request.getParameter("famlegal")
					+ "','"
					+ request.getParameter("famfin")
					+ "','"
					+ request.getParameter("famdoc")
					+ "','"
					+ request.getParameter("famgeo")
					+ "','"
					+ request.getParameter("famadmin")
					+ "','"
					+ request.getParameter("famsec")
					+ "','"
					+ request.getParameter("famdis") + "')";

			PreparedStatement pst = c.prepareStatement(sql);

			pst.executeUpdate();

			pst.close();

			MySql.close(c);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static void UpdateDiscr(HttpServletRequest request) {

		try {
			Connection c = MySql.connect();

			String sql = "INSERT INTO obstacles (Country,RightsGroup,LegalStatus,Financial,Documentation,Geographic,Administrative,Security,Discrimination)VALUES ('"
					+ request.getParameter("country")
					+ "','"
					+ "NonDiscrimination"
					+ "','"
					+ request.getParameter("discrlegal")
					+ "','"
					+ request.getParameter("discrfin")
					+ "','"
					+ request.getParameter("discrdoc")
					+ "','"
					+ request.getParameter("discrgeo")
					+ "','"
					+ request.getParameter("discradmin")
					+ "','"
					+ request.getParameter("discrsec")
					+ "','"
					+ request.getParameter("discrdis") + "')";

			PreparedStatement pst = c.prepareStatement(sql);

			pst.executeUpdate();

			pst.close();

			MySql.close(c);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static void UpdateEco(HttpServletRequest request) {

		try {
			Connection c = MySql.connect();

			String sql = "INSERT INTO obstacles (Country,RightsGroup,LegalStatus,Financial,Documentation,Geographic,Administrative,Security,Discrimination)VALUES ('"
					+ request.getParameter("country")
					+ "','"
					+ "EcoSocRights"
					+ "','"
					+ request.getParameter("ecoscolegal")
					+ "','"
					+ request.getParameter("ecoscofin")
					+ "','"
					+ request.getParameter("ecoscodoc")
					+ "','"
					+ request.getParameter("ecoscogeo")
					+ "','"
					+ request.getParameter("ecoscoadmin")
					+ "','"
					+ request.getParameter("ecoscosec")
					+ "','"
					+ request.getParameter("ecoscodis") + "')";

			PreparedStatement pst = c.prepareStatement(sql);

			pst.executeUpdate();

			pst.close();

			MySql.close(c);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static void UpdateEmpl(HttpServletRequest request) {

		try {
			Connection c = MySql.connect();

			String sql = "INSERT INTO obstacles (Country,RightsGroup,LegalStatus,Financial,Documentation,Geographic,Administrative,Security,Discrimination)VALUES ('"
					+ request.getParameter("country")
					+ "','"
					+ "Employment"
					+ "','"
					+ request.getParameter("empllegal")
					+ "','"
					+ request.getParameter("emplfin")
					+ "','"
					+ request.getParameter("empldoc")
					+ "','"
					+ request.getParameter("emplgeo")
					+ "','"
					+ request.getParameter("empladmin")
					+ "','"
					+ request.getParameter("emplsec")
					+ "','"
					+ request.getParameter("empldis") + "')";

			PreparedStatement pst = c.prepareStatement(sql);

			pst.executeUpdate();

			pst.close();

			MySql.close(c);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static void UpdateHLP(HttpServletRequest request) {

		try {
			Connection c = MySql.connect();

			String sql = "INSERT INTO obstacles (Country,RightsGroup,LegalStatus,Financial,Documentation,Geographic,Administrative,Security,Discrimination)VALUES ('"
					+ request.getParameter("country")
					+ "','"
					+ "HLP"
					+ "','"
					+ request.getParameter("hlplegal")
					+ "','"
					+ request.getParameter("hlpfin")
					+ "','"
					+ request.getParameter("hlpdoc")
					+ "','"
					+ request.getParameter("hlpgeo")
					+ "','"
					+ request.getParameter("hlpadmin")
					+ "','"
					+ request.getParameter("hlpsec")
					+ "','"
					+ request.getParameter("hlpdis") + "')";

			PreparedStatement pst = c.prepareStatement(sql);

			pst.executeUpdate();

			pst.close();

			MySql.close(c);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static void UpdatePubref(HttpServletRequest request) {

		try {
			Connection c = MySql.connect();

			String sql = "INSERT INTO obstacles (Country,RightsGroup,LegalStatus,Financial,Documentation,Geographic,Administrative,Security,Discrimination)VALUES ('"
					+ request.getParameter("country")
					+ "','"
					+ "PublicRelief"
					+ "','"
					+ request.getParameter("pubreflegal")
					+ "','"
					+ request.getParameter("pubreffin")
					+ "','"
					+ request.getParameter("pubrefdoc")
					+ "','"
					+ request.getParameter("pubrefgeo")
					+ "','"
					+ request.getParameter("pubrefadmin")
					+ "','"
					+ request.getParameter("pubrefsec")
					+ "','"
					+ request.getParameter("pubrefdis") + "')";

			PreparedStatement pst = c.prepareStatement(sql);

			pst.executeUpdate();

			pst.close();

			MySql.close(c);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static void UpdateEdu(HttpServletRequest request) {

		try {
			Connection c = MySql.connect();

			String sql = "INSERT INTO obstacles (Country,RightsGroup,LegalStatus,Financial,Documentation,Geographic,Administrative,Security,Discrimination)VALUES ('"
					+ request.getParameter("country")
					+ "','"
					+ "Education"
					+ "','"
					+ request.getParameter("edulegal")
					+ "','"
					+ request.getParameter("edufin")
					+ "','"
					+ request.getParameter("edudoc")
					+ "','"
					+ request.getParameter("edugeo")
					+ "','"
					+ request.getParameter("eduadmin")
					+ "','"
					+ request.getParameter("edusec")
					+ "','"
					+ request.getParameter("edudis") + "')";

			PreparedStatement pst = c.prepareStatement(sql);

			pst.executeUpdate();

			pst.close();

			MySql.close(c);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
