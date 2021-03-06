﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Colorbox.aspx.cs" Inherits="jQuery.Colorbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>jQuery - Colorbox</title>
    <script type="text/javascript" src="scripts/jquery-1.4.2.min.js"></script>
    <link media="screen" rel="stylesheet" href="styles/colorbox.css" />
    <script type="text/javascript" src="scripts/jquery.colorbox.js"></script>
    <script>
        $(document).ready(function () {
            //Examples of how to assign the ColorBox event to elements
            $("a[rel='example1']").colorbox();
            $("a[rel='example2']").colorbox({ transition: "fade" });
            $("a[rel='example3']").colorbox({ transition: "none", width: "75%", height: "75%" });
            $("a[rel='example4']").colorbox({ slideshow: true });
            $(".example5").colorbox();
            $(".example6").colorbox({ iframe: true, innerWidth: 425, innerHeight: 344 });
            $(".example7").colorbox({ width: "80%", height: "80%", iframe: true });
            $(".example8").colorbox({ width: "50%", inline: true, href: "#inline_example1" });
            $(".example9").colorbox({
                onOpen: function () { alert('onOpen: colorbox is about to open'); },
                onLoad: function () { alert('onLoad: colorbox has started to load the targeted content'); },
                onComplete: function () { alert('onComplete: colorbox has displayed the loaded content'); },
                onCleanup: function () { alert('onCleanup: colorbox has begun the close process'); },
                onClosed: function () { alert('onClosed: colorbox has completely closed'); }
            });

            //Example of preserving a JavaScript event for inline calls.
            $("#click").click(function () {
                $('#click').css({ "background-color": "#f00", "color": "#fff", "cursor": "inherit" }).text("Open this window again and this message will still be here.");
                return false;
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Uso de ColorBox </h1>

        <h2>Elastic Transition</h2>
        <p><a href="Images/content/ohoopee1.jpg" rel="example1" title="Me and my grandfather on the Ohoopee.">Grouped Photo 1</a></p>
        <p><a href="Images/content/ohoopee2.jpg" rel="example1" title="On the Ohoopee as a child">Grouped Photo 2</a></p>
        <p><a href="Images/content/ohoopee3.jpg" rel="example1" title="On the Ohoopee as an adult">Grouped Photo 3</a></p>

        <h2>Fade Transition</h2>
        <p><a href="Images/content/ohoopee1.jpg" rel="example2" title="Me and my grandfather on the Ohoopee">Grouped Photo 1</a></p>
        <p><a href="Images/content/ohoopee2.jpg" rel="example2" title="On the Ohoopee as a child">Grouped Photo 2</a></p>
        <p><a href="Images/content/ohoopee3.jpg" rel="example2" title="On the Ohoopee as an adult">Grouped Photo 3</a></p>

        <h2>No Transition + fixed width and height (75% of screen size)</h2>
        <p><a href="Images/content/ohoopee1.jpg" rel="example3" title="Me and my grandfather on the Ohoopee.">Grouped Photo 1</a></p>
        <p><a href="Images/content/ohoopee2.jpg" rel="example3" title="On the Ohoopee as a child">Grouped Photo 2</a></p>
        <p><a href="Images/content/ohoopee3.jpg" rel="example3" title="On the Ohoopee as an adult">Grouped Photo 3</a></p>

        <h2>Slideshow</h2>
        <p><a href="Images/content/ohoopee1.jpg" rel="example4" title="Me and my grandfather on the Ohoopee.">Grouped Photo 1</a></p>
        <p><a href="Images/content/ohoopee2.jpg" rel="example4" title="On the Ohoopee as a child">Grouped Photo 2</a></p>
        <p><a href="Images/content/ohoopee3.jpg" rel="example4" title="On the Ohoopee as an adult">Grouped Photo 3</a></p>

        <h2>Other Content Types</h2>
        <p><a class='example5' href="Images/content/ajax.html" title="Homer Defined">Outside HTML (Ajax)</a></p>
        <p><a class='example5' href="Images/content/flash.html" title="Royksopp: Remind Me">Flash / Video (Ajax/Embedded)</a></p>
        <p><a class='example6' href="http://www.youtube.com/embed/617ANIA5Rqs?rel=0" title="The Knife: We Share Our Mother's Health">Flash / Video (Iframe/Direct Link To YouTube)</a></p>
        <p><a class='example7' href="http://localhost:43143/Index.aspx">Outside Webpage (Iframe)</a></p>
        <p><a class='example8' href="#">Inline HTML</a></p>

        <h2>Demonstration of using callbacks</h2>
        <p><a class='example9' href="Images/content/marylou.jpg" title="Marylou on Cumberland Island">Example with alerts</a>. Callbacks and event-hooks allow users to extend functionality without having to rewrite parts of the plugin.</p>

        <!-- This contains the hidden content for inline calls -->
        <div style='display: none'>
            <div id='inline_example1' style='padding: 10px; background: #fff;'>
                <p><strong>This content comes from a hidden element on this page.</strong></p>
                <p>
                    The inline option preserves bound JavaScript events and changes, and it puts the content back where it came from when it is closed.<br />
                    <a id="click" href="#" style='padding: 5px; background: #ccc;'>Click me, it will be preserved!</a>
                </p>

                <p><strong>If you try to open a new ColorBox while it is already open, it will update itself with the new content.</strong></p>
                <p>
                    Updating Content Example:<br />
                    <a class="example5" href="Images/content/flash.html">Click here to load new content</a>
                </p>
            </div>
        </div>
    </form>
</body>
</html>
