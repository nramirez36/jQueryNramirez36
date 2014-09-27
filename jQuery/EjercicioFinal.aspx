<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EjercicioFinal.aspx.cs" Inherits="jQuery.EjercicioFinal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>jQuery - Ejercicio Final</title>
    <link rel="stylesheet" type="text/css" href="styles/css_ejerciciofinal.css"/>
    <link rel="stylesheet" type="text/css" href="styles/colorbox.css" />
    <script src="scripts/jquery.js" type="text/javascript"></script>
    <script src="scripts/jquery.colorbox-min.js" type="text/javascript"></script>
    <script src="scripts/jquery.galery.js" type="text/javascript"></script>
    <script src="scripts/jquery.validate.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('.colizquierda > div').hide();
            $('.menu ul li a:first').addClass('active').show();
            $('.colizquierda div:first').show();
            $('.menu ul li a').click(function () {
                $('.menu ul li a').removeClass('active');
                $(this).addClass('active');
                $('.colizquierda > div').hide();
                var activeTab = $(this).attr('href');
                $(activeTab).fadeIn();
                return false;
            });
            //http: //www.gmarwaha.com/jquery/jcarousellite/#knownIssues
                $(function () {
                    $('.fotoschicas').jCarouselLite({
                        auto: true,
                        speed: 1000,
                        visible: 4,
                        circular: true,
                    });
                    $('.fotoschicas ul li img').click(function () {
                        var value = $(this).attr('src');
                        $('.fotogrande img').attr('src', value);
                    });
                });
            $(document).ready(function () {
                $('#link').colorbox({ width: '680', height: '650', iframe: true });
            });
            $(document).ready(function () {
                $('#form1').validate({
                    rules:
                        {
                            nombre: 'required',
                            email:
                                {
                                    required: true,
                                    email: true
                                },
                            grupo1:
                                {
                                    required: true
                                }
                        },
                    messages:
                        {
                            nombre: 'Debe ingresar el nombre',
                            email:
                                {
                                    required: 'Debe ingresar el email',
                                    email: 'El email ingresado es incorrecto'
                                },
                            grupo1:
                                {
                                    required: 'Debe seleccionar el sexo'
                                }
                        }
                });
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="Contenedor">
        <!--HEADER-->
        <div class="header">
            <div class="logo">
                <img src="Images/Logo.png" width="232" height="34" alt="Logo Extreme" />
            </div>
        </div>
        <!--FIN HEADER-->
        <!--MENU-->
        <div class="menu">
            <ul>
                <li>
                    <a href="#tabs1">Nieve</a>
                </li>
                <li>
                    <a href="#tabs2">Playa</a>
                </li>
                <li>
                    <a href="#tabs3">Montaña</a>
                </li>
            </ul>
            <div class="clear"></div>
        </div>
        <!--FIN MENU-->
        <!--CONTENEDOR NIEVE-->
        <div id="contenedorNieve">
            <div class="colizquierda">
                <div id="tabs1">
                    <p class="Titulo">
                        DESAFIO <span>SNOWBOARD</span> 2014
                    </p>
                    <div class="fotogrande">
                        <a href="http://www.publispain.com/snowboard/" id="link">
                            <img src="Images/nuevas/Snowboard1.jpg" width="424" height="268" alt="Desafio Snowboard1" border="0" />
                        </a>
                    </div>
                    <div class="fotoschicas">
                        <ul>
                            <li>
                                <img src="Images/nuevas/Snowboard1.jpg" width="101" height="75" alt="Desafio Snowboard1" border="0"/>
                            </li>
                            <li>
                                <img src="Images/nuevas/Snowboard2.jpg" width="101" height="75" alt="Desafio Snowboard2" border="0"/>
                            </li>
                            <li>
                                <img src="Images/nuevas/Snowboard3.jpg" width="101" height="75" alt="Desafio Snowboard3" border="0"/>
                            </li>
                            <li>
                                <img src="Images/nuevas/Snowboard4.jpg" width="101" height="75" alt="Desafio Snowboard4" border="0"/>
                            </li>
                            <li>
                                <img src="Images/nuevas/Snowboard5.jpg" width="101" height="75" alt="Desafio Snowboard5" border="0"/>
                            </li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                </div>
                <div id="tabs2">
                    <p class="Titulo">
                        PLAYA <span>2014</span>
                    </p>
                    <div class="fotogrande">
                        <a href="#">
                            <img src="Images/playa.jpg" width="424" height="268" alt="Playa" border="0" />
                        </a>
                    </div>
                </div>
                <div id="tabs3">
                    <p class="Titulo">
                        MONTAÑA <span>2014</span></p>
                    <div class="fotogrande">
                        <a href="#">
                            <img src="Images/montaña.jpg" width="424" height="268" alt="Montaña" border="0" />
                        </a>
                    </div>
                </div>
            </div>
            <!--FIN COLUMNA IZQUIERDA-->
            <div class="colderecha">
                <p>
                    Lorem ipsum ad his scripta blandit partiendo, eum fastidii accumsan euripidis in,
                    eum liber hendrerit an. Qui ut wisi vocibus suscipiantur, quo dicit ridens inciderint
                    id. Quo mundi lobortis reformidans eu, legimus senserit definiebas an eos. Eu sit
                    tincidunt incorrupte definitionem, vis mutat affert percipit cu, eirmod consectetuer
                    signiferumque eu per. In usu latine equidem dolores. Quo no falli viris intellegam,
                    ut fugit veritus placerat per. Ius id vidit volumus mandamus,
                </p>
                <div class="incripcion">
                    <h1>INSCRIBITE YA!</h1>
                    <div class="label">
                        Nombre
                    </div>
                    <input type="text" class="textbox" id="nombre" name="nombre" />
                    <div class="label">
                        Mail
                    </div>
                    <input type="text" class="textbox" id="email" name="email" />
                    <div class="categoria">
                        <div class="label">
                            Categoria
                        </div>
                        <select id="categoria" name="categoria">
                            <option value="Principiante">Principiante</option>
                            <option value="Nivelbajo">Nivel Básico</option>
                            <option value="NivelMedio">Nivel Medio</option>
                            <option value="NivelAlto">Nivel Alto</option>
                        </select>
                    </div>
                    <div class="radiobutton">
                        <div class="label">
                            Sexo</div>
                        <input type="radio" name="grupo1"/>
                        M
                        <input type="radio" name="grupo1" />
                        F
                    </div>
                    <div class="clear"></div>
                    <!--Botones-->
                    <div class="contenedorbtn">
                        <input type="submit" value="Enviar" class="btn" />
                        <input type="submit" value="Borrar" class="btn" />
                    </div>
                </div>
            </div>
            <!-- FIN COLUMNA DERECHA-->
            <div class="clear"></div>
        </div>
        <!--FIN CONTENEDOR NIEVE-->
        <div class="footer">
            <a href="Index.aspx" target="_blank">
                <img src="Images/Prueba.png" width="66" height="13" alt="Prueba.com" border="0" />
            </a>
        </div>
    </div>
    </form>
</body>
</html>
