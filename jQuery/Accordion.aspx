<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Accordion.aspx.cs" Inherits="jQuery.Accordion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>jQuery - Accordion</title>
    <link rel="stylesheet" href="styles/jquery-ui-1.10.4.custom.css" />
    <script type="text/javascript" src="scripts/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="scripts/jquery-ui-1.10.4.custom.min.js"></script>
    <script>
        $(function () {
            $("#accordion").accordion();
        })
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="contenedor">
            <h1 id="ejemploh1">Accordion
            </h1>
            <div id="accordion">
                <h3>First</h3>
                <div>Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.</div>
                <h3>Second</h3>
                <div>Phasellus mattis tincidunt nibh.</div>
                <h3>Third</h3>
                <div>Nam dui erat, auctor a, dignissim quis.</div>
            </div>
            <br />
            <br />
            <a href="Index.aspx">Menu Principal</a>
        </div>
    </form>
</body>
</html>
