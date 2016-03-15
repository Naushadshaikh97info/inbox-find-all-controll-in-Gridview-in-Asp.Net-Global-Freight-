<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login_form.aspx.cs" Inherits="Login_form" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="header_page">
        <div class="container">
            <div class="row-fluid">
                <div class="span6">
                    <h4>Login Form</h4>
                </div>
                <div class="breadcrumbss">
                    <ul class="page_parents pull-right">
                        <li>You are here: </li>
                        <li><a href="Default.aspx">Home</a>/</li>
                        <li>Login Form</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="row-fluid row-dynamic-el ">

                    <div class="container">

                        <div class="row-fluid" style="margin-left:17%;">

                            <div class="span8 contact_form"  style="border:1px solid #e1e1e1; margin-bottom:10px;">
                                <div class="header">
                                    <dl class="dl-horizontal">
                                        
                                        <dd style="margin-left:13px; margin-top: 10px;">
                                            <h4>Login</h4>
                                        </dd>
                                    </dl>
                                </div>
                                <div class="row-fluid">
                                    <div class="row-fluid">
                                        <div class="span12">
                                            <div class="standard-form row-fluid">
                                                <div style="margin-left:13px;">
                                                <asp:TextBox ID="txt_email_id_1" runat="server" class="span6" placeholder="UserName"></asp:TextBox>

                                                <asp:RequiredFieldValidator ID="rfv1" runat="server" ErrorMessage="Please Enter Email ID" ControlToValidate="txt_email_id_1" ValidationGroup="contact" Display="None"></asp:RequiredFieldValidator>
                                                </div>
                                               <div style="margin-left:13px;">
                                                <asp:TextBox ID="txt_password" runat="server" class="span6" placeholder="Password" TextMode="Password"></asp:TextBox>

                                                <asp:RequiredFieldValidator ID="rfv2" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="txt_password" ValidationGroup="contact" Display="None"></asp:RequiredFieldValidator>
                                                  
                                               </div>
                                                <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panel1" TargetControlID="btnShow"
                                    CancelControlID="btnClose" BackgroundCssClass="modalBackground">
                                </cc1:ModalPopupExtender>

                                <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" Style="display: none">
                                    <div>
                                        <div style="background-color: #831619; font-size: 15px; font-weight: 700; color: white; height: 20px; padding: 10px;">Forgot Password</div>

                                        <div style="margin-top: 20px;">
                                            <asp:Label ID="Label1" runat="server" Text="Enter Your Email ID :" CssClass="span2"></asp:Label>
                                            
                                                <asp:TextBox ID="txt_email_id" runat="server" CssClass="span3" style="margin-right:2px;"></asp:TextBox>
                                            
                                        </div>
                                    </div>
                                    <div style="margin-left: 20px; margin-bottom:10px;">
                                        <asp:Button ID="btn_sumbit" runat="server" Text="Submit" class="more-btn" Style="float: none;" OnClick="btn_sumbit_Click" />
                                        <asp:Button ID="btnClose" runat="server" Text="Close" class="more-btn" Style="float: none;" />
                                    </div>
                                </asp:Panel>

                                                <div>
                                                     <asp:LinkButton ID="btnShow" runat="server"  Style="margin-left:13px; ">Forgot password</asp:LinkButton>
                                                </div>
                                                <div style="margin-left:13px; margin-top:10px;">
                                                    <asp:Button ID="btn_submit" runat="server" Text="Login" class="custom_btn" ValidationGroup="contact" OnClick="btn_submit_Click" style="width:21% !important;"/>
                                                    
                                                     <asp:Button ID="btn_signup" runat="server" Text="Sign Up" class="custom_btn"  OnClick="btn_signup_Click" style="float:left; width:21% !important;"/>
                                                    
                                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false"  ValidationGroup="contact" />
                                                    </div>
                                            </div>
                                            <div id="ajaxresponse"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            

                        </div>

                    </div>

                </div>
</asp:Content>

