<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Global Freight Alliance</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <link rel="pingback" href="xmlrpc.php" />

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->

    <!--[if lt IE 9]>

		<script src="../../html5shim.googlecode.com/svn/trunk/html5.js"></script>

		<![endif]-->

    <style type="text/css">
        .modalBackground {
            background-color: Black;
            filter: alpha(opacity=90);
            opacity: 0.8;
        }

        .modalPopup {
            background-color: #FFFFFF;
            border-width: 3px;
            border-style: solid;
            border-color: black;
            width: auto;
            height: auto;
        }
    </style>

    <link href="css/StyleSheet.css" rel="stylesheet" />
    <link href="fonts/css_34314caa.css" rel="stylesheet" type="text/css" />
    <link href="fonts/css_6a5ad6b.css" rel="stylesheet" type="text/css" />

    <link href="css/StyleSheet.css" rel="stylesheet" />
    <link rel='stylesheet' href='./content/plugins/LayerSlider/css/layerslider_95962758.css' type='text/css' media='all' />
    <link rel='stylesheet' href='./content/plugins/revslider/rs-plugin/css/settings.css' type='text/css' media='all' />
    <link rel='stylesheet' href='./content/plugins/revslider/rs-plugin/css/captions.css' type='text/css' media='all' />
    <link rel='stylesheet' href='./content/style.css' type='text/css' media='all' />
    <link rel='stylesheet' href='./content/css/bootstrap-responsive.css' type='text/css' media='all' />
    <link rel='stylesheet' href='./content/css/mediaelementplayer.css' type='text/css' media='all' />
    <link rel='stylesheet' href='./content/fancybox/source/jquery.fancybox.css' type='text/css' media='all' />
    <link rel='stylesheet' href='./content/css/hoverex-all.css' type='text/css' media='all' />
    <link rel='stylesheet' href='./content/css/vector-icons.css' type='text/css' media='all' />
    <link rel='stylesheet' href='./content/css/jquery.easy-pie-chart.css' type='text/css' media='all' />
    <script type='text/javascript' src='./includes/js/jquery/jquery.js'></script>
    <script type='text/javascript' src='./includes/js/jquery/jquery-migrate.min.js'></script>
    <script type='text/javascript' src='./content/plugins/LayerSlider/js/layerslider.kreaturamedia.jquery.js'></script>
    <script type='text/javascript' src='./content/plugins/LayerSlider/js/jquery-easing-1.3.js'></script>
    <script type='text/javascript' src='./content/plugins/LayerSlider/js/jquerytransit.js'></script>
    <script type='text/javascript' src='./content/plugins/LayerSlider/js/layerslider.transitions.js'></script>
    <script type='text/javascript' src='./content/plugins/revslider/rs-plugin/js/jquery.themepunch.revolution.min.js'></script>
    <script type='text/javascript' src='./content/js/jquery.easy-pie-chart.js'></script>
    <script type='text/javascript' src='./content/js/jquery.appear-1.1.1.modified.js'></script>
    <script type='text/javascript' src='./content/js/modernizr.custom.66803.js'></script>
    <script type='text/javascript' src='./content/js/animations.js'></script>
    <script type='text/javascript' src='./content/js/jquery.countdown.min.js'></script>

    <script type='text/javascript' src='./content/js/waypoints.min.js'></script>

    <meta http-equiv="Content-Language" content="en-US" />
    <style type="text/css" media="screen">
        .qtrans_flag span {
            display: none;
        }

        .qtrans_flag {
            height: 12px;
            width: 18px;
            display: block;
        }

        .qtrans_flag_and_text {
            padding-left: 20px;
        }

        .qtrans_flag_de {
            background: url('./content/plugins/qtranslate/flags/de.png') no-repeat;
        }

        .qtrans_flag_en {
            background: url('./content/plugins/qtranslate/flags/gb.png') no-repeat;
        }

        .qtrans_flag_zh {
            background: url('./content/plugins/qtranslate/flags/cn.png') no-repeat;
        }
    </style>


    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body class="page page-id-582 page-template-default header_2 fixed_slider">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <script>
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date(); a = s.createElement(o),
                m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '../www.google-analytics.com/analytics.js', 'ga');

            ga('create', 'UA-40087279-6', 'themeple.co');
            ga('send', 'pageview');

        </script>



        <div class="top_nav">

            <div class="container">
                <div class="row-fluid">
                    <div class="span6">
                        <div class="pull-left">
                            <div id="widget_topnav-2" class="widget widget_topnav">
                                <div class="search small_widget">
                                    <a href="#" class="getdata" data-box="search">Search</a><div class="top_nav_sub search">
                                        <div id="search-form">

                                            <div class="input-append">
                                                <input type="text" size="16" placeholder="Search&hellip;" name="s" id="s" />
                                                <button type="submit" class="more">Search</button>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <!-- ModalPopupExtender -->

                                <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panel1" TargetControlID="btnShow"
                                    CancelControlID="btnClose" BackgroundCssClass="modalBackground">
                                </cc1:ModalPopupExtender>

                                <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" Style="display: none">
                                    <div>
                                        <div style="background-color: #831619; font-size: 15px; font-weight: 700; color: white; height: 20px; padding: 10px;">Forgot Password</div>

                                        <div style="margin-top: 20px;">
                                            <asp:Label ID="Label1" runat="server" Text="Enter Your Email ID :" CssClass="span2"></asp:Label>

                                            <asp:TextBox ID="txt_email_id" runat="server" CssClass="span3" Style="margin-right: 2px;"></asp:TextBox>

                                        </div>
                                    </div>
                                    <div style="margin-left: 20px; margin-bottom: 10px;">
                                        <asp:Button ID="btn_sumbit1" runat="server" Text="Submit" class="more-btn" Style="float: none;" OnClick="btn_sumbit1_Click" />
                                        <asp:Button ID="btnClose" runat="server" Text="Close" class="more-btn" Style="float: none;" />
                                    </div>
                                </asp:Panel>

                                <div class="login small_widget" runat="server" id="login_div" visible="true">
                                    <a href="#" data-box="login">Login</a>
                                    <div class="top_nav_sub login">
                                        <div class="sub-loggin" style="padding-bottom:67px; margin-top:4px;">
                                            <div>
                                                <asp:TextBox ID="txt_username" size="20" placeholder="Username" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfv1" runat="server" ErrorMessage="Enter Email ID" Display="None" ControlToValidate="txt_username" ValidationGroup="login"></asp:RequiredFieldValidator>
                                                <asp:TextBox ID="txt_password" runat="server" size="20" placeholder="Password" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Password" Display="None" ControlToValidate="txt_password" ValidationGroup="login"></asp:RequiredFieldValidator>
                                                <asp:Button ID="btn_submit" runat="server" value="Send" class="button" OnClick="btn_submit_Click" Text="Submit" />

                                                <div class="check-login">
                                                    <asp:LinkButton ID="btnShow" runat="server" Style="margin-left: 25px;">Forgot password</asp:LinkButton>
                                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="false" ShowMessageBox="true" ValidationGroup="login" />
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <asp:LinkButton ID="btn_profile" runat="server" Visible="false" class="small_widget" OnClick="btn_profile_Click">My Profile</asp:LinkButton>
                                <asp:LinkButton ID="btn_signup" runat="server" class="small_widget" OnClick="btn_signup_Click">Sign Up</asp:LinkButton>
                                <asp:LinkButton ID="btn_message" runat="server" Visible="false" class="small_widget" OnClick="btn_message_Click">Inbox  <asp:Label ID="lbl_msg" runat="server" Text=""></asp:Label></asp:LinkButton>
                                <asp:LinkButton ID="btn_logout_btn" runat="server" Visible="false" class="small_widget" OnClick="link_logout_Click">Logout</asp:LinkButton>

                            </div>
                            <div id="text-5" class="widget widget_text">
                                <div class="textwidget">Contact us now:   Phone: +3556969696</div>
                            </div>
                        </div>
                    </div>
                    <div class="span6">
                        <div class="pull-right">
                            <div id="social_widget-2" class="widget social_widget">
                                <div class="row-fluid social_row">
                                    <div class="span12">
                                        <ul class="footer_social_icons">
                                            <%--<li class="flickr"><a href="#"><span></span></a></li>
                                            <li class="youtube"><a href="#"><span></span></a></li>
                                            <li class="yahoo"><a href="#"><span></span></a></li>--%>
                                            <li class="twitter"><a href="#"><span></span></a></li>
                                            <li class="facebook"><a href="#"><span></span></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </div>
        <!-- Header -->
        <div id="page-bg"></div>
        <header id="header" class="header_2">
            <div class="container">
                <div class="row-fluid">
                    <div class="span12">

                        <!-- Logo -->

                        <div id="logo" class="">



                            <a href="Default.aspx">
                                <img src="content/images/GFA-Logo.png" alt='' /></a>		                    <span class="logo_desc"></span>
                        </div>
                        <!-- #logo -->
                        <div id="navigation" class="nav_top pull-right  ">


                            <nav>
                                <ul id="menu-menu" class="menu">
                                    <li class="current-menu-item current_page_item "><a href="Default.aspx">Home</a>

                                    </li>
                                    <li><a href="About_us.aspx">About Us</a>

                                    </li>
                                    <li><a href="#">Our Services</a>
                                        <ul class="sub-menu">
                                            <li><a href="Benefits.aspx">Benefits</a></li>
                                            <li><a href="Recruitment.aspx">Recruitment</a></li>
                                            <li><a href="Web_Design.aspx">Web Design</a></li>
                                            <li><a href="Seo.aspx">SEO</a></li>
                                            <li><a href="Google_adword.aspx">Google Adwords</a></li>
                                            <li><a href="Graphic_design.aspx">Graphic Design</a></li>
                                            <li><a href="Video_editing.aspx">Video Editing</a></li>
                                            <li><a href="Cargo_insurance.aspx">Cargo Insurance</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="Event.aspx">Events</a>

                                    </li>
                                    <li><a href="News.aspx">News</a>
                                    </li>
                                    <li><a href="#">Members Area</a>
                                        <ul class="sub-menu">
                                            <li><a href="Member_directory.aspx">Member Directory</a></li>
                                            <li><a href="#">Forum</a></li>
                                            <li><a href="logo_download.aspx">Logo Download</a></li>

                                        </ul>
                                    </li>
                                    <li><a href="Contact.aspx">Contact Us</a></li>

                                </ul>
                            </nav>




                        </div>
                        <!-- #navigation -->


                    </div>
                </div>


            </div>
            <span class="shadow"></span>
        </header>

        <div class="top_wrapper">


            <span class="slider-img"></span>

            <section id="slider-fixed" class="slider">



                <div class="container">

                    <div class="row">

                        <div class="span12">


                            <!-- START REVOLUTION SLIDER 3.0.5 responsitive mode -->

                            <style type='text/css'>
                                #rev_slider_1_1, #rev_slider_1_1_wrapper {
                                    width: 1100px;
                                    height: 350px;
                                }

                                @media only screen and (min-width: 1100px) {
                                    #rev_slider_1_1, #rev_slider_1_1_wrapper {
                                        width: 1100px;
                                        height: 350px;
                                    }
                                }


                                @media only screen and (min-width: 780px) and (max-width: 1099px) {
                                    #rev_slider_1_1, #rev_slider_1_1_wrapper {
                                        width: 770px;
                                        height: 245px;
                                    }
                                }


                                @media only screen and (min-width: 510px) and (max-width: 779px) {
                                    #rev_slider_1_1, #rev_slider_1_1_wrapper {
                                        width: 500px;
                                        height: 159px;
                                    }
                                }


                                @media only screen and (min-width: 0px) and (max-width: 509px) {
                                    #rev_slider_1_1, #rev_slider_1_1_wrapper {
                                        width: 310px;
                                        height: 98px;
                                    }
                                }
                            </style>
                            <div id="rev_slider_1_1_wrapper" class="rev_slider_wrapper" style="margin: 0px auto; padding: 0px; margin-top: 0px; margin-bottom: 0px;">
                                <div id="rev_slider_1_1" class="rev_slider" style="display: none;">
                                    <ul>
                                        <li data-transition="random" data-slotamount="7" data-masterspeed="300">
                                            <img src="./content/plugins/revslider/images/transparent.png" alt="" />
                                            <div class="tp-caption fade" data-x="0" data-y="0" data-speed="300" data-start="500" data-easing="easeOutExpo">
                                                <img src="content/images/Image-1---Home-Page.jpg" alt="Image 5" />
                                            </div>



                                            <div class="tp-caption sfr" data-x="59" data-y="109" data-speed="300" data-start="1700" data-easing="easeOutExpo">
                                                <div>
                                                <asp:Label ID="Label4" runat="server" Text="Take your business global now and enjoy our benefits." Style="color:white; font-size:18px; font-weight:bold;"></asp:Label>
                                                    </div>
                                            </div>

                                            <div class="tp-caption sfr" data-x="59" data-y="57" data-speed="300" data-start="1400" data-easing="easeOutExpo">
                                                <%--<img src="./content/images/all/08/MAXiMUS-Responsive-Multi-Purpose-Theme.png" alt="Image 5" />--%>
                                            </div>

                                            <%--<div class="tp-caption fade" data-x="292" data-y="277" data-speed="300" data-start="2300" data-easing="easeOutExpo">
                                                <img src="./content/images/all/08/maximus-slider-3.png" alt="Image 9" />
                                            </div>--%>

                                            <div class="tp-caption lfb" data-x="58" data-y="255" data-speed="300" data-start="2000" data-easing="easeOutExpo">
                                                <asp:Button ID="btn_benefit" runat="server" Text="Our Benefits" Height="50px" Width="200px" Style="background: #3C75C6; color: #fff; font-size:18px; font-weight:bold;" OnClick="btn_benefit_Click" />
                                            </div>

                                        </li>
                                        <li data-transition="random" data-slotamount="7" data-masterspeed="300">
                                            <img src="content/images/Image-2---Conference.jpg" alt="Untitled-1" />
                                            <div class="tp-caption sfr" data-x="63" data-y="49" data-speed="300" data-start="2600" data-easing="easeOutExpo">
                                                <%--<img src="./content/images/all/09/maximus-slider-5555.png" alt="Image 4" />--%>
                                                <asp:Label ID="Label5" runat="server" Text="February 10-12, 2016" style="color:white; font-size:18px; font-weight:bold;"></asp:Label><br />
                                                <asp:Label ID="Label6" runat="server" Text="Bali, Indonesia" style="color:white; font-size:18px; font-weight:bold;"></asp:Label>
                                            </div>


                                            <div class="tp-caption sfr" data-x="63" data-y="100" data-speed="300" data-start="2900" data-easing="easeOutExpo">
                                                <%--<img src="./content/images/all/09/m1111aximus-slider-222.png" alt="Image 7" />--%>
                                                <asp:Label ID="Label7" runat="server" Text="GFA Inaugural Annual Conference" style="color:white; font-size:18px; font-weight:bold;"></asp:Label>
                                            </div>

                                            <div class="tp-caption fade" data-x="64" data-y="255" data-speed="300" data-start="3200" data-easing="easeOutExpo">
                                                <asp:Button ID="btn_events" runat="server" Text="Upcoming Events" Height="50px" Width="200px" Style="background: #3C75C6; color: #fff; font-size:18px; font-weight:bold;" OnClick="btn_events_Click"/>
                                            </div>

                                          <%--   <div class="tp-caption sfr" data-x="63" data-y="256" data-speed="300" data-start="3800" data-easing="easeOutExpo">
                                                <img src="./content/images/all/08/Theme-.png" alt="Image 6" />
                                            </div>--%>

                                            

                                        </li>
                                        <li data-transition="random" data-slotamount="7" data-masterspeed="300">
                                            <img src="content/images/Image-3---Memberships.jpg" alt="Layer-01" />

                                           <%-- <div class="tp-caption sfl" data-x="49" data-y="164" data-speed="300" data-start="2300" data-easing="easeOutExpo" style="width:50%;">
                                                <div style="width:30%;">
                                                    <p>STANDARD MEMBERSHIP (USD 150/Month) </p>
                                                    <p>Enjoy all the benefits of GFA</p>
                                                    <p>with a Standard Membership</p>
                                                    <p>exclusive of Payment Protection.</p>
                                                </div>
                                            </div>
                                            <div class="tp-caption sfl" data-x="400" data-y="164" data-speed="300" data-start="2500" data-easing="easeOutExpo" style="width:50%;">
                                                <div style="width:30%;">
                                                <p>GOLD MEMBERSHIP (USD 250/Month)
