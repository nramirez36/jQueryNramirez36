<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropDownListCascadad.aspx.cs" Inherits="jQuery.DropDownListCascadad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>jQuery - DropDownList en Cascada</title>
    <script src="scripts/jquery-1.4.2.min.js" type="text/javascript"></script>
    <script src="scripts/json2.js" type="text/javascript"></script>
    <script type="text/javascript">
        $().ready(function () {
            $.ajax({
                type: "POST",
                url: "Servicios/ServiciosJson.asmx/GetProvincias",
                data: "{}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    BindProvinciasddl(msg.d)
                }
            });
            $("#ddlProvincia").change(function () {
                var ProvinciaID = document.getElementById("<%= ddlProvincia.ClientID %>").value;
                $("#ddlDepartamento").html("");
                $.ajax({
                    type: "POST",
                    url: "Servicios/ServiciosJson.asmx/GetDepartamentos",
                    data: '{codProvincia:' + ProvinciaID + '}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        BindDepartamentoddl(msg.d)
                    }
                });
            });
            $("#ddlDepartamento").change(function () {
                var DepartamentoID = document.getElementById("<%= ddlDepartamento.ClientID %>").value;
                $("#ddlLocalidad").html("");
                 $.ajax({
                     type: "POST",
                     url: "Servicios/ServiciosJson.asmx/GetLocalidades",
                     data: '{codDepartamento:' + DepartamentoID + '}',
                     contentType: "application/json; charset=utf-8",
                     dataType: "json",
                     success: function (msg) {
                         BindLocalidadddl(msg.d)
                     }
                 });
             });
        });
        function BindProvinciasddl(msg) {
            $.each(msg, function () {
                $("#ddlProvincia").append($("<option></option>").val(this['Id']).html(this['Nombre']));
            });
        }
        function BindDepartamentoddl(msg) {
            $.each(msg, function () {
                $("#ddlDepartamento").append($("<option></option>").val(this['Id']).html(this['Nombre']));
            });
        }
        function BindLocalidadddl(msg) {
            $.each(msg, function () {
                $("#ddlLocalidad").append($("<option></option>").val(this['Id']).html(this['Nombre']));
            });
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Provincia:"></asp:Label>
            <asp:DropDownList ID="ddlProvincia" runat="server">
                <asp:ListItem Text="Selecciones una Provincia" Value="0" Selected="True"></asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label2" runat="server" Text="Departamento:"></asp:Label>
            <asp:DropDownList ID="ddlDepartamento" runat="server">
                <asp:ListItem Text="Selecciones un Departamento" Value="0" Selected="True"></asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label3" runat="server" Text="Localidad:"></asp:Label>
            <asp:DropDownList ID="ddlLocalidad" runat="server">
                <asp:ListItem Text="Selecciones una Localidad" Value="0" Selected="True"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <a href="Index.aspx">Menu Principal</a>
        </div>
    </form>
</body>
</html>
