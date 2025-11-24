package controller;

import dao.ClienteDAO;
import vo.ClienteVO;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "ClienteController", urlPatterns = {"/ClienteController"})
public class ClienteController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String operacao = request.getParameter("operacao");

        if ("cadastrar".equals(operacao)) {

            String email = request.getParameter("email");
            String senha = request.getParameter("password");

            ClienteVO cliente = new ClienteVO();
            cliente.setEmail(email);
            cliente.setPassword(senha);

            ClienteDAO dao = new ClienteDAO();
            boolean ok = dao.insert(cliente);

            response.sendRedirect("exibeResultado.jsp?result=" + ok);
        }
    }
}
