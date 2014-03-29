<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GoogleMaps.aspx.cs" Inherits="jQuery.GoogleMaps" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>jQuery - Google Maps</title>
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

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Ejemplo de Google Maps</h2>
        </div>
        <div id="map" style="width: 304px; top: 68px; left: 172px; position: absolute; height: 238px">
        </div>
        <br />
        <br />
        <a href="Index.aspx">Menu Principal</a>
    </form>
</body>
</html>
