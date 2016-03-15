<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Video_editing.aspx.cs" Inherits="Video_editing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="header_page">
        <div class="container">
            <div class="row-fluid">
                <div class="span6">
                    <h4>Video Editing</h4>
                </div>
                <div class="breadcrumbss">

                    <ul class="page_parents pull-right">
                        <li>You are here: </li>
                        <li><a href="Default.aspx">Home</a>/</li>

                        <li>Video Editing</li>

                    </ul>
                </div>

            </div>
        </div>

    </div>
   <section id="content">

        <div class="container" id="blog">
            <div class="row">

                <div class="span9">
                    <article class="post type-post status-publish format-standard hentry category-news category-web-development row-fluid blog-article v2 normal">
                            <asp:Literal ID="ltrl_video_editing" runat="server"></asp:Literal>
                        </article>
                </div>
                <aside class="span3 sidebar" id="widgetarea-sidebar">
                    <div id="widget_most_popular-2" class="widget widget_most_popular">
                       <h4 class="widget-title">Other Services</h4>
                      <ul class="sub-menu">
                                                <li><a href="Benefits.aspx">Benefits</a></li>
                                                <li><a href="Recruitment.aspx">Recruitment</a></li>
                                                <li><a href="Web_Design.aspx">Web Design</a></li>
                                                <li><a href="Seo.aspx">SEO</a></li>
                                                <li><a href="Google_adword.aspx">Google Adwords</a></li>
                                                <li><a href="Graphic_design.aspx">Graphic Design</a></li>
                                                
                                                <li style="border-bottom:1px solid #e2e2e2;"><a href="Cargo_insurance.aspx">Cargo Insurance</a></li>
                                            </ul>
                    </div>
                </aside>
            </div>
        </div>
    </section>
</asp:Content>

