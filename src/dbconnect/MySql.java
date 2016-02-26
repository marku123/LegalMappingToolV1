package dbconnect;

import java.sql.*;

public class MySql {

    public static Connection connect() {

        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ukram123_unhcr_legal", "ukram123", "%%bac0n2013");

            return conn;
        } catch (Exception e) {

        	return null;
        }   
    }

    public static boolean close(Connection c) {
        try {
            c.close();
            return true;
        } catch (Exception e) {
            return false;
        }   
    }
    
}
