<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="logo_download.aspx.cs" Inherits="logo_download" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="header_page">
        <div class="container">
            <div class="row-fluid">
                <div class="span6">
                    <h4>Logo Download</h4>
                </div>
                <div class="breadcrumbss">

                    <ul class="page_parents pull-right">
                        <li>You are here: </li>
                        <li><a href="Default.aspx">Home</a>/</li>

                        <li>Logo Download</li>

                    </ul>
                </div>

            </div>
        </div>

    </div>
    <br />
    <div style="text-align:center;">
        <asp:Image ID="Image1" runat="server" />
        
    </div><br />
    <div style="text-align:center;">
        <asp:LinkButton ID="link_logo" runat="server" CommandArgument='<%#Eval("code")%>' OnClick="link_logo_Click">Logo Download</asp:LinkButton>
    </div><br />
</asp:Content>