Enjoy all the benefits of GFA with a Gold Membership inclusive of our USD 10,000 Annual Payment Protection.</p>
                                                    </div>
                                            </div>--%>
                                            <div class="tp-caption sft" data-x="49" data-y="20" data-speed="300" data-start="2000" data-easing="easeOutExpo">
                                                <p style="color:white; font-size:18px; font-weight:bold;">Join Our Network</p>
                                                
                                            </div>
                                            <div class="tp-caption sft" data-x="49" data-y="53" data-speed="300" data-start="2300" data-easing="easeOutExpo">
                                                <p style="color:white; font-weight:bold;">STANDARD MEMBERSHIP (USD 150/Month) </p>
                                                    <p style="color:white;"><span style="font-size:20px; color:white;">&#8226;</span> Enjoy all the benefits of GFA</p>
                                                    <p style="color:white;"><span style="font-size:20px; color:white;">&#8226;</span> with a Standard Membership</p>
                                                    <p style="color:white;"><span style="font-size:20px; color:white;">&#8226;</span> exclusive of Payment Protection.</p>
                                                
                                            </div>
                                             <div class="tp-caption sft" data-x="430" data-y="53" data-speed="300" data-start="2600" data-easing="easeOutExpo">
                                                <p style="color:white; font-weight:bold;">GOLD MEMBERSHIP (USD 250/Month)</p>
                                                    <p style="color:white;"><span style="font-size:20px; color:white;">&#8226;</span> Enjoy all the benefits of GFA</p>
                                                    <p style="color:white;"><span style="font-size:20px; color:white;">&#8226;</span> with a Gold Membership inclusive of</p>
                                                    <p style="color:white;"><span style="font-size:20px; color:white;">&#8226;</span> our USD 10,000 Annual Payment Protection.</p>
                                                
                                            </div>

                                            <div class="tp-caption lfb" data-x="49" data-y="241" data-speed="300" data-start="2600" data-easing="easeOutExpo">
                                                <asp:Button ID="btn_standard_plan" runat="server" Text="STANDARD MEMBERSHIP (USD 150/Month)" Height="50px" Width="350px" Style="background: #803D14; color: #fff; font-weight:bold;" OnClick="btn_standard_plan_Click"/>
                                                <asp:Button ID="btn_gold_plan" runat="server" Text="GOLD MEMBERSHIP (USD 250/Month)" Height="50px" Width="350px" Style="background: #803D14; color: #fff; font-size:16px; font-weight:bold;" OnClick="btn_gold_plan_Click" />
                                            </div>

                                        </li>
                                    </ul>
                                    <div class="tp-bannertimer"></div>
                                </div>
                            </div>

                            <script type="text/javascript">

                                var tpj = jQuery;

                                tpj.noConflict();

                                var revapi1;

                                tpj(document).ready(function () {

                                    if (tpj.fn.cssOriginal != undefined)
                                        tpj.fn.css = tpj.fn.cssOriginal;

                                    if (tpj('#rev_slider_1_1').revolution == undefined)
                                        revslider_showDoubleJqueryError('#rev_slider_1_1');
                                    else
                                        revapi1 = tpj('#rev_slider_1_1').show().revolution(
                                         {
                                             delay: 8000,
                                             startwidth: 1100,
                                             startheight: 350,
                                             hideThumbs: 200,

                                             thumbWidth: 100,
                                             thumbHeight: 50,
                                             thumbAmount: 3,

                                             navigationType: "bullet",
                                             navigationArrows: "solo",
                                             navigationStyle: "round",

                                             touchenabled: "on",
                                             onHoverStop: "on",

                                             navigationHAlign: "center",
                                             navigationVAlign: "bottom",
                                             navigationHOffset: 0,
                                             navigationVOffset: 20,

                                             soloArrowLeftHalign: "left",
                                             soloArrowLeftValign: "center",
                                             soloArrowLeftHOffset: 20,
                                             soloArrowLeftVOffset: 0,

                                             soloArrowRightHalign: "right",
                                             soloArrowRightValign: "center",
                                             soloArrowRightHOffset: 20,
                                             soloArrowRightVOffset: 0,

                                             shadow: 0,
                                             fullWidth: "off",
                                             fullScreen: "off",

                                             stopLoop: "off",
                                             stopAfterLoops: -1,
                                             stopAtSlide: -1,

                                             shuffle: "off",

                                             hideSliderAtLimit: 0,
                                             hideCaptionAtLimit: 0,
                                             hideAllCaptionAtLilmit: 0,
                                             startWithSlide: 0,
                                             videoJsPath: "#content/plugins/revslider/rs-plugin/videojs/",
                                             fullScreenOffsetContainer: ""
                                         });

                                });	//ready

                            </script>

                            <!-- END REVOLUTION SLIDER -->




                        </div>

                    </div>



                    <div class="bottom_shadow"></div>
                </div>



            </section>




            <!-- .header -->




            <section id="content" class="page-dynamic_template-home sequentialchildren  ">
                <div class="row-fluid">


                    <div class="span12">

                        <div class="row-fluid row-dynamic-el " style="margin-bottom: 2px;">

                            <div class="container">

                                <div class="row-fluid">

                                    <div class="span12 plain_text alignment_left">
                                     <h1 class="big_title" style="color: rgba(68,68,68); text-align:center;"><span style="font-weight: 300; font-size: 28px; color: #009dcd;">Welcome to the Global Freight Alliance</span> 
                                         </h1>
                                        <br />
                                        <asp:Literal ID="ltrl_home" runat="server"></asp:Literal>

                                        <p class="content" style="color: #969ba2;" />
                                    </div>

                                </div>

                            </div>

                        </div>

                        <div class="row-fluid row-dynamic-el " style="margin-bottom: 10px;">

                            <div class="container">

                                <div class="row-fluid">

                                    <div class="divider__"></div>

                                </div>

                            </div>

                        </div>

                        <%--<div class="row-fluid row-dynamic-el " style="">

                            <div class="container">

                                <div class="row-fluid">

                                    <div class="span4 services_small">
                                        <dl class="dl-horizontal">
                                            <dt><span class="circle"><i class="moon-tablet icon "></i></span></dt>
                                            <dd class="with_icon">
                                                <h4 class="with_icon"><a href="#">Responsive & Retina</a></h4>
                                            </dd>
                                            <p>High Quality Photos on all types of devices. All icons are Retina. Use Maximus for <span style="color: #009dcd; font-weight: bold; font-size: inherit;">high quality work</span> ! Nunc et rutrum consetetur sadipscing dolor elitr, sed diam nonumy lore at volutpat</p>
                                            <a href="#" class="read_m"><span>Read More</span> <span class="direct_btn"><i class="moon-arrow-right-2"></i></span></a>
                                        </dl>
                                    </div>

                                    <div class="span4 services_small">
                                        <dl class="dl-horizontal">
                                            <dt><span class="circle"><i class="moon-align-left icon "></i></span></dt>
                                            <dd class="with_icon">
                                                <h4 class="with_icon"><a href="#">Drag & Drop Page Builder</a></h4>
                                            </dd>
                                            <p>This theme has a great feature: Page Builder. <span style="color: #009dcd; font-weight: bold; font-size: inherit;">Save your time</span> and create a lot of templates. Nunc et rutrum consetetur sadipscing dolor elitr, sed diam nonumy lore at volutpat</p>
                                            <a href="#" class="read_m"><span>Read More</span> <span class="direct_btn"><i class="moon-arrow-right-2"></i></span></a>
                                        </dl>
                                    </div>

                                    <div class="span4 services_small">
                                        <dl class="dl-horizontal">
                                            <dt><span class="circle"><i class="moon-brush icon "></i></span></dt>
                                            <dd class="with_icon">
                                                <h4 class="with_icon"><a href="#">Easy Theme Options</a></h4>
                                            </dd>
                                            <p>Skins, Layouts, Typography and much more options easily changeable. <span style="color: #009dcd; font-weight: bold; font-size: inherit;">Professional Theme Options</span> Nunc et rutrum consetetur sadipscing dolor elitr, sed diam nonumy.</p>
                                            <a href="#" class="read_m"><span>Read More</span> <span class="direct_btn"><i class="moon-arrow-right-2"></i></span></a>
                                        </dl>
                                    </div>

                                </div>

                            </div>

                        </div>--%>

                        <%--<div class="row-fluid row-dynamic-el " style="">

                            <div class="container">

                                <div class="row-fluid">

                                    <div class="span12 recent_portfolio ">
                                        <div class="header">
                                            <dl class="dl-horizontal">
                                                <dd style="margin-left: 0px">
                                                    <h4>From Portfolio</h4>
                                                </dd>
                                                <div class="pagination"><a href="#" class="prev" title="Previous"><i class="moon-arrow-left"></i></a><a href="#" class="next" title="Next"><i class="moon-arrow-right-2"></i></a></div>
                                            </dl>
                                        </div>
                                        <section id="portfolio-preview-items" class="row four-cols rows_1">
                                            <div class="carousel carousel_portfolio">
                                                <div class="portfolio-item v1">
                                                    <div class="he-wrap tpl2">
                                                        <img src="./content/images/all/09/water_dance-220x140.jpg" alt="" /><div class="overlay he-view">
                                                            <div class="bg a0" data-animate="fadeIn">
                                                                <div class="center-bar v1"><a href="#" class="link a0" data-animate="zoomIn"><i class="moon-link"></i></a><a href="./content/images/all/09/water_dance.jpg" class="lightbox a1 lightbox-gallery" data-animate="zoomIn"><i class="moon-search-2"></i></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="project">
                                                        <h6><a href="#">Single Portfolio 12</a></h6>
                                                        <span class="desc">php web-development </span>
                                                    </div>
                                                </div>
                                                <div class="portfolio-item v1">
                                                    <div class="he-wrap tpl2">
                                                        <img src="./content/images/all/09/digital-creativity-s-2-220x140.jpg" alt="" /><div class="overlay he-view">
                                                            <div class="bg a0" data-animate="fadeIn">
                                                                <div class="center-bar v1"><a href="./indexd412_6ccc9165.html" class="link a0" data-animate="zoomIn"><i class="moon-link"></i></a><a href="./content/images/all/09/digital-creativity-s-2.jpg" class="lightbox a1 lightbox-gallery" data-animate="zoomIn"><i class="moon-search-2"></i></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="project">
                                                        <h6><a href="#">Single Portfolio 11</a></h6>
                                                        <span class="desc">php web-design </span>
                                                    </div>
                                                </div>
                                                <div class="portfolio-item v1">
                                                    <div class="he-wrap tpl2">
                                                        <img src="./content/images/all/09/dash_bb_superbig-710x575-220x140.jpg" alt="" /><div class="overlay he-view">
                                                            <div class="bg a0" data-animate="fadeIn">
                                                                <div class="center-bar v1"><a href="./indexd412_6ccc9165.html" class="link a0" data-animate="zoomIn"><i class="moon-link"></i></a><a href="./content/images/all/09/dash_bb_superbig-710x575.jpg" class="lightbox a1 lightbox-gallery" data-animate="zoomIn"><i class="moon-search-2"></i></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="project">
                                                        <h6><a href="./indexd412_6ccc9165.html">Single Portfolio 10</a></h6>
                                                        <span class="desc">web-design </span>
                                                    </div>
                                                </div>
                                                <div class="portfolio-item v1">
                                                    <div class="he-wrap tpl2">
                                                        <img src="./content/images/all/09/creatica-220x140.jpg" alt="" /><div class="overlay he-view">
                                                            <div class="bg a0" data-animate="fadeIn">
                                                                <div class="center-bar v1"><a href="./indexd412_6ccc9165.html" class="link a0" data-animate="zoomIn"><i class="moon-link"></i></a><a href="./content/images/all/09/creatica.jpg" class="lightbox a1 lightbox-gallery" data-animate="zoomIn"><i class="moon-search-2"></i></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="project">
                                                        <h6><a href="#">Single Portfolio 9</a></h6>
                                                        <span class="desc">php web-development </span>
                                                    </div>
                                                </div>
                                                <div class="portfolio-item v1">
                                                    <div class="he-wrap tpl2">
                                                        <img src="./content/images/all/09/misc-4-220x140.jpg" alt="" /><div class="overlay he-view">
                                                            <div class="bg a0" data-animate="fadeIn">
                                                                <div class="center-bar v1"><a href="#" class="link a0" data-animate="zoomIn"><i class="moon-link"></i></a><a href="./content/images/all/09/misc-4.jpg" class="lightbox a1 lightbox-gallery" data-animate="zoomIn"><i class="moon-search-2"></i></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="project">
                                                        <h6><a href="#">Single Portfolio 8</a></h6>
                                                        <span class="desc">web-design </span>
                                                    </div>
                                                </div>
                                                <div class="portfolio-item v1">
                                                    <div class="he-wrap tpl2">
                                                        <img src="./content/images/all/09/ScoreHD-220x140.jpg" alt="" /><div class="overlay he-view">
                                                            <div class="bg a0" data-animate="fadeIn">
                                                                <div class="center-bar v1"><a href="./indexd412_6ccc9165.html" class="link a0" data-animate="zoomIn"><i class="moon-link"></i></a><a href="./content/images/all/09/ScoreHD.jpg" class="lightbox a1 lightbox-gallery" data-animate="zoomIn"><i class="moon-search-2"></i></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="project">
                                                        <h6><a href="#">Single Portfolio 7</a></h6>
                                                        <span class="desc">php web-development </span>
                                                    </div>
                                                </div>
                                                <div class="portfolio-item v1">
                                                    <div class="he-wrap tpl2">
                                                        <img src="./content/images/all/09/ExtraordinaryIslandMain-220x140.jpg" alt="" /><div class="overlay he-view">
                                                            <div class="bg a0" data-animate="fadeIn">
                                                                <div class="center-bar v1"><a href="./indexd412_6ccc9165.html" class="link a0" data-animate="zoomIn"><i class="moon-link"></i></a><a href="./content/images/all/09/ExtraordinaryIslandMain.jpg" class="lightbox a1 lightbox-gallery" data-animate="zoomIn"><i class="moon-search-2"></i></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="project">
                                                        <h6><a href="#">Single Portfolio 6</a></h6>
                                                        <span class="desc">php web-design </span>
                                                    </div>
                                                </div>
                                                <div class="portfolio-item v1">
                                                    <div class="he-wrap tpl2">
                                                        <img src="./content/images/all/09/mailhd-220x140.jpg" alt="" /><div class="overlay he-view">
                                                            <div class="bg a0" data-animate="fadeIn">
                                                                <div class="center-bar v1"><a href="./indexd412_6ccc9165.html" class="link a0" data-animate="zoomIn"><i class="moon-link"></i></a><a href="./content/images/all/09/mailhd.jpg" class="lightbox a1 lightbox-gallery" data-animate="zoomIn"><i class="moon-search-2"></i></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="project">
                                                        <h6><a href="#">Single Portfolio 5</a></h6>
                                                        <span class="desc">web-development </span>
                                                    </div>
                                                </div>
                                                <div class="portfolio-item v1">
                                                    <div class="he-wrap tpl2">
                                                        <img src="./content/images/all/07/slider_21-220x140.jpg" alt="" /><div class="overlay he-view">
                                                            <div class="bg a0" data-animate="fadeIn">
                                                                <div class="center-bar v1"><a href="./indexd412_6ccc9165.html" class="link a0" data-animate="zoomIn"><i class="moon-link"></i></a><a href="./content/images/all/07/slider_21.jpg" class="lightbox a1 lightbox-gallery" data-animate="zoomIn"><i class="moon-search-2"></i></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="project">
                                                        <h6><a href="#">Single Portfolio 4</a></h6>
                                                        <span class="desc">web-design </span>
                                                    </div>
                                                </div>
                                                <div class="portfolio-item v1">
                                                    <div class="he-wrap tpl2">
                                                        <img src="./content/images/all/07/photodune-2297523-jet-liner-over-the-tropical-island-m-220x140.jpg" alt="" /><div class="overlay he-view">
                                                            <div class="bg a0" data-animate="fadeIn">
                                                                <div class="center-bar v1"><a href="./indexd412_6ccc9165.html" class="link a0" data-animate="zoomIn"><i class="moon-link"></i></a><a href="./content/images/all/07/photodune-2297523-jet-liner-over-the-tropical-island-m.jpg" class="lightbox a1 lightbox-gallery" data-animate="zoomIn"><i class="moon-search-2"></i></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="project">
                                                        <h6><a href="#">Single Portfolio 3</a></h6>
                                                        <span class="desc">php </span>
                                                    </div>
                                                </div>
                                                <div class="portfolio-item v1">
                                                    <div class="he-wrap tpl2">
                                                        <img src="./content/images/all/07/photodune-1188545-belvedere-of-tuscany-s-220x140.jpg" alt="" /><div class="overlay he-view">
                                                            <div class="bg a0" data-animate="fadeIn">
                                                                <div class="center-bar v1"><a href="./indexd412_6ccc9165.html" class="link a0" data-animate="zoomIn"><i class="moon-link"></i></a><a href="./content/images/all/07/photodune-1188545-belvedere-of-tuscany-s.jpg" class="lightbox a1 lightbox-gallery" data-animate="zoomIn"><i class="moon-search-2"></i></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="project">
                                                        <h6><a href="#">Single Portfolio 2</a></h6>
                                                        <span class="desc">web-design </span>
                                                    </div>
                                                </div>
                                                <div class="portfolio-item v1">
                                                    <div class="he-wrap tpl2">
                                                        <img src="./content/images/all/07/photodune-1188346-belvedere-of-tuscany-s-1-220x140.jpg" alt="" /><div class="overlay he-view">
                                                            <div class="bg a0" data-animate="fadeIn">
                                                                <div class="center-bar v1"><a href="#" class="link a0" data-animate="zoomIn"><i class="moon-link"></i></a><a href="./content/images/all/07/photodune-1188346-belvedere-of-tuscany-s-1.jpg" class="lightbox a1 lightbox-gallery" data-animate="zoomIn"><i class="moon-search-2"></i></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="project">
                                                        <h6><a href="#">Single Portfolio 1</a></h6>
                                                        <span class="desc">web-development </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </section>
                                    </div>

                                </div>

                            </div>

                        </div>--%>

                        <div class="row-fluid row-dynamic-el " style="margin-bottom: 10px;">

                            <div class="container">

                                <div class="row-fluid">

                                    <div class="span6 recent_news">
                                        <div class="header">
                                            <dl class="dl-horizontal">
                                                <dd style="margin-left: 0px">
                                                    <h4>News</h4>
                                                </dd>
                                            </dl>
                                        </div>
                                        <div class="row-fluid">
                                            <asp:DataList ID="datalist_news" runat="server">
                                                <ItemTemplate>
                                                    <div class="span12">
                                                        <dl class="news-article blog-article style_2 dl-horizontal">
                                                            <dt style="height: 63px; border-radius: 0px;">
                                                                <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("image_news") %>' Height="50" Width="50" />
                                                            </dt>
                                                            <dd>
                                                                <h5>
                                                                    <asp:LinkButton ID="link_news" runat="server" Text='<%#Eval("news_title") %>' CommandArgument='<%#Eval("code") %>' OnClick="link_news_Click"></asp:LinkButton>

                                                                    <asp:LinkButton ID="link_read_news" runat="server" CommandArgument='<%#Eval("code") %>' OnClick="link_read_news_Click" class="read_m" Style="margin-left: 70px;"><span>Read More</span></asp:LinkButton></h5>

                                                            </dd>
                                                        </dl>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </div>
                                    </div>

                                    <div class="span6 recent_news">
                                        <div class="header">
                                            <dl class="dl-horizontal">
                                                <dd style="margin-left: 0px">
                                                    <h4>Events</h4>
                                                </dd>
                                            </dl>
                                        </div>
                                        <div class="row-fluid">
                                            <asp:DataList ID="DataList1" runat="server">
                                                <ItemTemplate>
                                                    <div class="span12">
                                                        <dl class="news-article blog-article style_2 dl-horizontal">
                                                            <dt style="height: 63px;">
                                                                <div class="dt"><span class="date"><%# Convert.ToDateTime(Eval("date")).ToString("dd")%></span><span class="month"><%# Convert.ToDateTime(Eval("date")).ToString("MMM")%></span><span class="year"><%# Convert.ToDateTime(Eval("date")).ToString("yyyy")%></span></div>

                                                            </dt>
                                                            <dd>
                                                                <h5>
                                                                    <asp:LinkButton ID="LinkButton1" runat="server" Text='<%#Eval("Title") %>' CommandArgument='<%#Eval("code") %>' OnClick="LinkButton1_Click"></asp:LinkButton>
                                                                    <asp:LinkButton ID="link_read_more" runat="server" CommandArgument='<%#Eval("code") %>' OnClick="link_read_more_Click" class="read_m" Style="margin-left: 70px;"><span>Read More</span></asp:LinkButton></h5>

                                                            </dd>
                                                        </dl>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </div>
                                    </div>

                                </div>

                            </div>

                        </div>

                        <div class="row-fluid row-dynamic-el " style="">

                            <div class="container">

                                <div class="row-fluid">

                                    <div class="span12">
                                        <div class="header">
                                            <dl class="dl-horizontal">
                                                <dd style="margin-left: 0px">
                                                    <h4>Our Members</h4>
                                                    <div class="pagination"><a href="#" class="prev" title="Previous"><i class="moon-arrow-left"></i></a><a href="#" class="next" title="Next"><i class="moon-arrow-right-2"></i></a></div>
                                                </dd>
                                            </dl>
                                        </div>
                                        <section class="row-fluid clients">
                                            <asp:Repeater ID="rpt_member_logo" runat="server">
                                                <ItemTemplate>
                                                    <div class="item">
                                                        <a href="#">
                                                            <asp:Image ID="Image2" runat="server" ImageUrl='<%#Eval("logo_images") %>' />

                                                        </a>
                                                        <div style="text-align:center;">
                                                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("company_name") %>'></asp:Label>
                                                    </div>
                                                    </div>
                                                    
                                                </ItemTemplate>
                                            </asp:Repeater>


                                        </section>
                                    </div>

                                </div>

                            </div>

                        </div>
                    </div>

                </div>
            </section>
            <a href="#" class="scrollup">Scroll</a>
            <!-- Social Profiles -->


            <!-- Footer -->
        </div>


        <div class="footer_wrapper">

            <div class="top_footer" style="height: 10px;">
            </div>


            <footer id="footer">


                <div class="inner">
                    <div class="container">
                        <div class="row-fluid ff">

                            <!-- widget -->
                            <div class="span3">
                                <div id="recent-posts-2" class="widget widget_recent_entries">
                                    <h6 class="widget-title"><span>Recent Posts</span></h6>
                                    <ul>
                                        <li>
                                            <a href="#">Featured Image Post</a>
                                        </li>
                                        <li>
                                            <a href="#">Another Standard Post</a>
                                        </li>
                                        <li>
                                            <a href="#">Standard Post</a>
                                        </li>
                                        <li>
                                            <a href="#">Audio Post</a>
                                        </li>
                                        <li>
                                            <a href="#">Gallery Post Type</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>




                            <div class="span3">
                                <div id="Div1" class="widget widget_recent_entries">
                                    <h6 class="widget-title"><span>Useful Links</span></h6>
                                    <ul>
                                        <li>
                                            <a href="http://www.iata.org/Pages/default.aspx" target="_blank">www.iata.org</a>
                                        </li>
                                        <li>
                                            <a href="http://fiata.com/" target="_blank">www.fiata.com</a>
                                        </li>
                                        <li>
                                            <a href="http://www.freightdeadbeats.com/eng/home.php" target="_blank">www.freightdeadbeats.com</a>
                                        </li>
                                        <li>
                                            <a href="http://theloadstar.co.uk/" target="_blank">www.theloadstar.co.uk</a>
                                        </li>

                                    </ul>
                                </div>
                            </div>




                            <div class="span3">
                                <div id="widget_contact_info-2" class="widget widget_contact_info">
                                    <h6 class="widget-title"><span>Contact Info</span></h6>
                                    <%--<p>Donec porttitor entume suscipit..Nsequat sem cursus digni ssim</p>--%>
                                    <ul>
                                        <li class="address">Address: <span style="line-height: 20px;">20 Pershing Link, Harrisdale Western Australia, 6112, Australia</span></li>
                                        <li class="phone">Phone: <span>+61 426 962 263</span></li>
                                        <li class="email">Email: <span>admin@gfalliance.com</span></li>
                                        <li class="web">Web: <span>www.gralliance.com</span></li>
                                    </ul>
                                </div>

                            </div>




                            <div class="span3">
                                <div id="Div2" class="widget widget_recent_entries">
                                    <h6><span style="background: none repeat scroll 0 0 #2f373f; color: #fff; font-size: 14px; margin-right: 15px; padding-right: 20px; text-transform: uppercase;">Legal</span></h6>
                                    <ul>
                                        <li>
                                            <p>Copyright 2014</p>
                                            <p>All rights reserved</p>
                                            <p><a href="terms_condition.aspx" style="font-size: 15px; color: #a0a0a0;">Terms and Conditions</a></p>
                                            <p>ABN: 13426003086</p>
                                        </li>


                                    </ul>
                                </div>

                                <%--<div id="widget_flickr-2" class="widget widget_flickr">
                                    <h6 class="widget-title"><span>Recent News</span></h6>
                                    <div class="flickr_container">
                                        <ul>
                                            <asp:DataList ID="datalist_news" runat="server">
                                                <ItemTemplate>
                                                    <li>
                                                        <div style="float:left;">
                                                                
                                                        </div>
                                                        <div>
                                                            
                                                        </div>
                                                        
                                                    </li>
                                                </ItemTemplate>
                                            </asp:DataList>


                                        </ul>
                                    </div>
                                </div>--%>
                            </div>





                        </div>
                    </div>
                </div>

                <div id="copyright">
                    <div class="container">
                        <div class="row-fluid">
                            <div class="span12">
                                <div class="span7">
                                    <div class="pull-right">
                                        <span id="siteseal"><script type="text/javascript" src="https://seal.godaddy.com/getSeal?sealID=9yWnJkRD1O7riQgTfR8ISGVqurWS84nk5Ft80tkAwiZNi24at9AnayDst"></script></span>
                                        <a href="#" onclick="window.open('https://www.sitelock.com/verify.php?site=www.gfa...','SiteLock','width=600,height=600,left=160,top=170');">
                                            <img alt="website security" title="SiteLock" src="//shield.sitelock.com/shield/www.gfalliance.com" style="height: 35px;" /></a>
                                    </div>
                                </div>
                                <div class="pull-right">
                                    Powered by : <a href="http://webcodetechnologies.com/" target="_blank" style="font-size: 13px;">Webcode Technologies</a>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <!-- #copyright -->

            </footer>
            <!-- #footer -->
        </div>

        <script type='text/javascript' src='./content/js/bootstrap.min_f715d3df.js'></script>
        <script type='text/javascript' src='./content/js/jquery.easing.1.1_f715d3df.js'></script>
        <script type='text/javascript' src='./content/js/jquery.easing.1.3_f715d3df.js'></script>
        <script type='text/javascript' src='./content/js/jquery.mobilemenu_f715d3df.js'></script>
        <script type='text/javascript' src='./content/js/isotope_f715d3df.js'></script>
        <script type='text/javascript' src='./content/js/jquery.cycle.all_f715d3df.js'></script>
        <script type='text/javascript' src='./content/js/customSelect.jquery.min_f715d3df.js'></script>
        <script type='text/javascript' src='./content/js/jquery.flexslider-min_f715d3df.js'></script>
        <script type='text/javascript' src='./content/fancybox/source/jquery.fancybox_f715d3df.js'></script>
        <script type='text/javascript' src='./content/fancybox/source/helpers/jquery.fancybox-media_f715d3df.js'></script>
        <script type='text/javascript' src='./content/js/jquery.carouFredSel-6.1.0-packed_f715d3df.js'></script>
        <script type='text/javascript' src='./content/js/mediaelement-and-player.min_f715d3df.js'></script>
        <script type='text/javascript' src='./content/js/tooltip_f715d3df.js'></script>
        <script type='text/javascript' src='./content/js/jquery.hoverex_f715d3df.js'></script>
        <script type='text/javascript' src='./content/js/jquery.imagesloaded.min_f715d3df.js'></script>
        <script type='text/javascript' src='./content/js/switcher_f715d3df.js'></script>
        <script type='text/javascript' src='./content/js/main_f715d3df.js'></script>
        <script type='text/javascript' src='./content/js/jquery.placeholder.min_f715d3df.js'></script>
        <script type='text/javascript' src='./content/js/jquery.livequery_f715d3df.js'></script>
    </form>
</body>
</html>
