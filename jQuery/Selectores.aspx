<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Selectores.aspx.cs" Inherits="jQuery.Selectores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>jQuery - Selectores</title>
    <link rel="stylesheet" href="styles/css_selectores.css" type="text/css" />
    <script src="scripts/jquery.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            //Agregar una clase a un elemento HTML
            $('#ejemploh1').addClass('classh1');
            //Agregar una clase a los <li> hijos del elemento con el id="menu"
            $('#menu > li').addClass('horizontal');
            //Agregar una clase a los <li> que no tengan la clase "horizontal"
            $('#menu li:not(.horizontal)').addClass('sub-level');
            //Otra forma
            //$('#menu li ul li').addClass('sub-level');
            //SELECTORES XPATH
            //Añade una clase al a que tenga en el href al principio tenga un mailto
            $('a[href^="mailto:"]').addClass('mailto');
            //Añade una clase al a que tenga en el href al final .ar
            $('a[href$=".ar"]').addClass('arlink');
            //Añade una clase al a que tenga en el href en cualquier parte del string google
            $('a[href*="google"]').addClass('mysite');
            //SELECTOR PERSONALIZADO
            //Los impares
            $('.menu2 li:odd').addClass('odd');
            //Los pares
            $('.menu2 li:even').addClass('even');
            //Contiene un string
            $('.menu2 li:contains("Rojo")').addClass('destacado');
            //MÉTODOS TRANSVERSALES
            //$('#ejemploh1').parent().addClass('padreh1');
            //$('.menu2 li:contains("Violeta")').next().addClass('destacado');
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="contenedor">
            <h1 id="ejemploh1">Selectores
            </h1>
            <ul id="menu">
                <li>Menu1
                <ul>
                    <li>
                        <a href="http://www.jquery.com">SubMenu1</a>
                    </li>
                    <li>SubMenu2</li>
                    <li>SubMenu3</li>
                    <li>SubMenu4</li>
                </ul>
                </li>
                <li>Menu2
                <ul>
                    <li>
                        <a href="http://www.google.com">SubMenu1</a>

                    </li>
                    <li>SubMenu2</li>
                </ul>
                </li>
                <li>Menu3</li>
                <li>Menu4</li>
                <li>Menu5
                <ul>
                    <li>
                        <a href="mailto:prueba@hotmail.com">SubMenu1</a>
                    </li>
                    <li>SubMenu2</li>
                </ul>
                </li>
            </ul>
            <ul class="menu2">
                <li>Azul</li>
                <li>Verde</li>
                <li>Rojo</li>
                <li>Violeta</li>
                <li>Blanco</li>
            </ul>
            <br />
            <br />
            <a href="Index.aspx">Menu Principal</a>
        </div>
    </form>
</body>
</html>
