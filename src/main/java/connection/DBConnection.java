package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private final String db;
    private final String user;
    private final String password;
    private Connection con;

    public DBConnection(){
        db = "jdbc:mysql://localhost/ads";
        user = "root";
        password = "";
        con = null;
    }

    public Connection establishConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(db, user, password);
            return con;
        } catch (ClassNotFoundException err) {
            System.out.println("Error in connection: " + err.getMessage());
            return null;
        }
    }

    public void closeConnection(){
        try {
            this.con.close();
        } catch (SQLException err) {
            System.out.println("Error in closing connection: " + err.getMessage());}
    }
}