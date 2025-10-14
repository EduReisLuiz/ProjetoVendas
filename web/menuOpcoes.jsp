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
            font-size: 1.5em;
            font-weight: bold;
        }
        button{
            background-color: #ffa31a;
            padding: 20px;
            text-align: center;
            font-size: 1em;
            font-weight: bold;
        }
        button:hover{
            background-color: black;
            color: white;
        }
    </style>
</head>
<body>
<header>
    <h1 class="header" style="color: white;"> NextPlay Store </h1>
</header>
        
<div style="display: flex; justify-content: center; align-items: center; height: 100vh;">
    <form name="frm" method="post" action="ProductController" style="display: flex; flex-direction: column; align-items: center;">
        <div style="display: flex; gap: 10px; margin-top: 10px;">
            <a href="compraEquipamento.jsp">
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
