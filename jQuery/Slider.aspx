﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Slider.aspx.cs" Inherits="jQuery.Slider" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>AnythingSlider</title>
    <link rel="shortcut icon" href="Images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="Images/apple-touch-icon.png" />

    <!-- jQuery (required) -->
    <script src="scripts/jquery-1.8.2.min.js" type="text/javascript"></script>
    <script>window.jQuery || document.write('<script src="scripts/jquery-1.8.2.min.js"><\/script>')</script>

    <!-- Syntax highlighting -->
    <link rel="stylesheet" href="css/prettify.css" media="screen" />
    <script src="scripts/prettify.js" type="text/javascript"></script>

    <!-- Anything Slider optional plugins -->
    <script src="scripts/jquery.easing.1.2.js" type="text/javascript"></script>
    <script src="scripts/swfobject.js"></script>

    <!-- Demo stuff -->
    <link rel="stylesheet" href="css/page.css" media="screen" />
    <script src="scripts/jquery.jatt.min.js" type="text/javascript"></script>

    <!-- AnythingSlider -->
    <link rel="stylesheet" href="css/anythingslider.css" />
    <script src="scripts/jquery.anythingslider.js"></script>

    <!-- AnythingSlider video extension; optional, but needed to control video pause/play -->
    <script src="scripts/jquery.anythingslider.video.js"></script>

    <!-- Ideally, add the stylesheet(s) you are going to use here,
	 otherwise they are loaded and appended to the <head> automatically and will over-ride the IE stylesheet below -->
    <link rel="stylesheet" href="css/theme-metallic.css" />
    <link rel="stylesheet" href="css/theme-minimalist-round.css" />
    <link rel="stylesheet" href="css/theme-minimalist-square.css" />
    <link rel="stylesheet" href="css/theme-construction.css" />
    <link rel="stylesheet" href="css/theme-cs-portfolio.css" />

    <script>
        // Demo functions
        // **************
        $(function () {

            prettyPrint();

            // External Link with callback function
            $("#slide-jump").click(function () {
                $('#slider2').anythingSlider(4, function (slider) { /* alert('Now on page ' + slider.currentPage); */ });
                return false;
            });

            // External Link
            $("a.muppet").click(function () {
                $('#slider1').anythingSlider(5);
                $(document).scrollTop(0); // make the page scroll to the top so you can watch the video
                return false;
            });

            // Report Events to console & features list
            $('#slider1, #slider2').bind('before_initialize initialized swf_completed slideshow_start slideshow_stop slideshow_paused slideshow_unpaused slide_init slide_begin slide_complete', function (e, slider) {
                // show object ID + event (e.g. "slider1: slide_begin")
                var txt = slider.$el[0].id + ': ' + e.type + ', now on panel #' + slider.currentPage;
                $('#status').text(txt);
                if (window.console && window.console.firebug) { console.debug(txt); } // added window.console.firebug to make this work in Opera
            });

            // Theme Selector (This is really for demo purposes only)
            var themes = ['minimalist-round', 'minimalist-square', 'metallic', 'construction', 'cs-portfolio'];
            $('#currentTheme').change(function () {
                var theme = $(this).val();
                $('#slider1').closest('div.anythingSlider')
					.removeClass($.map(themes, function (t) { return 'anythingSlider-' + t; }).join(' '))
					.addClass('anythingSlider-' + theme);
                $('#slider1').anythingSlider(); // update slider - needed to fix navigation tabs
            });

            // Add a slide
            var imageNumber = 1;
            $('button.add').click(function () {
                $('#slider1')
					.append('<li><img src="images/slide-tele-' + (++imageNumber % 2 + 1) + '.jpg" alt="" /></li>')
					.anythingSlider(); // update the slider
            });
            $('button.remove').click(function () {
                $('#slider1 > li:not(.cloned):last').remove();
                $('#slider1').anythingSlider(); // update the slider
            });

        });

	</script>

    <script>
        // Set up Sliders
        // **************
        $(function () {

            $('#slider1').anythingSlider({
                theme: 'metallic',
                //easing: 'easeInOutBack',
                //mode: 'f',   // fade mode - new in v1.8!
                resizeContents: false, // If true, solitary images/objects in the panel will expand to fit the viewport
                //navigationSize: 3,     // Set this to the maximum number of visible navigation tabs; false to disable
                autoPlay: true,
                hashTags: false,
                buildStartStop: false,
                toggleControls: false,
                buildArrows:false,
                navigationFormatter: function (index, panel) {
                    return ['Slab', 'Parking Lot', 'Drive', 'Glorius Dawn', 'Bjork?', 'Traffic Circle'][index - 1];
                },
                onSlideComplete: function (slider) {
                    // alert('Welcome to Slide #' + slider.currentPage);
                }
            });

            $('#slider2').anythingSlider({
                mode: 'f',   // fade mode - new in v1.8!
                resizeContents: false, // If true, solitary images/objects in the panel will expand to fit the viewport
                navigationSize: 3,     // Set this to the maximum number of visible navigation tabs; false to disable
                autoPlay: true,
                hashTags: false,            
                navigationFormatter: function (index, panel) { // Format navigation labels with text
                    return ['Recipe', 'Quote', 'Image', 'Quote #2', 'Image #2'][index - 1];
                },
                onSlideBegin: function (e, slider) {
                    // keep the current navigation tab in view
                    slider.navWindow(slider.targetPage);
                }
            });

            // tooltips for first demo
            $.jatt();

        });
	</script>
