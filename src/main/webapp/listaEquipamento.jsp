<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="vo.ProdutoVO"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Video Games</title>
        <style>
            *{
                margin: 0 auto
            }
            header{
                width: 98.7%;
                background-color:black;
                padding: 10px;
                text-align: center;
                font-weight: bold;
                font-family: Arial, Helvetica, sans-serif;
                font-size: medium;
            }

            body{
                width: 100%;
                text-align: center;
                font-size: small;
                font-weight: bold;
                font-family: Arial, Helvetica, sans-serif;
                background-color: #ededed;
            }

            .login-box {
                width: 300px;
                margin: 100px auto;
                text-align: center;
            }

            input {
                width: 98.7%;
                margin: 10px;
                padding: 8px;
                box-sizing: border-box;
            }

            footer{
                margin: 10px;
                text-align: center;
                font-size: 0.65em;
                font-weight: bold;
            }
            table {
                border-collapse: collapse;
            }

            th, td {
                border: 1px solid black;
                padding: 8px;
            }
        </style>
</head>
    <body>
    <header>
        <h1 class="header" style="color: white;"> NextPlay Store </h1>
    </header>

    <%
        List<ProdutoVO> products = (List<ProdutoVO>) request.getAttribute("list");

        if (products != null) {
            out.print("<div style='text-align: center; margin-top: 20px;'>Total de produtos encontrados: " + products.size() + "</div>");
            out.print("<br>");

            out.print("<table style='width: 90%; margin-left: 5%; text-align: center;'>");
            out.print("<thead>");
            out.print("<tr>");
            out.print("<th>Console</th>");
            out.print("<th>Jogos</th>");
            out.print("<th>Controles</th>");
            out.print("<th>Lacre de fábrica</th>");
            out.print("<th>Nota Fiscal</th>");
            out.print("<th>Caixa</th>");
            out.print("<th>Situação</th>");
            out.print("<th>Valor</th>");
            out.print("<th>Ação</th>");
            out.print("</tr>");
            out.print("</thead>");

            out.print("<tbody>");
            for (ProdutoVO p : products) {

                String acompanhaJogosTexto = p.getAccompaniesGames() ? "SIM" : "NÃO";
                String notaFiscalTexto = p.getInvoice() ? "SIM" : "NÃO";
                String caixaOriginalTexto = p.getOriginalBox() ? "SIM" : "NÃO";

                out.print("<tr>");
                out.print("<td>" + p.getTypeConsole().toUpperCase() + "</td>");

                out.print("<td>" + acompanhaJogosTexto + "</td>");
                out.print("<td>" + p.getControls().toUpperCase() + "</td>");
                out.print("<td>" + p.getFactorySeals().toUpperCase() + "</td>");
                out.print("<td>" + notaFiscalTexto + "</td>");
                out.print("<td>" + caixaOriginalTexto + "</td>");
                out.print("<td>" + p.getSituation().toUpperCase() + "</td>");
                out.print("<td>" + "R$" + p.getPrice() + "</td>");
                out.print("<td><a href='vendaController?operacao=2&id="+p.getId()+"'>Comprar</a></td>");
                out.print("</tr>");
            }
            out.print("</tbody>");
            out.print("</table>");
        }
    %>
</body>
</html>
