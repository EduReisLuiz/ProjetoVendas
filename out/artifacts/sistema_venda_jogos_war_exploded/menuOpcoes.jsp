<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Menu de opções</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

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
        </style>
    </head>
    <header>
        <h1 class="header" style="color: white;"> NextPlay Store </h1>
    </header>
<body>
<div style="display: flex; justify-content: center; align-items: center; height: 100vh;">
    <form name="frm" method="post" action="ProdutoController" style="display: flex; flex-direction: column; align-items: center;">
        <div style="display: flex; gap: 10px; margin-top: 10px;">
            <a href="ProdutoController?operacao=listar">
                <button type="button">Comprar</button>
            </a>
            <a href="cadastroEquipamento.jsp">
                <button type="button">Vender</button>
            </a>
        </div>
    </form>
</div>
</body>
</html>