</head>
<body id="main">
    <form id="form1" runat="server">
        <div id="page-wrap">

            <%--<div id="nav">
                <a class="current" href="index.html">Main Demo</a>
                <a href="simple.html">Simple Demo</a>
                <a href="expand.html">Expand Demo</a>
                <a href="video.html">Video Demo</a>
                <a href="demos.html">FX Demos</a>
                <a href="css3.html">CSS3 Demo</a>
                <a class="play" href="http://jsfiddle.net/Mottie/ycUB6/">Playground</a>
                <a class="git" href="https://github.com/CSS-Tricks/AnythingSlider/wiki">Documentation</a>
                <a class="git" href="https://github.com/CSS-Tricks/AnythingSlider/zipball/master">Download</a>
                <a class="issue" href="https://github.com/CSS-Tricks/AnythingSlider/issues">Issues</a>
            </div>--%>

            <h5><a href="http://css-tricks.com/examples/AnythingSlider/">Original</a> By <a href="http://css-tricks.com">Chris Coyier</a>,
		expanded upon by <a href="https://github.com/CSS-Tricks/AnythingSlider/wiki/Credits">many others</a></h5>

            <h1>AnythingSlider</h1>

            <div class="themeselector">
                Theme:
			
                <select id="currentTheme">
                    <option value="default">Default</option>
                    <option value="minimalist-round">Minimalist-Round</option>
                    <option value="minimalist-square">Minimalist-Square</option>
                    <option value="metallic" selected="selected">Metallic</option>
                    <option value="construction">Construction</option>
                    <option value="cs-portfolio">CS-Portfolio</option>
                </select>
                <button class="add">Add Slide</button>
                <button class="remove">Remove Slide</button>
            </div>

            <br>
            <br>

            <!-- AnythingSlider #1 -->
            <ul id="slider1">

                <li>
                    <img src="images/slide-civil-1.jpg" alt=""></li>

                <li>
                    <img src="images/slide-env-1.jpg" alt=""></li>

                <li>
                    <img src="images/slide-civil-2.jpg" alt=""></li>

                <li>
                    <object width="480" height="385">
                        <param name="movie" value="http://www.youtube.com/v/zSgiXGELjbc&amp;hl=en_US&amp;fs=1"></param>
                        <param name="allowFullScreen" value="true"></param>
                        <param name="allowscriptaccess" value="always"></param>
                        <embed src="http://www.youtube.com/v/zSgiXGELjbc&amp;hl=en_US&amp;fs=1" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="480" height="385"></embed></object></li>

                <li class="panel5">
                    <div>
                        <div class="textSlide">
                            <span class="rightside">
                                <object width="500" height="325">
                                    <param name="movie" value="http://www.youtube.com/v/2Qj8PhxSnhg&amp;hl=en_US&amp;fs=1"></param>
                                    <param name="allowFullScreen" value="true"></param>
                                    <param name="allowscriptaccess" value="always"></param>
                                    <embed src="http://www.youtube.com/v/2Qj8PhxSnhg&amp;hl=en_US&amp;fs=1" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="500" height="325"></embed></object></span>
                            <h3>Other Information</h3>
                            <br>
                            <ul>
                                <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla aliquet accumsan eros, et iaculis massa fringilla auctor.</li>
                                <li>Proin a mi ante, ut lobortis risus. Sed fringilla augue sed enim faucibus eget aliquam tellus ultricies.</li>
                                <li>Morbi a magna eu ligula scelerisque lobortis vel non nisi.</li>
                                <li>Aliquam condimentum libero eget elit ultrices sit amet ullamcorper felis gravida.</li>
                            </ul>
                        </div>
                    </div>
                </li>

                <li>
                    <img src="images/slide-env-2.jpg" alt=""></li>

            </ul>
            <!-- END AnythingSlider #1 -->

            <br>
            <br>

            <!-- AnythingSlider #2 -->
            <ul id="slider2">

                <li class="panel1">
                    <div>
                        <div class="textSlide">
                            <img src="images/251356.jpg" alt="tomato sandwich" style="float: right; margin: 0 0 2px 10px; width: 250px; height: 250px;" />
                            <h3>Queenie's Killer Tomato Bagel Sandwich</h3>
                            <h4>Ingredients</h4>
                            <ul>
                                <li>1 bagel, split and toasted</li>
                                <li>2 tablespoons cream cheese</li>
                                <li>1 roma (plum) tomatoes, thinly sliced</li>
                                <li>salt and pepper to taste</li>
                                <li>4 leaves fresh basil</li>
                            </ul>
                        </div>
                    </div>
                </li>

                <li class="panel2">
                    <div class="quoteSlide">
                        <blockquote>
                            In awe I watched the waxing moon ride across the zenith of the heavens like an ambered chariot towards the ebon void of infinite space wherein the tethered belts of Jupiter and Mars hang forever festooned in their orbital majesty. And as I looked at all this I thought... I must put a roof on this lavatory.<br>
                            -- Les Dawson
                        </blockquote>
                    </div>
                </li>

                <li class="panel3">
                    <img src="images/slide-tele-1.jpg" alt="">
                </li>

                <li class="panel4">
                    <div class="quoteSlide">
                        <blockquote>Life is conversational. Web design should be the same way. On the web, you&#8217;re talking to someone you&#8217;ve probably never met - so it&#8217;s important to be clear and precise. Thus, well structured navigation and content organization goes hand in hand with having a good conversation.</blockquote>
                        <p>- <a id='perma' href='http://quotesondesign.com/chikezie-ejiasi/'>Chikezie Ejiasi</a></p>
                    </div>
                </li>

                <li class="panel5">
                    <img src="images/slide-tele-2.jpg" alt="">
                </li>

            </ul>
            <!-- END AnythingSlider #2 -->

            <br>

            <a name="features"></a>
            <h2>Features</h2>
            <ul>
                <li>Panels are HTML Content (can be anything).</li>
                <li>Change content by scrolling horizontally or vertically, or by cross-fading<strong class="attention">*</strong> between slides. <strong class="attention">*</strong> New in version 1.8!</li>
                <li>Multiple AnythingSliders allowable per-page.</li>
                <li>Add or remove content, then easily update the slider.</li>
                <li>Themes can be applied to individual sliders.</li>
                <li>Infinite/Continuous sliding (always slides in the direction you are going, even at "last" slide). This can be disabled.</li>
                <li>Show multiple slides within AnythingSlider at once (added version 1.5.14).</li>
                <li>Expand the slider to fit inside of its container (so it now works with full width or any percentage width fluid layouts; added in version 1.5.16).</li>
                <li>Optionally resize each panel (specified per panel in css).</li>
                <li>Optional Next / Previous Panel Arrows.</li>
                <li>Use keyboard navigation or tabs that are built and added dynamically (any number of panels).</li>
                <li>Link to specific slides or go forward or back one slide from static text links - go to <a href="#" id="slide-jump">Slide 4</a> (Quote #2) in second example.</li>
                <li>Each panel has a hashtag (can link directly to specific panels) or use the ID of an element inside the panel.</li>
                <li>Optional custom function for <a href="https://github.com/CSS-Tricks/AnythingSlider/wiki/Navigation-Options">formatting navigation text</a>.</li>
                <li>Auto-playing slideshow (optional feature, can start playing or stopped).</li>
                <li>Pauses slideshow on hover (optional).</li>
                <li>Optionally play the slideshow once through, stopping on the last page.</li>
                <li>Extend the script by binding to custom events, last triggered event: <span id="status">none</span></li>
                <li>Optional FX extension to add animation to panels elements as they scroll into and out of view. See the <a href="demos.html">demo page</a>.</li>
                <li>Optional Video extension allows video to pauses playing when not in view and resumes when in view (if files are hosted on the web). This currently works for YouTube, Vimeo and HTML5 video; added in version 1.6.</li>
                <li>Works with jQuery 1.4.2+.</li>
            </ul>

            <a name="default-options"></a>
            <h2>Default Options</h2>
            See the documentation for complete description of these options (<a href="https://github.com/CSS-Tricks/AnythingSlider/wiki/Appearance-Options">appearance</a>, <a href="https://github.com/CSS-Tricks/AnythingSlider/wiki/Navigation-Options">navigation</a>, <a href="https://github.com/CSS-Tricks/AnythingSlider/wiki/Slideshow-Options">slideshow</a>, <a href="https://github.com/CSS-Tricks/AnythingSlider/wiki/Callbacks-and-Events">callbacks &amp; events</a>, <a href="https://github.com/CSS-Tricks/AnythingSlider/wiki/Video">video</a>, <a href="https://github.com/CSS-Tricks/AnythingSlider/wiki/Interactivity-and-Miscellaneous-Options">interativity &amp; misc</a>).<br>
            <br>
            <blockquote>
                <pre class="prettyprint lang-javascript">$('#slider').anythingSlider({
  // Appearance
  theme               : "default", // Theme name
  mode                : "horiz",   // Set mode to "horizontal", "vertical" or "fade" (only first letter needed); replaces vertical option
  expand              : false,     // If true, the entire slider will expand to fit the parent element
  resizeContents      : true,      // If true, solitary images/objects in the panel will expand to fit the viewport
  showMultiple        : false,     // Set this value to a number and it will show that many slides at once
  easing              : "swing",   // Anything other than "linear" or "swing" requires the easing plugin or jQuery UI

  buildArrows         : true,      // If true, builds the forwards and backwards buttons
  buildNavigation     : true,      // If true, builds a list of anchor links to link to each panel
  buildStartStop      : true,      // If true, builds the start/stop button

  appendForwardTo     : null,      // Append forward arrow to a HTML element (jQuery Object, selector or HTMLNode), if not null
  appendBackTo        : null,      // Append back arrow to a HTML element (jQuery Object, selector or HTMLNode), if not null
  appendControlsTo    : null,      // Append controls (navigation + start-stop) to a HTML element (jQuery Object, selector or HTMLNode), if not null
  appendNavigationTo  : null,      // Append navigation buttons to a HTML element (jQuery Object, selector or HTMLNode), if not null
  appendStartStopTo   : null,      // Append start-stop button to a HTML element (jQuery Object, selector or HTMLNode), if not null

  toggleArrows        : false,     // If true, side navigation arrows will slide out on hovering & hide @ other times
  toggleControls      : false,     // if true, slide in controls (navigation + play/stop button) on hover and slide change, hide @ other times

  startText           : "Start",   // Start button text
  stopText            : "Stop",    // Stop button text
  forwardText         : "&amp;raquo;", // Link text used to move the slider forward (hidden by CSS, replaced with arrow image)
  backText            : "&amp;laquo;", // Link text used to move the slider back (hidden by CSS, replace with arrow image)
  tooltipClass        : "tooltip", // Class added to navigation & start/stop button (text copied to title if it is hidden by a negative text indent)

  // Function
  enableArrows        : true,      // if false, arrows will be visible, but not clickable.
  enableNavigation    : true,      // if false, navigation links will still be visible, but not clickable.
  enableStartStop     : true,      // if false, the play/stop button will still be visible, but not clickable. Previously "enablePlay"
  enableKeyboard      : true,      // if false, keyboard arrow keys will not work for this slider.

  // Navigation
  startPanel          : 1,         // This sets the initial panel
  changeBy            : 1,         // Amount to go forward or back when changing panels.
  hashTags            : true,      // Should links change the hashtag in the URL?
  infiniteSlides      : true,      // if false, the slider will not wrap & not clone any panels
  navigationFormatter : null,      // Details at the top of the file on this use (advanced use)
  navigationSize      : false,     // Set this to the maximum number of visible navigation tabs; false to disable

  // Slideshow options
  autoPlay            : false,     // If true, the slideshow will start running; replaces "startStopped" option
  autoPlayLocked      : false,     // If true, user changing slides will not stop the slideshow
  autoPlayDelayed     : false,     // If true, starting a slideshow will delay advancing slides; if false, the slider will immediately advance to the next slide when slideshow starts
  pauseOnHover        : true,      // If true & the slideshow is active, the slideshow will pause on hover
  stopAtEnd           : false,     // If true & the slideshow is active, the slideshow will stop on the last page. This also stops the rewind effect when infiniteSlides is false.
  playRtl             : false,     // If true, the slideshow will move right-to-left

  // Times
  delay               : 3000,      // How long between slideshow transitions in AutoPlay mode (in milliseconds)
  resumeDelay         : 15000,     // Resume slideshow after user interaction, only if autoplayLocked is true (in milliseconds).
  animationTime       : 600,       // How long the slideshow transition takes (in milliseconds)
  delayBeforeAnimate  : 0,         // How long to pause slide animation before going to the desired slide (used if you want your "out" FX to show).

  // Callbacks
  onBeforeInitialize  : function(e, slider) {}, // Callback before the plugin initializes
  onInitialized       : function(e, slider) {}, // Callback when the plugin finished initializing
  onShowStart         : function(e, slider) {}, // Callback on slideshow start
  onShowStop          : function(e, slider) {}, // Callback after slideshow stops
  onShowPause         : function(e, slider) {}, // Callback when slideshow pauses
  onShowUnpause       : function(e, slider) {}, // Callback when slideshow unpauses - may not trigger properly if user clicks on any controls
  onSlideInit         : function(e, slider) {}, // Callback when slide initiates, before control animation
  onSlideBegin        : function(e, slider) {}, // Callback before slide animates
  onSlideComplete     : function(slider) {},    // Callback when slide completes; this is the only callback without an event "e" parameter

  // Interactivity
  clickForwardArrow   : "click",         // Event used to activate forward arrow functionality (e.g. add jQuery mobile's "swiperight")
  clickBackArrow      : "click",         // Event used to activate back arrow functionality (e.g. add jQuery mobile's "swipeleft")
  clickControls       : "click focusin", // Events used to activate navigation control functionality
  clickSlideshow      : "click",         // Event used to activate slideshow play/stop button
  allowRapidChange    : false,           // If true, allow rapid changing of the active pane, instead of ignoring activity during animation

  // Video
  resumeOnVideoEnd    : true,      // If true & the slideshow is active & a supported video is playing, it will pause the autoplay until the video is complete
  resumeOnVisible     : true,      // If true the video will resume playing (if previously paused, except for YouTube iframe - known issue); if false, the video remains paused.
  addWmodeToObject    : "opaque",  // If your slider has an embedded object, the script will automatically add a wmode parameter with this setting
  isVideoPlaying      : function(base){ return false; } // return true if video is playing or false if not - used by video extension
});</pre>
            </blockquote>

            <a name="known-issues"></a>
            <h2>Known Issues</h2>
            <ul>
                <li>Please refer to the <a href="https://github.com/CSS-Tricks/AnythingSlider/wiki">documentation</a>.</li>
            </ul>

            <br>
            <a name="changelog"></a>
            <h2>Changelog</h2>

            <ul>
                <li>See the <a href="https://github.com/CSS-Tricks/AnythingSlider/wiki/Change-Log">full change log here</a>.</li>
            </ul>

        </div>
    </form>
</body>
</html>
