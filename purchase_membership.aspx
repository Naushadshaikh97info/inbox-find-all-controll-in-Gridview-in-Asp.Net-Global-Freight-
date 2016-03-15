<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="purchase_membership.aspx.cs" Inherits="purchase_membership" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="header_page">
        <div class="container">
            <div class="row-fluid">
                <div class="span6">
                    <h4>Membership Plan</h4>
                </div>
                <div class="breadcrumbss">

                    <ul class="page_parents pull-right">
                        <li>You are here: </li>
                        <li><a href="Default.aspx">Home</a>/</li>

                        <li>Membership Plan</li>

                    </ul>
                </div>

            </div>
        </div>

    </div>
    <div class="row-fluid row-dynamic-el " style="margin-top:20px; margin-bottom:20px;">

        <div class="container">

            <div class="row-fluid" style="margin-left: 17%;">
                <div class="span8 contact_form"  style="border:1px solid #e1e1e1; margin-bottom:10px;">
                                <div class="header">
                                    <dl class="dl-horizontal">
                                        
                                        <dd style="margin-left:13px; margin-top: 10px;">
                                            <h4>Membership Plan</h4>
                                        </dd>
                                    </dl>
                                </div>
                    <div style="width:100%;">
                    <div style="width:48%; margin-left:3.5%; float:left;">
                        <div><asp:Button ID="btn_standard_plan" runat="server" Text="STANDARD MEMBERSHIP" style="width:92% !important; height:40px !important; margin-bottom:3px;" class="custom_btn" OnClick="btn_standard_plan_Click"/></div>
                        <div style="text-align:center; width:92%;"><p>(USD 150/Month)</p></div>
                        <div><p>Enjoy all the benefits of GFA with a Standard Membership exclusive of Payment Protection.</p></div>
                        
                    </div>
                    <div style="width:48%; float:left;">
                        <div><asp:Button ID="btn_gold_plan" runat="server" Text="GOLD MEMBERSHIP" style="width:92% !important; height:40px !important; margin-bottom:3px;" class="custom_btn" OnClick="btn_gold_plan_Click"/></div>
                        <div style="text-align:center; width:92%;"><p>(USD 250/Month)</p></div>
                        <div><p>Enjoy all the benefits of GFA with a Gold Membership inclusive of our USD 10,000 Annual Payment Protection.</p></div>
                        
                    </div>
                     </div>
                    
                    </div>
            </div>

        </div>

    </div>
</asp:Content>

