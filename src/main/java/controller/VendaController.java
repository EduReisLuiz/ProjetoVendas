package controller;

import dao.ProdutoDAO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "VendaController", urlPatterns = {"/vendaController"})
public class VendaController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String operacao = request.getParameter("operacao");

        if ("2".equals(operacao)) {  // operação de compra
            String idStr = request.getParameter("id");

            try {
                int id = Integer.parseInt(idStr);

                ProdutoDAO dao = new ProdutoDAO();
                boolean sucesso = dao.delete(id);

                response.sendRedirect("exibeResultado.jsp?result=" + sucesso);

            } catch (Exception e) {
                System.out.println("Erro na compra: " + e.getMessage());
                response.sendRedirect("exibeResultado.jsp?result=false");
            }
        }
    }
}
