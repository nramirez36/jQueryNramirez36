<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatePicker.aspx.cs" Inherits="jQuery.DatePicker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>jQuery - DatePicker</title>

    <%--<link rel="stylesheet" href="http://jquery-ui.googlecode.com/svn/tags/1.7/themes/redmond/jquery-ui.css" />--%>

    <%--http://jquery-ui.googlecode.com/svn/tags/1.7/themes/redmond/jquery-ui.css--%>
    <%--<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css" />--%>

   <%-- <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/jquery-ui.min.js"></script>--%>

    <%--<link rel="stylesheet" href="styles/jquery-ui-1.10.4.custom.css" />--%>
    <%--<script type="text/javascript" src="scripts/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="scripts/jquery-ui-1.10.4.custom.min.js"></script>--%>

    <link href="styles/ui-lightness/jquery-ui-1.10.4.custom.css" rel="stylesheet" />
    <script src="scripts/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="scripts/jquery-ui-1.10.4.custom.js" type="text/javascript"></script>
    <script>
        $(function () {
            $("#txtFecha").datepicker();
            $("#txtFechaMesAnio").datepicker({
                changeMonth: true,
                changeYear: true
            });
            $("#txtFechaMultipleMes").datepicker({
                numberOfMonths: 3,
                showButtonPanel: true
            });
            $("#format").change(function () {
                $("#txtFecha").datepicker("option", "dateFormat", $(this).val());
            });
            $("#txtFechaIcono").datepicker({
                showOn: "button",
                buttonImage: "Images/calc.png",
                buttonImageOnly: true
            });
            $("#txtFechaAlterno").datepicker({
                altField: "#txtAlterno",
                altFormat: "DD, d MM, yy"
            });
            $("#txtFechaRango").datepicker({
                minDate: -20,
                maxDate: "+1M +10D"
            });
            $("#txtDesde").datepicker({
                defaultDate: "+1w",
                changeMonth: true,
                numberOfMonths: 3,
                onClose: function (selectedDate) {
                    $("#txtHasta").datepicker("option", "minDate", selectedDate);
                }
            });
            $("#txtHasta").datepicker({
                defaultDate: "+1w",
                changeMonth: true,
                numberOfMonths: 3,
                onClose: function (selectedDate) {
                    $("#txtDesde").datepicker("option", "maxDate", selectedDate);
                }
            });
        });
    </script>
     <style>
        #ui-datepicker-div {
            width: 13em;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="contenedor">
            <h1 id="ejemploh1">DatePicker</h1>
            <div class="click">
                <h2>Ejemplo de DatePicker</h2>
                <hr />
                <h3>DatePicker Basico</h3>
                <asp:TextBox ID="txtFecha" runat="server"></asp:TextBox>
                <h3>DatePicker Cambio de Mes y Año</h3>
                <asp:TextBox ID="txtFechaMesAnio" runat="server"></asp:TextBox>
                <h3>DatePicker Multiples Meses</h3>
                <asp:TextBox ID="txtFechaMultipleMes" runat="server"></asp:TextBox>
                <h3>DatePicker FormateablDatePicker Formateable</h3>
                <asp:DropDownList ID="format" runat="server">
                    <asp:ListItem Value="mm/dd/yy">Por Defecto - mm/dd/yy</asp:ListItem>
                    <asp:ListItem Value="yy-mm-dd">ISO 8601 - yy-mm-dd</asp:ListItem>
                    <asp:ListItem Value="d M, y">Short - d M, y</asp:ListItem>
                    <asp:ListItem Value="d MM, y">Medium - d MM, y</asp:ListItem>
                    <asp:ListItem Value="DD, d MM, yy">Full - DD, d MM, yy</asp:ListItem>
                    <asp:ListItem Value=" 'day' d 'of' MM 'in the year' yy">With text - &#39;day&#39; d &#39;of&#39; MM &#39;in the year&#39; yy</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="txtFechaFormateable" runat="server"></asp:TextBox>
                <h3>DatePicker Icono</h3>
                <asp:TextBox ID="txtFechaIcono" runat="server"></asp:TextBox>
                <h3>DatePicker Cargar Campo Alterno</h3>
                <asp:TextBox ID="txtFechaAlterno" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtAlterno" runat="server"></asp:TextBox>
                <h3>DatePicker Rango</h3>
                <asp:TextBox ID="txtFechaRango" runat="server"></asp:TextBox>
                <h3>DatePicker Entre Fechas</h3>
                <asp:TextBox ID="txtDesde" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtHasta" runat="server"></asp:TextBox>
                <asp:HiddenField ID="hdDato" runat="server" />

            </div>
            <br />
            <br />
            <a href="Index.aspx">Menu Principal</a>
        </div>
    </form>
</body>
</html>
