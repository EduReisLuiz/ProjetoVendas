<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login e Cadastro</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<div style="display: flex; justify-content: center; align-items: center; height: 100vh;">
    <form name="frm" method="post" action="ProductController" style="display: flex; flex-direction: column; align-items: center;">
        <div class="form-group" style="margin-bottom: 10px;">
            <label for="inputEmail">E-mail</label>
            <input type="text" id="inputEmail" name="email" placeholder="Insira seu e-mail" style="width: 200px;">
        </div>
        <div class="form-group" style="margin-bottom: 10px;">
            <label for="inputPassword">Senha</label>
            <input type="password" id="inputPassword" name="password" placeholder="Insira sua senha" style="width: 200px;">
        </div>
        <div style="display: flex; gap: 10px; margin-top: 10px;">
            <a href="ProductController">
                <button type="button">Login</button>
            </a>
            <input type="submit" id="insert" value="Cadastre-se">
        </div>
    </form>
</div>
</body>
</html>
