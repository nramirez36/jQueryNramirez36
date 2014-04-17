﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TemplateMetro.aspx.cs" Inherits="jQuery.TemplateMetro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="product" content="jQuery - nramirez36">
    <meta name="description" content="Ejemplos de jQuery">
    <meta name="author" content="nramirez36">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>jQuery - Ejemplo Metro UI</title>
    <link href="styles/metro-bootstrap.css" rel="stylesheet" />
    <link href="styles/iconFont.css" rel="stylesheet" />
    <script src="scripts/jquery-1.4.2.min.js" type="text/javascript"></script>
    <script src="scripts/jquery.widget.min.js" type="text/javascript"></script>
    <script src="scripts/load-metro.js" type="text/javascript"></script>
    <%--<script src="scripts/github.info.js" type="text/javascript"></script>--%>
    <style>
        .container {
            width: 1040px;
        }
    </style>
</head>
<body class="metro">
    <form id="form1" runat="server">
        <div class="container">
            <header class="margin20 nrm nlm">
                <div class="clearfix">
                    <div class="place-right">
                        <form>
                            <div class="input-control text size6 margin20 nrm">
                                <input type="text" name="q" placeholder="Search...">
                                <button class="btn-search"></button>
                            </div>
                        </form>
                    </div>
                    <a class="place-left" href="#" title="">
                        <h1>Ejemplos de jQuery</h1>
                    </a>
                </div>

                <div class="main-menu-wrapper">
                    <ul class="horizontal-menu nlm">
                        <li><a href="#">Interactiones</a></li>
                        <li><a href="#">Widgets</a></li>
                        <li><a href="#">Effects</a></li>
                        <li><a href="#">Utilities</a></li>
                        <li><a href="#">autos</a></li>
                        <li><a href="#">living</a></li>
                        <li><a href="#">health</a></li>
                        <li class="place-right">
                            <a href="#" class="dropdown-toggle">options</a>
                            <ul class="dropdown-menu place-right" data-show="hover">
                                <li><a href="#">Go to Classic MSN</a></li>
                                <li><a href="#">MSN Worldwide</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </header>

            <div class="main-content clearfix">
                <div class="tile-area no-padding clearfix">
                    <div class="tile-group no-margin no-padding clearfix" style="width: 100%">
                        <div class="tile double quadro-vertical bg-gray ol-transparent" style="float: right;">
                            <div class="tile-content">
                                <div class="brand">
                                    <span class="label fg-white">ads here...</span>
                                </div>
                            </div>
                        </div>

                        <div class="tile quadro double-vertical ol-transparent">
                            <div class="tile-content">
                                <div class="carousel" data-role="carousel" data-height="100%" data-width="100%" data-controls="false">
                                    <div class="slide">
                                        <img src="styles/imagesMetro/1.jpg" />
                                    </div>
                                    <div class="slide">
                                        <img src="styles/imagesMetro/2.jpg" />
                                    </div>
                                    <div class="slide">
                                        <img src="styles/imagesMetro/3.jpg" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tile bg-lightBlue ol-transparent">
                            <div class="tile-content icon">
                                <span class="icon-windows"></span>
                            </div>
                        </div>
                        <div class="tile bg-orange ol-transparent">
                            <div class="tile-content icon">
                                <span class="icon-music"></span>
                            </div>
                        </div>
                        <div class="tile ol-transparent bg-teal">
                            <div class="tile-content icon">
                                <span class="icon-facebook"></span>
                            </div>
                        </div>
                        <div class="tile ol-transparent bg-green">
                            <div class="tile-content icon">
                                <span class="icon-twitter"></span>
                            </div>
                        </div>

                        <div class="tile triple double-vertical ol-transparent bg-white">
                            <div class="tile-content">
                                <div class="panel no-border">
                                    <div class="panel-header bg-darkRed fg-white">news</div>
                                    <div class="panel-content fg-dark nlp nrp">
                                        <img src="styles/imagesMetro/jeki_chan.jpg" class="place-left margin10 nlm ntm size2">
                                        <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.
                                    Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                                    Lorem Ipsum has been the industry's standard dummy text.
                               
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tile triple double-vertical ol-transparent bg-white">
                            <div class="tile-content">
                                <div class="panel no-border">
                                    <div class="panel-header bg-pink fg-white">entertainment</div>
                                    <div class="panel-content fg-dark nlp nrp">
                                        <img src="styles/imagesMetro/jek_vorobey.jpg" class="place-left margin10 nlm ntm size2">
                                        <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.
                                    Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                                    Lorem Ipsum has been the industry's standard dummy text.
                               
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End first group -->

                    <div class="tile-group no-margin no-padding clearfix" style="width: 100%">
                        <div class="tile double ol-transparent"></div>
                        <div class="tile double ol-transparent"></div>
                        <div class="tile double ol-transparent"></div>
                        <div class="tile double ol-transparent"></div>
                    </div>

                    <div class="tile-group no-margin no-padding1 clearfix" style="width: 100%;">
                        <a href="#"><span class="tile-group-title fg-orange">NEWS <span class="icon-arrow-right-5"></span></span></a>
                        <div class="tile quadro double-vertical ol-transparent"></div>
                        <div class="tile double ol-transparent"></div>
                        <div class="tile ol-transparent"></div>
                        <div class="tile ol-transparent"></div>
                        <div class="tile ol-transparent"></div>
                        <div class="tile ol-transparent"></div>
                        <div class="tile double ol-transparent"></div>
                    </div>

                    <div class="tile-group no-margin no-padding1 clearfix" style="width: 100%;">
                        <a href="#"><span class="tile-group-title fg-cobalt">SPORT <span class="icon-arrow-right-5"></span></span></a>
                        <div class="tile quadro double-vertical ol-transparent"></div>
                        <div class="tile double ol-transparent"></div>
                        <div class="tile ol-transparent"></div>
                        <div class="tile ol-transparent"></div>
                        <div class="tile ol-transparent"></div>
                        <div class="tile ol-transparent"></div>
                        <div class="tile double ol-transparent"></div>
                    </div>
                </div>
            </div>
            <!-- End of tiles -->

            <footer>
                <div class="bottom-menu-wrapper">
                    <ul class="horizontal-menu compact">
                        <li>&copy; 2014 jQuery - nramirez36</li>
                   <%--     <li><a href="#">Privacy</a></li>
                        <li><a href="#">Legal</a></li>
                        <li><a href="#">Advertise</a></li>
                        <li><a href="#">Help</a></li>
                        <li><a href="#">Feedback</a></li>--%>
                    </ul>
                </div>
            </footer>
        </div>

        <%--<script src="js/hitua.js"></script>--%>
    </form>
</body>
</html>
