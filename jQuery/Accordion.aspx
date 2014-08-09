<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Accordion.aspx.cs" Inherits="jQuery.Accordion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>jQuery - Accordion</title>
    <link rel="stylesheet" href="styles/jquery-ui-1.10.4.custom.css" />
    <script type="text/javascript" src="scripts/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="scripts/jquery-ui-1.10.4.custom.min.js"></script>
    <script type="text/javascript" src="scripts/hmac-md5.js"></script>
    <script type="text/javascript" src="scripts/jquery.easing.1.3.js"></script>
    <script>
        $(function () {
            $("#accordion").accordion();
        })
    </script>
    <script>

        var serviceURL = encodeURI("http://ws_geosolution.geosolution.com.ar/mobile_test/Mobile/");
        var idGeo = "dd540f1f-44ac-4929-a4e8-777a5d9b66b3";
        var key = "n9tNJicGUqLc6KbDzeGoVNoDcNC70rjEgrXrKM8a";

        function getLocalidades() {
            //ajaxRequest(action,successFunction,callParameters,errorMessage)
            var day = moment();
            var dayToSend = day.format("YYYY-MM-DDTHH:mm:ss");
            var mensaje = day.format('YYYYMMDDHHmmss');
            var hashBuild = CryptoJS.HmacMD5(mensaje, key).toString(CryptoJS.enc.Base64);
            var postData = { id: idGeo, hash: hashBuild, fecha: dayToSend };

            return ajaxRequest('ObtenerLocalidades', function (data) {
                getSelectCallback(data, 'selectCity', 'Ciudad', false);
                getSelectCallback(data, 'predeterminedCityCombo', 'Ciudad', false);
            }
            , postData, 'Error al obtener las localidades.');
        }
        function ajaxRequest(action, successFunction, postData, errorMessage) {
            $("#preloaderWrapper").show();
            $("#connectionProblem").hide();

            return $.ajax({
                url: serviceURL + action,                
                data: postData,
                dataType: 'jsonp',
                jsonp: 'jsoncallback',
                timeout: 30000,
                success: function (data, status) {
                    $("#preloaderWrapper").hide();
                    if (data.Status == 'Ok') {
                        console.log(serviceURL + action);
                        successFunction(data.Data);
                    }
                    else {
                        console.log(serviceURL + action);
                        alert(data.ErrorMessage);
                    }
                },
                error: function (e) {
                    $("#preloaderWrapper").hide();
                    alert(errorMessage);
                }
            });
            function getSelectCallback(data, selectId, displayName, setDisplayName) {
                $('#' + selectId + ' option').remove();
                if (setDisplayName) {
                    $('#' + selectId).append('<option value=0>' + displayName + '</option>');
                }
                $.each(data, function (index, item) {
                    $('#' + selectId).append('<option value=' + item.Key + '>' + item.Value + '</option>');
                });

            }
        }

    </script>
    <script>
        $(document).ready(function () {
            getLocalidades();
        });
    </script>



</head>
<body>
    <form id="form1" runat="server">
        <div id="preloaderWrapper">
            <div id="preloader">
                <img  alt="asdasdsa" /></div>
            <div id="connectionProblem">
                <div>
                    Sin conexión para usar la aplicación.
                </div>
                <div>
                    Envie un SMS al 70705.
                </div>
                <div>
                    TUP (espacio) + Parada (espacio) + Linea
                </div>
            </div>
        </div>
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
