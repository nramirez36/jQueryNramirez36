<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Eventos.aspx.cs" Inherits="jQuery.Eventos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>jQuery - Eventos</title>
    <link rel="stylesheet" href="styles/css_eventos.css" type="text/css" />
    <script src="scripts/jquery.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#cambiar').click(function () {
                $('.click p').addClass('nuevocolor');
            });
            $('#borrar').click(function () {
                $('.click p').addClass('ocultar');
            });
        });
    </script>   
</head>
<body>
    <form id="form1" runat="server">
    <div id="contenedor">
        <h1 id="ejemploh1">
            Eventos
        </h1>
        <div class="click">
            <h2>Ejemplo Click</h2>
            <p>Este texto va a cambiar de estilo cuando le des click al boton de abajo</p>
            <input id="cambiar" type="button" value="Cambiar" />
            <div id="borrar">Borrar</div>
        </div>
        <br />
        <br />
        <a href="Index.aspx">Menu Principal</a>
    </div>
    </form>
</body>
</html>
