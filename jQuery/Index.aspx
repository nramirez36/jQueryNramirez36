<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="jQuery.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>jQuery - Ejemplos Basicos</title>
    <link rel="stylesheet" href="styles/metro-bootstrap.css" type="text/css" />
    <script src="scripts/jquery-ui-1.10.4.custom.min.js" type="text/javascript"></script>
    <script src="scripts/load-metro.js" type="text/javascript"></script>
</head>
<body class="metro">
    <form id="form1" runat="server">
        <header class="title">
            <h1 class="super-title">Ejemplo de uso de jQuery</h1>
            <hr />
        </header>
        <div class="left">
            <%--<h1 class="element">Ejemplo de uso de jQuery</h1>
            <br />--%>
            <a class="button danger" href="Selectores.aspx">Selectores</a>
            <a class="button success" href="Eventos.aspx">Eventos</a>
            <a class="button success" href="Efectos.aspx">Efectos</a>
            <a class="button success" href="ManipulacionDOM.aspx">Manipulacion DOM</a>
            <a class="button success" href="DefaultjQuery.aspx">Ajax</a>
            <a class="button success" href="EjercicioFinal.aspx">Ejericio Final</a>
            <a class="button success" href="DropDownListCascadad.aspx">DropDownList en Cascada</a>
            <a class="button success" href="Autocompletar.aspx">Autocompletar</a>
            <a class="button success" href="GoogleMaps.aspx">GoogleMaps</a>
            <a class="button success" href="DatePicker.aspx">DatePicker</a>
            <%--<a class="button success" href="TemplateMetro.aspx">Nueva Pagina de Inicio</a>--%>
            <a class="button success" href="Accordion.aspx">Accordion</a>
        </div>
        <div class="left">
            <%--<a class="button success" href="#">Button</a>
            <a class="button success" href="#">Dialog</a>
            <a class="button success" href="#">Menu</a>
            <a class="button success" href="#">ProgressBar</a>
            <a class="button success" href="#">Slider</a>
            <a class="button success" href="#">Spinner</a>
            <a class="button success" href="#">Tabs</a>
            <a class="button success" href="#">ToolTip</a>
            <a class="button success" href="#">Agregar</a>
            <a class="button success" href="#">Agregar</a>
            <a class="button success" href="#">Agregar</a>
            <a class="button success" href="#">Agregar</a>
            <a class="button success" href="#">Agregar</a>
            <a class="button success" href="#">Agregar</a>
            <a class="button success" href="#">Agregar</a>
            <a class="button success" href="#">Agregar</a>
            <a class="button success" href="#">Agregar</a>
            <a class="button success" href="#">Agregar</a>
            <a class="button success" href="#">Agregar</a>--%>
        </div>
        <div class="clearfix"></div>
        <%--<h1>SE DEBE QUITAR DE ESTA PAGINA LO SIGUIENTE</h1>

        <hr />
        <table>
            <tr>
                <td>
                    <asp:DropDownList ID="ddlLista" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="btnAgregarUno" runat="server" Text=">" OnClick="btnAgregarUno_Click" />
                    <br />
                    <asp:Button ID="btnAgregarTodos" runat="server" Text=">>" OnClick="btnAgregarTodos_Click" />
                    <br />
                    <asp:Button ID="btnQuitarTodos" runat="server" Text="<<" OnClick="btnQuitarTodos_Click" />
                    <br />
                    <asp:Button ID="btnQuitarUno" runat="server" Text="<" OnClick="btnQuitarUno_Click" />
                </td>
                <td>
                    <asp:ListBox ID="lstLista" runat="server" Height="127px" Width="242px"></asp:ListBox>
                </td>
            </tr>
        </table>--%>
    </form>
</body>
</html>
