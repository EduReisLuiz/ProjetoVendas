<%@page contentType="text/html" pageEncoding="UTF-8" %>
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
                font-size: 1.5em;
                font-weight: bold;
            }

            body{
                background-color: #ededed;
            }

            button{
                background-color: #c8cbcf;
                padding: 2px;
                text-align: center;
                font-size: 1em;
            }

            button:hover{
                background-color: black;
                color: white;
            }
        </style>
    <header>
        <h1 class="header" style="color: white;"> NextPlay Store </h1>
    </header>
</head>
<body>
    <div style="display: flex; justify-content: center; align-items: center; height: 100vh;">
        <form name="frm" method="post" action="listaEquipamento.jsp"
              style="display: flex; flex-direction: column; align-items: center;">
            <div class="form-group" style="margin-bottom: 20px; text-align: left;">
                <label for="typeConsole">Tipo de console:</label>
                <select name="typeConsole">
                    <option value="new">Novo</option>
                    <option value="retro">Retro</option>
                </select>
            </div>
            <div class="form-group" style="margin-bottom: 20px;">
                <label for="situation">Situação:</label>
                <select name="situation">
                    <option value="excellent">Excelente</option>
                    <option value="good">Bom</option>
                    <option value="fair">Razoável</option>
                    <option value="poor">Ruim</option>
                </select>
            </div>
            <div class="form-group" style="margin-bottom: 20px;">
                <label for="factorySeals">Selos de fábrica:</label>
                <select name="factorySeals">
                    <option value="intact">Intacto</option>
                    <option value="violated">Violado</option>
                </select>
            </div>
            <div class="form-group" style="margin-bottom: 20px;">
                <label for="originalBox">Caixa original:</label>
                <select name="originalBox">
                    <option value="true">Vai com caixa original</option>
                    <option value="false">Sem caixa</option>
                </select>
            </div>
            <div class="form-group" style="margin-bottom: 20px;">
                <label for="invoice">Nota fiscal:</label>
                <select name="invoice">
                    <option value="true">Acompanha NF</option>
                    <option value="false">Não acompanha NF</option>
                </select>
            </div>
            <div class="form-group" style="margin-bottom: 20px;">
                <label for="controls">Controles:</label>
                <select name="controls">
                    <option value="none">Nenhum</option>
                    <option value="one">Um</option>
                    <option value="twoOrMore">Dois ou mais</option>
                </select>
            </div>
            <div class="form-group" style="margin-bottom: 20px;">
                <label for="accompaniesGames">Acompanha jogos?</label>
                <select name="accompaniesGames">
                    <option value="true">Sim</option>
                    <option value="false">Não</option>
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
            <a href="listaEquipamento.jsp">
                <button type="button">Publicar anúncio</button>
            </a>
        </form>
    </div>
</body>

</html>