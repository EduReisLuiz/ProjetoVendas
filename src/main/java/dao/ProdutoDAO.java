package dao;

import connection.DBConnection;
import vo.ProdutoVO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class ProdutoDAO {

    public boolean insert(ProdutoVO product) {
        try {
            DBConnection c = new DBConnection();
            Connection con = c.establishConnection();
            if (con != null) {

                String sql = "INSERT INTO equipment "
                        + "(type_console, situation, factory_seals, original_box, invoice, controls, accompanies_games, price, commentaries) "
                        + "VALUES (?,?,?,?,?,?,?,?,?)";

                PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

                ps.setString(1, product.getTypeConsole());
                ps.setString(2, product.getSituation());
                ps.setString(3, product.getFactorySeals());
                ps.setBoolean(4, product.getOriginalBox());
                ps.setBoolean(5, product.getInvoice());
                ps.setString(6, product.getControls());
                ps.setBoolean(7, product.getAccompaniesGames());
                ps.setDouble(8, product.getPrice());
                ps.setString(9, product.getCommentaries());

                int rs = ps.executeUpdate();
                c.closeConnection();
                return rs != 0;

            } else {
                return false;
            }

        } catch (Exception e) {
            System.out.println("Exception during insertion: " + e);
            return false;
        }
    }

    public ArrayList<ProdutoVO> list() {
        ArrayList<ProdutoVO> list = new ArrayList<>();

        try {
            DBConnection c = new DBConnection();
            Connection con = c.establishConnection();

            if (con != null) {
                String sql = "SELECT * FROM equipment";
                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
                    ProdutoVO p = new ProdutoVO();

                    p.setId(rs.getInt("id"));
                    p.setTypeConsole(rs.getString("type_console"));
                    p.setSituation(rs.getString("situation"));
                    p.setFactorySeals(rs.getString("factory_seals"));
                    p.setOriginalBox(rs.getBoolean("original_box"));
                    p.setInvoice(rs.getBoolean("invoice"));
                    p.setControls(rs.getString("controls"));
                    p.setAccompaniesGames(rs.getBoolean("accompanies_games"));
                    p.setPrice(rs.getDouble("price"));
                    p.setCommentaries(rs.getString("commentaries"));

                    list.add(p);
                }
                c.closeConnection();
            }

        } catch (Exception err) {
            System.out.println("Exception during listing: " + err);
        }

        return list;
    }

    public boolean delete(int id) {
        try {
            DBConnection c = new DBConnection();
            Connection con = c.establishConnection();

            if (con != null) {
                String sql = "DELETE FROM equipment WHERE id = ?";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setInt(1, id);

                int rows = ps.executeUpdate();
                c.closeConnection();
                return rows > 0;
            }
        } catch (Exception e) {
            System.out.println("Erro ao deletar produto: " + e.getMessage());
        }
        return false;
    }
}