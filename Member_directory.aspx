<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Member_directory.aspx.cs" Inherits="Member_directory" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .PnlDesign {
            border: solid 1px #F4F4F4;
            height: 150px;
            width: 20%;
            overflow-y: scroll;
            background-color: #831619;
            font-size: 15px;
            font-family: Arial;
        }

        .txtbox {
            background-image: url(../images/drpdwn.png);
            background-position: right top;
            background-repeat: no-repeat;
            cursor: pointer;
            cursor: hand;
            float: left;
            margin-top: 3px;
            margin-left: 3px;
        }

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
            max-width: 400px;
            min-width: 280px;
            height: auto;
        }

        .btn1 {
            background: #8c2629;
            background-image: -webkit-linear-gradient(top, #8c2629, #8c2629);
            background-image: -moz-linear-gradient(top, #8c2629, #8c2629);
            background-image: -ms-linear-gradient(top, #8c2629, #8c2629);
            background-image: -o-linear-gradient(top, #8c2629, #8c2629);
            background-image: linear-gradient(to bottom, #8c2629, #8c2629);
            -webkit-border-radius: 6;
            -moz-border-radius: 6;
            border-radius: 6px;
            font-family: Arial;
            color: #ffffff;
            font-size: 16px;
            padding: 4px 11px 4px 11px;
            border: solid #8c2629 2px;
            text-decoration: none;
        }

            .btn1:hover {
                background: #8C2629;
                background-image: -webkit-linear-gradient(top, #8C2629, #8C2629);
                background-image: -moz-linear-gradient(top, #8C2629, #8C2629);
                background-image: -ms-linear-gradient(top, #8C2629, #8C2629);
                background-image: -o-linear-gradient(top, #8C2629, #8C2629);
                background-image: linear-gradient(to bottom, #8C2629, #8C2629);
                text-decoration: none;
                color: #fff;
            }

        .ratingEmpty {
            background-image: url(./ratingStarEmpty.gif);
            width: 18px;
            height: 18px;
        }

        .ratingFilled {
            background-image: url(./ratingStarFilled.gif);
            width: 18px;
            height: 18px;
        }

        .ratingSaved {
            background-image: url(./ratingStarSaved.gif);
            width: 18px;
            height: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="header_page">
        <div class="container">
            <div class="row-fluid">
                <div class="span3">
                    <h4>Member Directory</h4>
                </div>
                <div class="span6">
                    <asp:DropDownList ID="ddl_country_search" runat="server" Style="margin-top: 2px; float: left;" DataTextField="Country_name" DataValueField="intglcode"></asp:DropDownList>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="txtCustomer" Text="Select Services" runat="server" CssClass="txtbox"
                                Height="20px" Width="180px"></asp:TextBox>
                            <asp:Panel ID="PnlCust" runat="server" CssClass="PnlDesign">
                                <asp:CheckBoxList ID="Check_service" runat="server" CssClass="checkbox">
                                    <asp:ListItem Value="1">AIR FREIGHT               </asp:ListItem>
                                    <asp:ListItem Value="2">SEA FREIGHT               </asp:ListItem>
                                    <asp:ListItem Value="3">ROAD FREIGHT              </asp:ListItem>
                                    <asp:ListItem Value="4">CUSTOMS CLEARANCE         </asp:ListItem>
                                    <asp:ListItem Value="5">WAREHOUSING & DISTRIBUTION</asp:ListItem>
                                    <asp:ListItem Value="6">PROJECT CARGO             </asp:ListItem>
                                    <asp:ListItem Value="7">PERSONAL EFFECTS          </asp:ListItem>
                                    <asp:ListItem Value="8">DANGEROUS GOODS           </asp:ListItem>
                                    <asp:ListItem Value="9">PERISHABLE GOODS          </asp:ListItem>
                                </asp:CheckBoxList>
                            </asp:Panel>
                            <%--<asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />--%>
                            <br />
                            <cc2:PopupControlExtender ID="PceSelectCustomer" runat="server" TargetControlID="txtCustomer"
                                PopupControlID="PnlCust" Position="Bottom">
                            </cc2:PopupControlExtender>



                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <asp:Button ID="btn_seacrh" class="btn1" runat="server" Text="Search" Style="margin-left: 15px; margin-top: -5%;"
                        OnClick="btn_seacrh_Click" />
                    <div style="padding-top: 31px; text-align: center;">
                        <asp:Label ID="lbl_member_error" runat="server" ForeColor="Red" Text="No Member Found" Visible="false"></asp:Label>
                    </div>
                    <script type="text/javascript">
                        $(function () {
                            $('#chkveg').multiselect({
                                includeSelectAllOption: true
                            });
                            $('#btnget').click(function () {
                                alert($('#chkveg').val());
                            })
                        });
                    </script>
                    <script type="text/javascript">
                        $(document).ready(function () {
                            $('#chkveg').multiselect();
                        });
                    </script>
                </div>
                <div class="breadcrumbss">

                    <ul class="page_parents pull-right">
                        <li>You are here: </li>
                        <li><a href="Default.aspx">Home</a>/</li>

                        <li>Member Directory</li>

                    </ul>
                </div>

            </div>
        </div>

    </div>
    <section id="content" class="page-dynamic_template-contactpa sequentialchildren section_first ">
        <div class="row-fluid">


            <div class="span12">
                <div class="row-fluid row-dynamic-el" style="">

                    <div class="container">

                        <div class="row-fluid">

                            <asp:GridView ID="DataList1" runat="server" AutoGenerateColumns="false" border="0" ShowHeader="false" OnRowDataBound="DataList1_RowDataBound" DataKeyNames="code">
                                <Columns>
                                    <asp:TemplateField FooterStyle-BorderWidth="0">
                                        <ItemTemplate>

                                            <div class="span10 contact_form" style="border: 1px solid #e5e5e5; margin: 0 auto;">
                                                <div class="header">
                                                    <dl class="dl-horizontal">

                                                        <dd style="margin-left: 7px !important; margin-top: 10px;">
                                                            <h4><%#Eval("company_name") %></h4>
                                                        </dd>
                                                    </dl>
                                                </div>
                                                <div class="row-fluid">
                                                    <div class="row-fluid">
                                                        <div style="padding-left: 5px;">
                                                            <div class="span8">
                                                                <div class="standard-form row-fluid" style="float: left; margin-left: 2px;">

                                                                    <div class="span12" style="margin-left: 0px; min-height: 20px;">
                                                                        <asp:Label ID="Label40" runat="server" Text="Street Address :"></asp:Label>
                                                                        <asp:Label ID="lbl_address" runat="server" Text='<%#Eval("street_address") %>'></asp:Label>
                                                                    </div>

                                                                    <div>
                                                                        <div class="span5" style="margin-top: 3px; min-height: 0px;">
                                                                            <asp:Label ID="Label3" runat="server" Text="City :"></asp:Label>
                                                                            <asp:Label ID="lbl_city" runat="server" Text='<%#Eval("city") %>'></asp:Label>
                                                                        </div>
                                                                        <div class="span6" style="margin-top: 3px; min-height: 0px;">
                                                                            <asp:Label ID="Label31" runat="server" Text="Country :"></asp:Label>
                                                                            <asp:Label ID="lbl_country" runat="server" Text='<%#Eval("country") %>'></asp:Label>
                                                                        </div>

                                                                    </div>
                                                                    <div>
                                                                        <div class="span5" style="margin-top: 3px;">
                                                                            <asp:Label ID="Label5" runat="server" Text="Website :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    <asp:Label ID="lbl_website" runat="server" Text='<%#Eval("website") %>'></asp:Label>
                                                                        </div>
                                                                        <div class="span3" style="margin-top: 3px;">
                                                                            <asp:Label ID="Label7" runat="server" Text="Telephone :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    <asp:Label ID="lbl_telephone" runat="server" Text='<%#Eval("mobile") %>'></asp:Label>
                                                                        </div>
                                                                        <div class="span3" style="margin-top: 3px;">
                                                                            <asp:Label ID="Label34" runat="server" Text="FAX :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    <asp:Label ID="lbl_fax" runat="server" Text='<%#Eval("fax") %>'></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div>
                                                                        <div class="span5" style="margin-top: 3px;">
                                                                            <asp:Label ID="Label8" runat="server" Text="Date of Foundation :"></asp:Label>
                                                                            <asp:Label ID="lbl_foundation" runat="server" Text='<%#Eval("foundation") %>'></asp:Label>
                                                                        </div>
                                                                        <div class="span6" style="margin-top: 3px;">
                                                                            <asp:Label ID="Label36" runat="server" Text="No of Employee :"></asp:Label>
                                                                            <asp:Label ID="lbl_employee" runat="server" Text='<%#Eval("no_of_employee") %>'></asp:Label>
                                                                        </div>
                                                                    </div>

                                                                </div>
                                                                <div class="header">
                                                                    <dl class="dl-horizontal">

                                                                        <dd style="margin-left: 2px !important; margin-top: 10px;">
                                                                            <h4>Director / Manager</h4>
                                                                        </dd>
                                                                    </dl>
                                                                </div>
                                                                <div class="standard-form row-fluid" style="margin-left: 2px;">
                                                                    <div>
                                                                        <div class="span6">
                                                                            <asp:Label ID="Label1" runat="server" Text="First Name :"></asp:Label>
                                                                            <asp:Label ID="lbl_director_f_name" runat="server" Text='<%#Eval("director_f_name") %>'></asp:Label>
                                                                        </div>
                                                                        <div class="span6">
                                                                            <asp:Label ID="Label12" runat="server" Text="Last Name :"></asp:Label>
                                                                            <asp:Label ID="lbl_director_l_name" runat="server" Text='<%#Eval("director_l_name") %>'></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div>
                                                                        <div class="span6">
                                                                            <asp:Label ID="Label14" runat="server" Text="Email :"></asp:Label>
                                                                            <asp:Label ID="lbl_director_email" runat="server" Text='<%#Eval("director_email") %>'></asp:Label>
                                                                        </div>
                                                                        <div class="span6">
                                                                            <asp:Label ID="Label38" runat="server" Text="Telephone :"></asp:Label>
                                                                            <asp:Label ID="lbl_director_phone" runat="server" Text='<%#Eval("director_phone") %>'></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                            <div class="span4 post_page_cont">
                                                                <div class="span4 post_page_cont" style="width: 100%; margin-left: 7px;">
                                                                    <asp:Image ID="Image1" runat="server" Height="50" Width="50" ImageUrl='<%#Eval("image_logo") %>' />

                                                                </div>
                                                                <div class="span4 post_page_cont" style="width: 100%;">
                                                                    <asp:Label ID="lbl_member_plan" runat="server" Text='<%#Eval("membership_plan") %>'></asp:Label>

                                                                </div>

                                                                <div class="span4 post_page_cont" style="width: 100%;">
                                                                    <asp:HiddenField runat="server" ID="hiddenField" Value='<%# Eval("code") %>' />
                                                                    <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("online_status") %>' Visible="false"></asp:LinkButton>
                                                                    <asp:ImageButton ID="img_green" runat="server" ImageUrl="~/content/images/green.png" Visible="false" Height="10" Style="width: 10px !important; margin-bottom: 0px; margin-right: 0px;" />
                                                                    <asp:ImageButton ID="img_grey" runat="server" ImageUrl="~/content/images/grey_btn.png" Visible="false" Height="10" Style="width: 10px !important; margin-bottom: 0px; margin-right: 0px;" />

                                                                    <asp:LinkButton ID="link_online_message" runat="server" CommandArgument='<%#Eval("code") %>' OnClick="link_online_message_Click">
                                                                        <asp:Label ID="lbl_online" runat="server" Text="Online" Visible="false"></asp:Label><asp:Label ID="lbl_offline" runat="server" Text="Offline" Visible="false"></asp:Label>
                                                                        | Instant Message
                                                                    </asp:LinkButton><br />
                                                                    <br />
                                                                    <table>
                                                                        <tr>
                                                                            <td style="width: 67.5%;">Quality of Service :</td>
                                                                            <td>
                                                                                <cc2:Rating ID="Rating1" OnChanged="Rating1_Changed" runat="server" AutoPostBack="true" ReadOnly="true"
                                                                                    StarCssClass="ratingEmpty" WaitingStarCssClass="ratingSaved" EmptyStarCssClass="Star"
                                                                                    FilledStarCssClass="ratingFilled" CurrentRating='<%# Eval("Rating") %>'>
                                                                                </cc2:Rating>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                    <table>
                                                                        <tr>
                                                                            <td style="width: 67.6%;">Cost :</td>
                                                                            <td>
                                                                                <cc2:Rating ID="Rating2" OnChanged="Rating1_Changed2" runat="server" AutoPostBack="true" ReadOnly="true"
                                                                                    StarCssClass="ratingEmpty" WaitingStarCssClass="ratingSaved" EmptyStarCssClass="Star"
                                                                                    FilledStarCssClass="ratingFilled" CurrentRating='<%# Eval("Rating2") %>'>
                                                                                </cc2:Rating>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                    <table>
                                                                        <tr>
                                                                            <td style="width: 67.6%;">Timing of Payment :</td>
                                                                            <td>
                                                                                <cc2:Rating ID="Rating3" OnChanged="Rating1_Changed3" runat="server" AutoPostBack="true" ReadOnly="true"
                                                                                    StarCssClass="ratingEmpty" WaitingStarCssClass="ratingSaved" EmptyStarCssClass="Star"
                                                                                    FilledStarCssClass="ratingFilled" CurrentRating='<%# Eval("Rating3") %>'>
                                                                                </cc2:Rating>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                    <table>
                                                                        <tr>
                                                                            <td style="width: 67.6%;">Recommend this :</td>
                                                                            <td>
                                                                                <cc2:Rating ID="Rating4" OnChanged="Rating1_Changed4" runat="server" AutoPostBack="true" ReadOnly="true"
                                                                                    StarCssClass="ratingEmpty" WaitingStarCssClass="ratingSaved" EmptyStarCssClass="Star"
                                                                                    FilledStarCssClass="ratingFilled" CurrentRating='<%# Eval("Rating4") %>'>
                                                                                </cc2:Rating>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                    <br />
                                                                    <asp:LinkButton ID="link_rate_now" runat="server" CssClass="btn1" Style="float: right; margin-right: 10px;" CommandArgument='<%#Eval("code") %>' OnClick="link_rate_now_Click">Rate Now</asp:LinkButton><br />

                                                                </div>
                                                            </div>

                                                        </div>
                                                        <div class="accordion-group" style="border: none; float: left;">
                                                            <div class="accordion-heading"><a class="accordion-toggle" data-toggle="collapse" style="padding: 6px;" data-parent="#accordion1" href='#<%#Eval("code") %>'>Read More</a></div>
                                                            <div id='<%#Eval("code") %>' class="accordion-body collapse">
                                                                <div class="accordion-inner">


                                                                    <div class="header">
                                                                        <dl class="dl-horizontal">

                                                                            <dd style="margin-left: -10px !important; margin-top: 10px;">
                                                                                <h4>Contact for Exports</h4>
                                                                            </dd>
                                                                        </dl>
                                                                    </div>
                                                                    <div class="standard-form row-fluid" style="margin-left: -9px;">
                                                                        <div>
                                                                            <div class="span5">
                                                                                <asp:Label ID="Label17" runat="server" Text="First Name :"></asp:Label>
                                                                                <asp:Label ID="lbl_exports_f_name" runat="server" Text='<%#Eval("exports_f_name") %>'></asp:Label>
                                                                            </div>
                                                                            <div class="span5">
                                                                                <asp:Label ID="Label18" runat="server" Text="Last Name :"></asp:Label>
                                                                                <asp:Label ID="lbl_exports_l_name" runat="server" Text='<%#Eval("exports_l_name") %>'></asp:Label>
                                                                            </div>
                                                                        </div>
                                                                        <div>
                                                                            <div class="span5">
                                                                                <asp:Label ID="Label42" runat="server" Text="Email :"></asp:Label>
                                                                                <asp:Label ID="lbl_exports_email" runat="server" Text='<%#Eval("exports_email") %>'></asp:Label>
                                                                            </div>
                                                                            <div class="span5">
                                                                                <asp:Label ID="Label44" runat="server" Text="Telephone :"></asp:Label>
                                                                                <asp:Label ID="lbl_exports_phone" runat="server" Text='<%#Eval("exports_phone") %>'></asp:Label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="header">
                                                                        <dl class="dl-horizontal">

                                                                            <dd style="margin-left: -10px !important; margin-top: 10px;">
                                                                                <h4>Contact for Imports</h4>
                                                                            </dd>
                                                                        </dl>
                                                                    </div>
                                                                    <div class="standard-form row-fluid" style="margin-left: -9px;">
                                                                        <div>
                                                                            <div class="span5">
                                                                                <asp:Label ID="Label20" runat="server" Text="First Name :"></asp:Label>
                                                                                <asp:Label ID="lbl_Imports_f_name" runat="server" Text='<%#Eval("Imports_f_name") %>'></asp:Label>
                                                                            </div>
                                                                            <div class="span5">
                                                                                <asp:Label ID="Label22" runat="server" Text="Last Name :"></asp:Label>
                                                                                <asp:Label ID="lbl_Imports_l_name" runat="server" Text='<%#Eval("Imports_l_name") %>'></asp:Label>
                                                                            </div>
                                                                        </div>
                                                                        <div>
                                                                            <div class="span5">
                                                                                <asp:Label ID="Label46" runat="server" Text="Email :"></asp:Label>
                                                                                <asp:Label ID="lbl_Imports_email" runat="server" Text='<%#Eval("Imports_email") %>'></asp:Label>
                                                                            </div>
                                                                            <div class="span5">
                                                                                <asp:Label ID="Label48" runat="server" Text="Telephone :"></asp:Label>
                                                                                <asp:Label ID="lbl_Imports_phone" runat="server" Text='<%#Eval("Imports_phone") %>'></asp:Label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="header">
                                                                        <dl class="dl-horizontal">

                                                                            <dd style="margin-left: -8px !important; margin-top: 10px;">
                                                                                <h4>Area of Service</h4>
                                                                            </dd>
                                                                        </dl>
                                                                    </div>
                                                                    <div class="standard-form row-fluid" style="margin-left: -9px;">
                                                                        <div class="span12" style="margin-left: 0px;">
                                                                            <asp:CheckBoxList ID="chk_service" runat="server" CssClass="checkbox" RepeatColumns="2">
                                                                                <asp:ListItem>AIR FREIGHT</asp:ListItem>
                                                                                <asp:ListItem>SEA FREIGHT</asp:ListItem>
                                                                                <asp:ListItem>ROAD FREIGHT</asp:ListItem>
                                                                                <asp:ListItem>CUSTOMS CLEARANCE</asp:ListItem>
                                                                                <asp:ListItem>WAREHOUSING & DISTRIBUTION</asp:ListItem>
                                                                                <asp:ListItem>PROJECT CARGO</asp:ListItem>
                                                                                <asp:ListItem>PERSONAL EFFECTS</asp:ListItem>
                                                                                <asp:ListItem>DANGEROUS GOODS</asp:ListItem>
                                                                                <asp:ListItem>PERISHABLE GOODS</asp:ListItem>
                                                                            </asp:CheckBoxList>
                                                                            <asp:Label ID="Label2" runat="server" Text="OTHER SERVICE :"></asp:Label>
                                                                            <asp:Label ID="lbl_other_service" runat="server" Text='<%#Eval("other_service") %>'></asp:Label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="header">
                                                                        <dl class="dl-horizontal">

                                                                            <dd style="margin-left: -8px !important; margin-top: 10px;">
                                                                                <h4>About Us</h4>
                                                                            </dd>
                                                                        </dl>
                                                                    </div>
                                                                    <div class="standard-form row-fluid" style="margin-left: -9px;">
                                                                        <div class="span12">
                                                                            <asp:Label ID="lbl_about_us" runat="server" Text='<%#Eval("about_us") %>'></asp:Label>

                                                                        </div>

                                                                    </div>
                                                                    <div class="header" style="border-bottom: none;">
                                                                        <dl class="dl-horizontal">

                                                                            <dd style="margin-left: 13px !important; margin-top: 10px;">
                                                                                <h4><a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="collapse" href='#<%#Eval("code") %>'>Close</a></h4>
                                                                            </dd>
                                                                        </dl>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div id="ajaxresponse"></div>
                                                    </div>
                                                </div>


                                            </div>



                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>

                            <asp:Label ID="lblmsg" runat="server" />
                            <asp:Button ID="modelPopup" runat="server" Style="display: none" />
                            <cc2:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panel1" TargetControlID="modelPopup"
                                CancelControlID="btnClose" BackgroundCssClass="modalBackground">
                            </cc2:ModalPopupExtender>

                            <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" Style="display: none">
                                <div class="header">
                                    <dl class="dl-horizontal" style="margin-bottom: 10px; margin-top: -10px; background-color: #8C2629;">

                                        <dd style="margin-left: 13px !important; margin-top: 10px; margin-bottom: 10px;">
                                            <h4 style="color: white;">Send Message</h4>
                                        </dd>
                                    </dl>
                                </div>
                                <div class="standard-form row-fluid">
                                    <asp:TextBox ID="txt_email" runat="server" class="span6" Width="96%" Style="margin-left: 2%;" placeholder="Email ID"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfv5" runat="server" ErrorMessage="Enter Email ID" ControlToValidate="txt_email" ValidationGroup="msg1" Display="None"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txt_title" runat="server" class="span6" Width="96%" Style="margin-left: 2%;" placeholder="Title"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfv6" runat="server" ErrorMessage="Enter Title" ControlToValidate="txt_title" ValidationGroup="msg1" Display="None"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txt_message" runat="server" class="span6" Width="96%" Style="margin-left: 2%;" placeholder="Message" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfv7" runat="server" ErrorMessage="Enter Message" ControlToValidate="txt_message" ValidationGroup="msg1" Display="None"></asp:RequiredFieldValidator>
                                </div>

                                <div id="Div1"></div>
                                <div style="margin-left: 50px; margin-bottom: 10px;">
                                    <asp:Button ID="btn_send" runat="server" Text="Send" class="more-btn" Style="float: none;" OnClick="btn_send_Click" ValidationGroup="msg1" />
                                    <asp:Button ID="btnClose" runat="server" Text="Close" class="more-btn" Style="float: none;" />
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" ValidationGroup="msg1" />
                                </div>
                            </asp:Panel>


                            <asp:Button ID="Button1" runat="server" Style="display: none" />
                            <cc2:ModalPopupExtender ID="mp2" runat="server" PopupControlID="Panel2" TargetControlID="Button1"
                                CancelControlID="btnClose" BackgroundCssClass="modalBackground">
                            </cc2:ModalPopupExtender>

                            <asp:Panel ID="Panel2" runat="server" CssClass="modalPopup" Style="display: none">
                                <div class="header">
                                    <dl class="dl-horizontal" style="margin-bottom: 10px; margin-top: -10px; background-color: #8C2629;">

                                        <dd style="margin-left: 13px !important; margin-top: 10px; margin-bottom: 10px;">
                                            <h4 style="color: white;">Rate Now</h4>
                                        </dd>
                                    </dl>
                                </div>
                                <div class="standard-form row-fluid">
                                    <div style="float: left; width: 100%;">
                                        <div style="float: left; width: 60%; margin-left: 10px;">Quality of Service</div>
                                        <div>
                                            <asp:RadioButtonList ID="rdb1" runat="server" RepeatDirection="Horizontal" DataTextField="State_name" DataValueField="intglcode">
                                            </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator ID="rfv1" runat="server" ErrorMessage="Please Select Qulity of secure" ControlToValidate="rdb1" Display="None" ValidationGroup="rate"></asp:RequiredFieldValidator>
                                        </div>

                                    </div>
                                    <div style="float: left; width: 100%;">
                                        <div style="float: left; width: 60%; margin-left: 10px;">Cost</div>
                                        <div>
                                            <asp:RadioButtonList ID="rdb2" runat="server" RepeatDirection="Horizontal" DataTextField="State_name" DataValueField="intglcode">
                                            </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator ID="rfv2" runat="server" ErrorMessage="Please Select Cost" Display="None" ControlToValidate="rdb2" ValidationGroup="rate"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div style="float: left; width: 100%;">
                                        <div style="float: left; width: 60%; margin-left: 10px;">Timing of Payment</div>
                                        <div>
                                            <asp:RadioButtonList ID="rdb3" runat="server" RepeatDirection="Horizontal" DataTextField="State_name" DataValueField="intglcode">
                                            </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator ID="rfv3" runat="server" ErrorMessage="Please Select Timing of Payment" Display="None" ControlToValidate="rdb3" ValidationGroup="rate"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div style="float: left; width: 100%;">
                                        <div style="float: left; width: 60%; margin-left: 10px;">Recommend this Agent</div>
                                        <div>
                                            <asp:RadioButtonList ID="rdb4" runat="server" RepeatDirection="Horizontal" DataTextField="State_name" DataValueField="intglcode">
                                            </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator ID="rfv4" runat="server" ErrorMessage="Please Select Recommended This Agent" Display="None" ControlToValidate="rdb4" ValidationGroup="rate"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <div style="margin-left: 50px; margin-bottom: 10px;">
                                    <asp:Button ID="btn_rate_now" runat="server" Text="Rate Now" class="more-btn" Style="float: none;" OnClick="btn_rate_now_Click" ValidationGroup="rate" />
                                    <asp:Button ID="Button3" runat="server" Text="Close" class="more-btn" Style="float: none;" />
                                    <asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowMessageBox="true" ShowSummary="false" ValidationGroup="rate" />
                                </div>
                            </asp:Panel>
                        </div>

                    </div>

                </div>
            </div>

        </div>
    </section>
</asp:Content>

