<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Menu de opções</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<div style="display: flex; justify-content: center; align-items: center; height: 100vh;">
    <form name="frm" method="post" action="ProductController" style="display: flex; flex-direction: column; align-items: center;">
        <div style="display: flex; gap: 10px; margin-top: 10px;">
            <a href="ProductController">
                <button type="button">Comprar</button>
            </a>
            <input type="submit" id="insert" value="Vender">
        </div>
    </form>
</div>
</body>
</html>
