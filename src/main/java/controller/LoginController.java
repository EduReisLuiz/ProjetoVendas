package controller;

import dao.ClienteDAO;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class LoginController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String senha = request.getParameter("password");

        ClienteDAO dao = new ClienteDAO();
        boolean autenticado = dao.login(email, senha);

        if (autenticado) {
            request.getRequestDispatcher("menuOpcoes.jsp").forward(request, response);
        } else {
            response.sendRedirect("exibeResultado.jsp?result=false");
        }
    }
}
