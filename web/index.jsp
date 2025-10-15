
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>NextPlay Store</title>
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
            }

            body{
                width: 100%;
                text-align: center;
                font-size: 1.5em;
                font-weight: bold;
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
    <header>
        <h1 class="header" style="color: white;"> NextPlay Store </h1>
    </header>
</head>
<body>
    <div style="display: flex; justify-content: center; align-items: center; height: 100vh;">
        <form name="frm" method="post" action="ProductController" style="display: flex; flex-direction: column; align-items: center;">
            <div class="form-group" style="margin-bottom: 10px;">
                <label for="inputEmail">E-mail</label>
                <input type="text" id="inputEmail" name="email" placeholder="Insira seu e-mail" style="width: 200px; text-align: center;">
            </div>
            <div class="form-group" style="margin-bottom: 10px;">
                <label for="inputPassword">Senha</label>
                <input type="password" id="inputPassword" name="password" placeholder="Insira sua senha" style="width: 200px; text-align: center;">
            </div>
            <div style="display: flex; gap: 10px; margin-top: 10px;">
                <a href="menuOpcoes.jsp">
                    <button type="button">Login</button>
                </a>
                <a href="menuOpcoes.jsp">
                    <button type="button">Cadastre-se</button>
                </a>
            </div>
        </form>
    </div>
    <footer>
        <p> Desenvolvido por: Luiz Eduardo & Nathalia Bianchini</p>
    </footer>
</body>
</html>
