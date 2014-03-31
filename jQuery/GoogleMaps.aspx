<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GoogleMaps.aspx.cs" Inherits="jQuery.GoogleMaps" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>jQuery - Google Maps</title>
    <%--<link rel="stylesheet" href="styles/metro-bootstrap.css" type="text/css" />--%>
    <script src="scripts/jquery-ui-1.10.4.custom.min.js" type="text/javascript"></script>
 <%--   <script src="scripts/metro.min.js" type="text/javascript"></script--%>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <script type="text/javascript">
        function InitializeMap() {
            var latlng = new google.maps.LatLng(-31.482760, -64.248751);
            var myOptions = {
                zoom: 10,
                center: latlng,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById("map"), myOptions);
            //agregar marcador con lugar
        }
        window.onload = InitializeMap;

    </script>
    <script type="text/javascript">
        function load(longx, longy, direccion, tipoMapa) {
            var myLatlng = new google.maps.LatLng(longx, longy);
            var mapOptions = {
                center: new google.maps.LatLng(longx, longy),
                zoom: 16,
                mapTypeId: tipoMapa //google.maps.MapTypeId.HYBRID 
            };
            var map = new google.maps.Map(document.getElementById("map"),
                mapOptions);
            var marker = new google.maps.Marker({
                position: myLatlng,
                map: map,
                title: direccion
            });
            marker.info = new google.maps.InfoWindow({
                content: direccion
            });
            google.maps.event.addListener(marker, "mouseover", function () { marker.info.open(map, marker); });
            marker.info.open(map, marker);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Ejemplo de Google Maps</h2>
        </div>
        <button onclick="load('-31.41089','-64.19096', 'Córdoba Capital&lt;br /&gt; INFO &lt;br /&gt; DATOS',google.maps.MapTypeId.NORMAL );">Mostrar en el Mapa</button>
        <div id="map" style="width: 304px; top: 81px; left: 220px; position: absolute; height: 238px">
        </div>
        <br />
        <br />
        <a href="Index.aspx">Menu Principal</a>
    </form>
</body>
</html>
