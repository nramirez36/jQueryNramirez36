<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Efectos.aspx.cs" Inherits="jQuery.Efectos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>jQuery - Efectos</title>
    <link href="styles/css_efectos.css" rel="stylesheet" type="text/css" />
    <script src="scripts/jquery.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            //Muestra el color del div que se hizo click
            $('#boton').click(function () {
                var color = $(this).css('background-color');
                $('#result').html("That div is <span style='color:" + color + ";'>" + color + "</span>.");
            });
            //Aplica over al titulo
            $('#ejemploh1').hover(function () {
                $(this).css('color', 'red');
            }, function () {
                $(this).css('color', 'black');
            })
            //oculta y muestra un texto
            //            $('p:eq(2)').hide();
            //            $('span.mas').click(function () {
            //                $('p:eq(2)').show('slow');
            //                $(this).hide();
            //            });
            //Metodo animate
            $('p:eq(1)').hide();
            $('span.mas').click(function () {
                $('p:eq(1)').animate({ height: 'show', width: 'show', opacity: 'show' }, 'slow');
                $(this).hide();
            });

            $('div.boton').click(function () {
                $(this).animate({ height: 38 }, 'slow');
            });

            //            $('.animate').click(function () {
            //                $(this).animate({ left: 200, height: 38 }, 'slow');
            //            });
            //            $('.animate').click(function () {
            //                $(this)
            //                .animate({ left: 200 }, 'slow')
            //                .animate({ height: 38 }, 'slow');
            //            });
            $('.animate').click(function () {
                $(this)
                .fadeTo('slow', 0.5)
                .animate({ left: 400 }, 'slow')
                .fadeTo('slow', 1.0)
                .slideUp('slow')
                .slideDown('slow');
            });

            //función callback
            $('.callback').click(function () {
                $(this)
                .fadeTo('slow', 0.5)
                .animate({ left: 400 }, 'slow')
                .fadeTo('slow', 1.0, function () {
                    $(this).css('backgroundColor', '#f00');
                });
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <h1 id="ejemploh1">Efectos</h1>  
        <br />
        <span id="result"></span>
        <div style="background-color: Blue;" class="boton">
        </div>
        <div style="background-color: rgb(15,99,30);" class="boton">
        </div>
        <div style="background-color: #123456;" class="boton">
        </div>
        <div style="background-color: #F11;" class="boton">
        </div>
        <div class="clear">
        </div>
        <br />
        <p>
            293 Cobarde y vil podría llamárseme si cediera en todo lo que dices; manda a otros,
            no me des órdenes, pues yo no pienso ya obedecerte. Otra cosa te diré que fijarás
            en la memoria: No he de combatir con estas manos por la joven ni contigo, ni con
            otro alguno, pues al fin me quitáis lo que me disteis; pero, de lo demás que tengo
            junto a mi negra y veloz embarcación, nada podrías llevarte tomándolo contra mi
            voluntad. Y si no, ea, inténtalo, para que éstos se enteren también; y presto tu
            negruzca sangre brotará en torno de mi lanza.</p>
        <span class="mas">. . .</span>
        <p>
            304 Después de altercar así con encontradas razones, se levantaron y disolvieron
            el ágora que cerca de las naves aqueas se celebraba. Fuese el Pelida hacia sus tiendas
            y sus bien proporcionados bajeles con el Menecíada y otros amigos; y el Atrida echó
            al mar una velera nave, escogió veinte remeros, cargó las víctimas de la hecatombe
            para el dios, y, conduciendo a Criseide, la de hermosas mejillas, la embarcó también;
            fue capitán el ingenioso Ulises.</p>
        <div class="animate">
        </div>
        <div class="callback">
        </div>
        <br />
        <br />
        <a href="Index.aspx">Menu Principal</a>
    </form>
</body>
</html>
