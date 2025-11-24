package dao;

import connection.DBConnection;
import vo.ClienteVO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ClienteDAO {

    public boolean login(String email, String password) {
        try {
            DBConnection db = new DBConnection();
            Connection con = db.establishConnection();

            if (con != null) {
                String sql = "SELECT * FROM customers WHERE email = ? AND password = ?";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, email);
                ps.setString(2, password);

                ResultSet rs = ps.executeQuery();

                boolean exists = rs.next();
                db.closeConnection();
                return exists;
            }

        } catch (Exception e) {
            System.out.println("Erro no login: " + e.getMessage());
        }

        return false;
    }

    public boolean insert(ClienteVO cliente) {
        try {
            DBConnection db = new DBConnection();
            Connection con = db.establishConnection();

            if (con != null) {
                String sql = "INSERT INTO clients (email, password) VALUES (?, ?)";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, cliente.getEmail());
                ps.setString(2, cliente.getPassword());

                int rows = ps.executeUpdate();
                db.closeConnection();
                return rows > 0;
            }

        } catch (Exception e) {
            System.out.println("Erro ao cadastrar cliente: " + e.getMessage());
        }

        return false;
    }
}
