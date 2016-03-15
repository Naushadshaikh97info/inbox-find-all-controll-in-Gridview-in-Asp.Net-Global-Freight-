<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="header_page">
        <div class="container">
            <div class="row-fluid">
                <div class="span6">
                    <h4>News</h4>
                </div>
                <div class="breadcrumbss">

                    <ul class="page_parents pull-right">
                        <li>You are here: </li>
                        <li><a href="Default.aspx">Home</a>/</li>

                        <li>News</li>

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
                        <asp:DataList ID="DataList1" runat="server">
                            <ItemTemplate>
                               <div class="span12">
                                   
                            <div class="span6">
                                
                                <div class="media">
                                     
                                    <asp:Image ID="image_news" runat="server" ImageUrl='<%#Eval("news_image") %>' Height="250" Width="450" />
                                </div>
                            </div>
                            <div class="span6">
                                <div class="content post_format_standart">
                                    <dl class="dl-horizontal">
                                        <dt>
                                            <div class="dt"><span class="date"><%# Convert.ToDateTime(Eval("date")).ToString("dd")%></span><span class="month"><%# Convert.ToDateTime(Eval("date")).ToString("MMM")%></span><span class="year"><%# Convert.ToDateTime(Eval("date")).ToString("yyyy")%></span></div>
                                            
                                        </dt>
                                        <dd>
                                            <div id='<%#Eval("title_news") %>' style="min-height:85px; max-height:85px; height:auto;">
                                            <h3><%#Eval("title_news") %></h3>
                                           </div>
                                            <div class="blog-content">
                                                
                                                <p><%#Eval("title_discription")%></p>
                                                 <div class="accordion-group" style="border: none; float: left;">
                                                            <div class="accordion-heading"><a class="accordion-toggle" data-toggle="collapse" style="padding:6px; margin-left: -5px;" data-parent="#accordion1" href='#<%#Eval("code") %>'>Read More</a></div>
                                                            <div id='<%#Eval("code") %>' class="accordion-body collapse">
                                                                <div class="accordion-inner" style="padding:9px 0;">
                                                                   
                                                                    <div class="header" style="border-bottom: none;">
                                                                        <dl class="dl-horizontal" style="background:none; padding-bottom:0px;">
                                                                            <p><%#Eval("title_discription_sub")%></p>
                                                                            <dd style="margin-left: 0px !important; margin-top: 10px;">
                                                                                <h4><a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="collapse" href='#<%#Eval("code") %>'>Close</a></h4>
                                                                            </dd>
                                                                        </dl>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>   
                                            </div>
                                        </dd>
                                    </dl>
                                </div>
                                <div class="info">
                                    
                                </div>
                            </div>
                        </div>
                            </ItemTemplate>
                        </asp:DataList>
                                    
                                
                        
                    </article>
                </div>
                <aside class="span3 sidebar" id="widgetarea-sidebar">
                    <div id="widget_most_popular-2" class="widget widget_most_popular">
                        <h4 class="widget-title">Most Valuable Company</h4>
                        <ul>
                            <asp:DataList ID="DataList2" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <dl class="dl-horizontal">
                                            <dt style="margin-left:51px;">
                                                <img src='<%#Eval("company_logo")%>' alt="" style="min-height:75px; max-height:75px;" height="75" width="150"/></dt>
                                            <dd style="margin-left:51px;">
                                                <asp:LinkButton ID="link_company_name" runat="server" OnClick="link_company_name_Click" CommandArgument='<%#Eval("code") %>'><%#Eval("company_name")%></asp:LinkButton><%--<p class="info">Sep.11, all</p>--%>
                                            </dd>
                                        </dl>
                                    </li>
                                </ItemTemplate>
                            </asp:DataList>
                        </ul>
                    </div>
                </aside>
            </div>
        </div>
    </section>
</asp:Content>

