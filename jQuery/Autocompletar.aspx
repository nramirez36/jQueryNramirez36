<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Autocompletar.aspx.cs" Inherits="jQuery.Autocompletar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>jQuery - Autocompletar</title>
    <link rel="stylesheet" href="styles/css_eventos.css" type="text/css" />
    <%--<script src="scripts/jquery.js" type="text/javascript"></script>--%>

    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/jquery-ui.min.js"></script>


    <script type="text/javascript">
        $(document).ready(function () {
            //$('#txtAutocompletar').autocomplete({
            //    source: function (request, response) {
            //        $.ajax({
            //            url: "Servicios/ServiciosJson.asmx/GetNombreLocalidades",
            //            data: "{'prefix':'" + request.term + "'}",
            //            datatType: "json",
            //            type: "POST",
            //            contentType: "application/json; charset=utf-8",
            //            success: function (data) {
            //                response($.map(data.d, function (item) {
            //                    return {
            //                        label: item.split('-')[1],
            //                        val: item.split('-')[0]
            //                    }
            //                }))
            //            },
            //            error: function (response) {
            //                alert(response.responseText);
            //            },
            //            failure: function (response) {
            //                alert(response.responseText);
            //            }
            //        });
            //    },
            //    select: function (e, i) {
            //        $('#hdDato').val(i.item.val);
            //    },
            //    minLength: 2
            //});
            $(".tb").autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "Servicios/ServiciosJson.asmx/GetNombreLocalidad",
                        data: "{ 'prefix': '" + request.term + "' }",
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        dataFilter: function (data) { return data; },
                        success: function (data) {
                            response($.map(data.d, function (item) {
                                return {
                                    value: item.Nombre
                                }
                            }))
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            alert(textStatus);
                        }
                    });
                },
                minLength: 2
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="contenedor">
            <h1 id="ejemploh1">Autocompletar
            </h1>
            <div class="click">
                <h2>Ejemplo de Autocompletar</h2>
                <p>Ingrese el nombre de una localidad</p>
                <asp:TextBox ID="txtAutocompletar" CssClass="tb" runat="server"></asp:TextBox>
                <asp:HiddenField ID="hdDato" runat="server" />
            </div>

            <br />
            <br />
            <a href="Index.aspx">Menu Principal</a>
        </div>
    </form>
</body>
</html>
