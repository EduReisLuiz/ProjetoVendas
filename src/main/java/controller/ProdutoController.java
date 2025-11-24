package controller;

import dao.ProdutoDAO;
import vo.ProdutoVO;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;

public class ProdutoController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String operacao = request.getParameter("operacao");
        ProdutoDAO dao = new ProdutoDAO();

        if ("listar".equals(operacao)) {
            ArrayList<ProdutoVO> lista = dao.list();
            request.setAttribute("list", lista);
            request.getRequestDispatcher("listaEquipamento.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String operacao = request.getParameter("operacao");
        ProdutoDAO dao = new ProdutoDAO();

        if ("cadastrar".equals(operacao)) {

            ProdutoVO p = new ProdutoVO();

            p.setTypeConsole(request.getParameter("typeConsole"));
            p.setSituation(request.getParameter("situation"));
            p.setFactorySeals(request.getParameter("factorySeals"));
            p.setOriginalBox(Boolean.parseBoolean(request.getParameter("originalBox")));
            p.setInvoice(Boolean.parseBoolean(request.getParameter("invoice")));
            p.setControls(request.getParameter("controls"));
            p.setAccompaniesGames(Boolean.parseBoolean(request.getParameter("accompaniesGames")));
            p.setPrice(Double.valueOf(request.getParameter("price")));
            p.setCommentaries(request.getParameter("commentaries"));

            boolean ok = dao.insert(p);
            response.sendRedirect("exibeResultado.jsp?result=" + ok);
        }
    }
}