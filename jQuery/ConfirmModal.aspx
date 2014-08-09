<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmModal.aspx.cs" Inherits="jQuery.ConfirmModal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link type="text/css" href="css/demo.css" rel="stylesheet" media="screen" />
    <link type="text/css" href="css/confirm.css" rel="stylesheet" media="screen" />
    <script type="text/javascript" src="scripts/jquery.js"></script>
    <script type="text/javascript" src="scripts/jquery.simplemodal.js"></script>
    <script type="text/javascript" src="scripts/confirm.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">
            <div id="logo">
                <h1>Simple<span>Modal</span></h1>
                <span class="title">A Modal Dialog Framework Plugin for jQuery</span>
            </div>
            <div id="content">
                <div id="confirm-dialog">
                    <h3>Confirm Override</h3>
                    <p>A modal dialog override of the JavaScript confirm function. Demonstrates the use of the <code>onShow</code> callback as well as how to display a modal dialog confirmation instead of the default JavaScript confirm dialog.</p>
                    <input type="button" name="confirm" class="confirm" value="Demo" />
                    or <a href="#" class="confirm">Demo</a>
                </div>

                <!-- modal content -->
                <div id="confirm">
                    <div class="header"><span>Confirm</span></div>
                    <div class="message"></div>
                    <div class="buttons">
                        <div class="no simplemodal-close">No</div>
                        <div class="yes">Yes</div>
                    </div>
                </div>
                <!-- preload the images -->
                <div style="display: none">
                    <img src="img/confirm/header.gif" alt="" />
                    <img src="img/confirm/button.gif" alt="" />
                </div>
            </div>
            <div id="footer">
                ajlndajkbfb fka fkda bsjbn

            </div>
        </div>
    </form>
</body>
</html>
