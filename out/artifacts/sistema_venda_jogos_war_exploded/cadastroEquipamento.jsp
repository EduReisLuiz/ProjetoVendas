<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Venda seu equipamento</title>
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
    <header>
        <h1 class="header" style="color: white;"> NextPlay Store </h1>
    </header>
</head>
<body>
<div style="display: flex; justify-content: center; align-items: center; height: 100vh;">
    <form name="frm" method="post" action="ProdutoController"
          style="display: flex; flex-direction: column; align-items: center;">

        <input type="hidden" name="operacao" value="cadastrar">

        <div class="form-group" style="margin-bottom: 20px; text-align: left;">
            <label for="typeConsole">Tipo de console:</label>
            <select name="typeConsole">
                    <option value="Novo">Novo</option>
                <option value="Retro">Retro</option>
            </select>
        </div>
        <div class="form-group" style="margin-bottom: 20px;">
            <label for="situation">Situação:</label>
            <select name="situation">
                <option value="Excelente">Excelente</option>
                <option value="Bom">Bom</option>
                <option value="Razoável">Razoável</option>
                <option value="Ruim">Ruim</option>
            </select>
        </div>
        <div class="form-group" style="margin-bottom: 20px;">
            <label for="factorySeals">Selos de fábrica:</label>
            <select name="factorySeals">
                <option value="Intacto">Intacto</option>
                <option value="Violado">Violado</option>
            </select>
        </div>
        <div class="form-group" style="margin-bottom: 20px;">
            <label for="originalBox">Caixa original:</label>
            <select name="originalBox">
                <option value="Caixa original">Vai com caixa original</option>
                <option value="Sem caixa">Sem caixa</option>
            </select>
        </div>
        <div class="form-group" style="margin-bottom: 20px;">
            <label for="invoice">Nota fiscal:</label>
            <select name="invoice">
                <option value="Sim">Acompanha NF</option>
                <option value="Não">Não acompanha NF</option>
            </select>
        </div>
        <div class="form-group" style="margin-bottom: 20px;">
            <label for="controls">Controles:</label>
            <select name="controls">
                <option value="Nenhum">Nenhum</option>
                <option value="Um">Um</option>
                <option value="Dois ou mais">Dois ou mais</option>
            </select>
        </div>
        <div class="form-group" style="margin-bottom: 20px;">
            <label for="accompaniesGames">Acompanha jogos?</label>
            <select name="accompaniesGames">
                <option value="Sim">Sim</option>
                <option value="Não">Não</option>
            </select>
        </div>
        <div class="form-group" style="margin-bottom: 20px;">
            <label for="price">Preço:</label>
            <input type="number" name="price">
        </div>
        <label for="inputCommentaries">Insira comentários que achar necessários:</label>
        <div class="form-group" style="margin-bottom: 20px;">
            <input type="text" id="inputCommentaries" name="commentaries" placeholder="Comentários"
                   style="width: 200px; height: 70px; text-align: center">
        </div>

        <button type="submit">Publicar anúncio</button>
    </form>
</div>
</body>

</html>