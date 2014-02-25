<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManipulacionDOM.aspx.cs" Inherits="jQuery.ManipulacionDOM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>jQuery - Manipulacion DOM</title>
    <script src="scripts/jquery.js" type="text/javascript"> </script>
    <script type="text/javascript">
        $(document).ready(function () {
            //Agregar atributos
            $('.titulo a').attr({ 'target': '_blank' });
            //método each
            $('#menu a').each(function (index) {
                $(this).attr({
                    'target': '_blank',
                    'id': 'enlace-' + index
                });
            });

            //método para insertar código html
            //insertAfter se puede seguir haciendo modificaciones sobre el html q se agrega
            $('<h2>Subtitulo</h2>').insertAfter('.titulo');
            $('<h2>Subtitulo</h2>').insertBefore('.titulo');
            //after se puede seguir haciendo modificaciones sobre el selector
            $('.titulo').after('<h2>Subtitulo</h2>');
            //se añade html al principio de ...
            $('<p>Superior</p>').prependTo('body');

            //Modificar el texto
            $('.boton').click(function () {
                $('#ejemploh1').text('Nuevo Titulo');
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="titulo">
        <a href="http://www.google.com">
            <h1 id="ejemploh1">Manipulacion DOM</h1>
        </a>
    </div>
        <input type="button" class="boton" value="Cambiar titulo"/>
    <br />
    <ul id="menu">
        <li>Menu1
            <ul>
                <li><a href="http://www.jquery.com">SubMenu1</a></li>
                <li>SubMenu2</li>
                <li>SubMenu3</li>
                <li>SubMenu4</li>
            </ul>
        </li>
        <li>Menu2
            <ul>
                <li><a href="http://www.google.com">SubMenu1</a></li>
                <li>SubMenu2</li>
            </ul>
        </li>
        <li>Menu3</li>
        <li>Menu4</li>
        <li>Menu5
            <ul>
                <li><a href="mailto:prueba@hotmail.com">SubMenu1</a></li>
                <li>SubMenu2</li>
            </ul>
        </li>
        <li>Menu6</li>
    </ul>
    <br />
    <br />
    <a href="Index.aspx">Menu Principal</a>
    </form>
</body>
</html>
