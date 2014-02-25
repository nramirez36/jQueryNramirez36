<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultjQuery.aspx.cs" Inherits="jQuery.DefaultjQuery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>jQuery - Ajax</title>
    <link href="styles/css_DefaultjQuery.css" rel="stylesheet" type="text/css" />
    <script src="scripts/jquery.js" type="text/javascript"></script>
    <script type="text/javascript"> 
        $(document).ready(function () {

            var value = 1;
            var text = 'texto';

            //            var params = new Object();
            //            params.value = text;
            //            params.text = text;

            $.ajax({
                type: "POST",
                url: "Servicios/ServiciosJson.asmx/GetCategorias",
                data: "{'value': " + value + ", 'text': '" + text + "'}",
                //data: $.toJSON(params),
                contentType: "application/json;",
                dataType: "json",
                success: function (response) {

                    //console.log(response.d);

                    var models = response.d;

                    $.each(models, function (i) {
                        var val = models[i].Codigo;
                        var text = models[i].Descripcion;

                        $("#ddlCategorias").get(0).options[$("#ddlCategorias").get(0).options.length] = new Option(text, val);
                    });
                },
                error: function (response) {
                    if (response.length != 0)
                        alert(response);
                }
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="main">
        <p>Categorías:</p>
        <asp:DropDownList ID="ddlCategorias" runat="server" ClientIDMode="Static">
            <asp:ListItem Text="Selecciones una Categoria" Value="0" Selected="True"></asp:ListItem>
        </asp:DropDownList>
    </div>
         <br />
        <br />
        <a href="Index.aspx">Menu Principal</a>
    </form>
</body>
</html>
