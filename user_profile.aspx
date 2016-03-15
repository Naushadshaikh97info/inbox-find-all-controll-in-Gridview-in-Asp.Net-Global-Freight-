<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="user_profile.aspx.cs" Inherits="user_profile" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
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
                <div class="span6">
                    <h4>My Profile</h4>
                </div>
                <div class="breadcrumbss">
                    <ul class="page_parents pull-right">
                        <li>You are here: </li>
                        <li><a href="Default.aspx">Home</a>/</li>
                        <li>Member Profile</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <section id="content" class="page-dynamic_template-contactpa sequentialchildren section_first ">
        <div class="row-fluid">


            <div class="span12">



                <div class="row-fluid row-dynamic-el " style="">

                    <div class="container">

                        <div class="row-fluid">

                            <div class="span8 contact_form">

                                <div class="row-fluid">
                                    <div class="row-fluid">
                                        <div class="span12">
                                            <div style="float: left; border: 1px solid #E1E1E1; margin-top: 2%; width: 99.9%;">
                                                <div class="header" style="padding-bottom: 0px; margin-bottom: 8px; background: url(./img/header_.png) no-repeat scroll center center #f4f4f4;">
                                                    <dl class="dl-horizontal" style="margin-bottom: 8px;">

                                                        <dd style="margin-top: 8px; margin-left: 5px;">
                                                            <h4 style="float: left;">Company Detail</h4>

                                                            <asp:LinkButton ID="link_edit_company_profile" runat="server" Style="float: right;" OnClick="link_edit_company_profile_Click">Edit</asp:LinkButton>
                                                        </dd>
                                                    </dl>
                                                </div>


                                                <asp:Panel ID="company_pro_panel" runat="server" Visible="true">
                                                    <div style="padding: 5px;">
                                                        <div class="span12">

                                                            <asp:Label ID="Label29" runat="server" Text="Company Name :" Style="color: #444444;"></asp:Label>
                                                            <asp:Label ID="lbl_company_name" runat="server"></asp:Label>

                                                        </div>
                                                        <div class="span12" style="margin-left: 0px;">
                                                            <asp:Label ID="Label40" runat="server" Text="Street Address :" Style="color: #444444;"></asp:Label>
                                                            <asp:Label ID="lbl_address" runat="server"></asp:Label>
                                                        </div>
                                                        <div>
                                                            <div class="span5" style="margin-top: 5px; min-height: 20px;">
                                                                <asp:Label ID="Label3" runat="server" Text="City :" Style="color: #444444;"></asp:Label>
                                                                <asp:Label ID="lbl_city" runat="server"></asp:Label>
                                                            </div>
                                                            <div class="span6" style="margin-top: 5px; min-height: 20px;">
                                                                <asp:Label ID="Label31" runat="server" Text="Country :" Style="color: #444444;"></asp:Label>
                                                                <asp:Label ID="lbl_country" runat="server"></asp:Label>
                                                            </div>

                                                        </div>
                                                        <div>
                                                            <div class="span5" style="margin-top: 5px;">
                                                                <asp:Label ID="Label5" runat="server" Text="Website :" Style="color: #444444;"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                <asp:Label ID="lbl_website" runat="server"></asp:Label>
                                                            </div>
                                                            <div class="span5" style="width: 25%; margin-top: 5px;">
                                                                <asp:Label ID="Label7" runat="server" Text="Telephone :" Style="color: #444444;"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                <asp:Label ID="lbl_telephone" runat="server"></asp:Label>
                                                            </div>
                                                            <div class="span5" style="width: 25%; margin-top: 5px;">
                                                                <asp:Label ID="Label34" runat="server" Text="FAX :" Style="color: #444444;"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                <asp:Label ID="lbl_fax" runat="server"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="span5" style="margin-top: 5px;">
                                                                <asp:Label ID="Label8" runat="server" Text="Date of Foundation :" Style="color: #444444;"></asp:Label>
                                                                <asp:Label ID="lbl_foundation" runat="server"></asp:Label>
                                                            </div>
                                                            <div class="span6" style="margin-top: 5px;">
                                                                <asp:Label ID="Label36" runat="server" Text="No of Employee :" Style="color: #444444;"></asp:Label>
                                                                <asp:Label ID="lbl_employee" runat="server"></asp:Label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </asp:Panel>
                                                <asp:Panel ID="edit_comp_pro_panel" runat="server" Visible="false">
                                                    <div class="standard-form row-fluid" style="padding: 2.3%;">
                                                        <div style="float: left; width: 100%;">
                                                            <div style="float: left; width: 48.5%;" class="span4">
                                                                <asp:Label ID="Label6" runat="server" Text="Company Name" class="span7" Style="margin-top: 1%;"></asp:Label>
                                                                <asp:TextBox ID="txt_company_name" runat="server" class="span6" Style="width: 94% !important;"></asp:TextBox>
                                                            </div>
                                                            <div style="width: 48.5%;" class="span4">
                                                                <asp:Label ID="Label9" runat="server" Text="Address" class="span7" Style="margin-top: 1%;"></asp:Label>

                                                                <asp:TextBox ID="txt_street_address" runat="server" class="span6" Style="width: 94% !important;"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div style="float: left; width: 100%;">
                                                            <div style="float: left; width: 48.5%;" class="span4">
                                                                <asp:Label ID="Label11" runat="server" Text="City" class="span7" Style="margin-top: 1%;"></asp:Label>
                                                                <asp:TextBox ID="txt_city" runat="server" class="span6" Style="width: 94% !important;"></asp:TextBox>


                                                            </div>
                                                            <div style="width: 48.5%;" class="span4">
                                                                <asp:Label ID="Label13" runat="server" Text="Country" class="span7" Style="margin-top: 1%;"></asp:Label>
                                                                <asp:DropDownList ID="ddl_country" runat="server" class="span6" DataTextField="Country_name" DataValueField="intglcode" Style="width: 94% !important;">
                                                                </asp:DropDownList>
                                                            </div>
                                                        </div>
                                                        <div style="float: left; width: 100%;">
                                                            <div style="float: left; width: 48.5%;" class="span4">
                                                                <asp:Label ID="Label15" runat="server" Text="Website" class="span7" Style="margin-top: 1%;"></asp:Label>
                                                                <asp:TextBox ID="txt_website" runat="server" class="span6" Style="width: 94% !important;"></asp:TextBox>



                                                            </div>
                                                            <div style="width: 48.5%;" class="span4">
                                                                <asp:Label ID="Label16" runat="server" Text="Phone" class="span7" Style="margin-top: 1%;"></asp:Label>
                                                                <asp:TextBox ID="txt_telephone" runat="server" class="span6" Style="width: 94% !important;"></asp:TextBox>

                                                            </div>
                                                        </div>
                                                        <div style="float: left; width: 100%;">
                                                            <div style="float: left; width: 48.5%;" class="span4">
                                                                <asp:Label ID="Label19" runat="server" Text="Fax" class="span7" Style="margin-top: 1%;"></asp:Label>
                                                                <asp:TextBox ID="txt_fax" runat="server" class="span6" Style="width: 94% !important;"></asp:TextBox>



                                                            </div>
                                                            <div style="width: 48.5%;" class="span4">
                                                                <asp:Label ID="Label21" runat="server" Text="Date of foundation" class="span7" Style="margin-top: 1%;"></asp:Label>
                                                                <asp:TextBox ID="txt_date_of_foundation" runat="server" class="span6" Style="width: 94% !important;"></asp:TextBox>

                                                            </div>
                                                        </div>
                                                        <div style="float: left; width: 100%;">
                                                            <div style="float: left; width: 48.5%;" class="span4">
                                                                <asp:Label ID="Label23" runat="server" Text="No of Employee" class="span7" Style="margin-top: 1%;"></asp:Label>
                                                                <asp:DropDownList ID="ddl_no_of_employee" class="span6" runat="server" Style="width: 94% !important;">
                                                                    <asp:ListItem>--No of Employee--</asp:ListItem>
                                                                    <asp:ListItem>0 to 5</asp:ListItem>
                                                                    <asp:ListItem>5 to 10</asp:ListItem>
                                                                    <asp:ListItem>10 to 20</asp:ListItem>
                                                                    <asp:ListItem>20 to 30</asp:ListItem>
                                                                    <asp:ListItem>30 to 40</asp:ListItem>
                                                                    <asp:ListItem>40 to 50</asp:ListItem>
                                                                    <asp:ListItem>50 or more</asp:ListItem>
                                                                </asp:DropDownList>

                                                            </div>

                                                        </div>
                                                        <div>
                                                            <asp:Button ID="btn_update" runat="server" Text="Update" class="custom_btn" Style="width: 15.5% !important; margin-right: 0%; margin-bottom: 0px;" OnClick="btn_update_Click" />
                                                            <asp:Button ID="btn_cancel" runat="server" Text="Cancel" class="custom_btn" Style="width: 15.5% !important; margin-left: 1%; margin-bottom: 0px;" OnClick="btn_cancel_Click" />
                                                        </div>
                                                    </div>
                                                </asp:Panel>
                                            </div>

                                            <div style="float: left; border: 1px solid #E1E1E1; width: 99.9%; margin-top: 2%;">
                                                <div class="header" style="padding-bottom: 0px; margin-bottom: 8px; background: url(./img/header_.png) no-repeat scroll center center #f4f4f4;">
                                                    <dl class="dl-horizontal" style="margin-bottom: 8px;">

                                                        <dd style="margin-top: 8px; margin-left: 5px;">
                                                            <h4>Director / Manager</h4>
                                                            <asp:LinkButton ID="link_edit_director" runat="server" Style="float: right;" OnClick="link_edit_director_Click">Edit</asp:LinkButton>
                                                        </dd>
                                                    </dl>
                                                </div>
                                                <asp:Panel ID="director_pro_panel" runat="server" Visible="true">
                                                    <div class="standard-form row-fluid" style="padding: 5px;">
                                                        <div>
                                                            <div class="span6">
                                                                <asp:Label ID="Label1" runat="server" Text="First Name :" Style="color: #444444;"></asp:Label>
                                                                <asp:Label ID="lbl_director_f_name" runat="server"></asp:Label>
                                                            </div>
                                                            <div class="span6">
                                                                <asp:Label ID="Label12" runat="server" Text="Last Name :" Style="color: #444444;"></asp:Label>
                                                                <asp:Label ID="lbl_director_l_name" runat="server"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="span6">
                                                                <asp:Label ID="Label14" runat="server" Text="Email :" Style="color: #444444;"></asp:Label>
                                                                <asp:Label ID="lbl_director_email" runat="server"></asp:Label>
                                                            </div>
                                                            <div class="span6">
                                                                <asp:Label ID="Label38" runat="server" Text="Telephone :" Style="color: #444444;"></asp:Label>
                                                                <asp:Label ID="lbl_director_phone" runat="server"></asp:Label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </asp:Panel>
                                                <asp:Panel ID="edit_direcotor_panel" runat="server" Visible="false">
                                                    <div class="standard-form row-fluid" style="padding: 2.3%;">
                                                        <div style="float: left; width: 100%;">
                                                            <div style="float: left; width: 48.5%;" class="span4">
                                                                <asp:Label ID="Label24" runat="server" Text="First Name" class="span7" Style="margin-top: 1%;"></asp:Label>
                                                                <asp:TextBox ID="txt_director_f_name" runat="server" class="span6" Style="width: 94% !important;"></asp:TextBox>



                                                            </div>
                                                            <div style="width: 48.5%;" class="span4">
                                                                <asp:Label ID="Label25" runat="server" Text="Last Name" class="span7" Style="margin-top: 1%;"></asp:Label>
                                                                <asp:TextBox ID="txt_director_l_name" runat="server" class="span6" Style="width: 94% !important;"></asp:TextBox>

                                                            </div>
                                                        </div>
                                                        <div style="float: left; width: 100%;">
                                                            <div style="float: left; width: 48.5%;" class="span4">
                                                                <asp:Label ID="Label26" runat="server" Text="Email" class="span7" Style="margin-top: 1%;"></asp:Label>
                                                                <asp:TextBox ID="txt_director_email" runat="server" class="span6" Style="width: 94% !important;"></asp:TextBox>




                                                            </div>
                                                            <div style="width: 48.5%;" class="span4">
                                                                <asp:Label ID="Label27" runat="server" Text="Phone" class="span7" Style="margin-top: 1%;"></asp:Label>
                                                                <asp:TextBox ID="txt_director_phone" runat="server" class="span6" Style="width: 94% !important;"></asp:TextBox>

                                                            </div>
                                                        </div>
                                                        <asp:Button ID="btn_director_update" runat="server" Text="Update" class="custom_btn" Style="width: 15.5% !important; margin-right: 0%; margin-bottom: 0px;" OnClick="btn_director_update_Click" />
                                                        <asp:Button ID="btn_director_cancel" runat="server" Text="Cancel" class="custom_btn" Style="width: 15.5% !important; margin-left: 1%; margin-bottom: 0px;" OnClick="btn_director_cancel_Click" />
                                                    </div>
                                                </asp:Panel>
                                            </div>
                                            <div style="float: left; border: 1px solid #E1E1E1; width: 99.9%; margin-top: 2%;">
                                                <div class="header" style="padding-bottom: 0px; margin-bottom: 8px; background: url(./img/header_.png) no-repeat scroll center center #f4f4f4;">
                                                    <dl class="dl-horizontal" style="margin-bottom: 8px;">

                                                        <dd style="margin-top: 8px; margin-left: 5px;">
                                                            <h4>Contact for Exports</h4>
                                                            <asp:LinkButton ID="link_edit_export_contact" runat="server" Style="float: right;" OnClick="link_edit_export_contact_Click">Edit</asp:LinkButton>
                                                        </dd>
                                                    </dl>
                                                </div>
                                                <asp:Panel ID="export_pro_panel" runat="server" Visible="true">
                                                    <div class="standard-form row-fluid" style="padding: 5px;">
                                                        <div>
                                                            <div class="span6">
                                                                <asp:Label ID="Label17" runat="server" Text="First Name :" Style="color: #444444;"></asp:Label>
                                                                <asp:Label ID="lbl_exports_f_name" runat="server"></asp:Label>
                                                            </div>
                                                            <div class="span6">
                                                                <asp:Label ID="Label18" runat="server" Text="Last Name :" Style="color: #444444;"></asp:Label>
                                                                <asp:Label ID="lbl_exports_l_name" runat="server"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="span6">
                                                                <asp:Label ID="Label42" runat="server" Text="Email :" Style="color: #444444;"></asp:Label>
                                                                <asp:Label ID="lbl_exports_email" runat="server"></asp:Label>
                                                            </div>
                                                            <div class="span6">
                                                                <asp:Label ID="Label44" runat="server" Text="Telephone :" Style="color: #444444;"></asp:Label>
                                                                <asp:Label ID="lbl_exports_phone" runat="server"></asp:Label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </asp:Panel>
                                                <asp:Panel ID="edit_export_pro_panel" runat="server" Visible="false">
                                                    <div class="standard-form row-fluid" style="padding: 2.3%;">
                                                        <div style="float: left; width: 100%;">
                                                            <div style="float: left; width: 48.5%;" class="span4">
                                                                <asp:Label ID="Label28" runat="server" Text="First Name" class="span7" Style="margin-top: 1%;"></asp:Label>
                                                                <asp:TextBox ID="txt_eport_f_name" runat="server" class="span6" Style="width: 94% !important;"></asp:TextBox>





                                                            </div>
                                                            <div style="width: 48.5%;" class="span4">
                                                                <asp:Label ID="Label30" runat="server" Text="Last Name" class="span7" Style="margin-top: 1%;"></asp:Label>
                                                                <asp:TextBox ID="txt_export_l_name" runat="server" class="span6" Style="width: 94% !important;"></asp:TextBox>


                                                            </div>
                                                        </div>
                                                        <div style="float: left; width: 100%;">
                                                            <div style="float: left; width: 48.5%;" class="span4">
                                                                <asp:Label ID="Label32" runat="server" Text="Email" class="span7" Style="margin-top: 1%;"></asp:Label>

                                                                <asp:TextBox ID="txt_export_email" runat="server" class="span6" Style="width: 94% !important;"></asp:TextBox>




                                                            </div>
                                                            <div style="width: 48.5%;" class="span4">
                                                                <asp:Label ID="Label50" runat="server" Text="Phone" class="span7" Style="margin-top: 1%;"></asp:Label>
                                                                <asp:TextBox ID="txt_export_phone" runat="server" class="span6" Style="width: 94% !important;"></asp:TextBox>

                                                            </div>
                                                        </div>
                                                        <asp:Button ID="btn_export_update" runat="server" Text="Update" class="custom_btn" Style="width: 15.5% !important; margin-right: 0%; margin-bottom: 0px;" OnClick="btn_export_update_Click" />
                                                        <asp:Button ID="btn_export_cancel" runat="server" Text="Cancel" class="custom_btn" Style="width: 15.5% !important; margin-left: 1%; margin-bottom: 0px;" OnClick="btn_export_cancel_Click" />
                                                    </div>
                                                </asp:Panel>
                                            </div>
                                            <div style="float: left; border: 1px solid #E1E1E1; width: 99.9%; margin-top: 2%;">
                                                <div class="header" style="padding-bottom: 0px; margin-bottom: 8px; background: url(./img/header_.png) no-repeat scroll center center #f4f4f4;">
                                                    <dl class="dl-horizontal" style="margin-bottom: 8px;">

                                                        <dd style="margin-top: 8px; margin-left: 5px;">
                                                            <h4>Contact for Imports</h4>
                                                            <asp:LinkButton ID="link_edit_imports_contact" runat="server" Style="float: right;" OnClick="link_edit_imports_contact_Click">Edit</asp:LinkButton>
                                                        </dd>
                                                    </dl>
                                                </div>
                                                <asp:Panel ID="import_pro_panel" runat="server" Visible="true">
                                                    <div class="standard-form row-fluid" style="padding: 5px;">
                                                        <div>
                                                            <div class="span6">
                                                                <asp:Label ID="Label20" runat="server" Text="First Name :" Style="color: #444444;"></asp:Label>
                                                                <asp:Label ID="lbl_Imports_f_name" runat="server"></asp:Label>
                                                            </div>
                                                            <div class="span6">
                                                                <asp:Label ID="Label22" runat="server" Text="Last Name :" Style="color: #444444;"></asp:Label>
                                                                <asp:Label ID="lbl_Imports_l_name" runat="server"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="span6">
                                                                <asp:Label ID="Label46" runat="server" Text="Email :" Style="color: #444444;"></asp:Label>
                                                                <asp:Label ID="lbl_Imports_email" runat="server"></asp:Label>
                                                            </div>
                                                            <div class="span6">
                                                                <asp:Label ID="Label48" runat="server" Text="Telephone :" Style="color: #444444;"></asp:Label>
                                                                <asp:Label ID="lbl_Imports_phone" runat="server"></asp:Label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </asp:Panel>
                                                <asp:Panel ID="edit_import_pro_panel" runat="server" Visible="false">
                                                    <div class="standard-form row-fluid" style="padding: 2.3%;">
                                                        <div style="float: left; width: 100%;">
                                                            <div style="float: left; width: 48.5%;" class="span4">
                                                                <asp:Label ID="Label51" runat="server" Text="First Name" class="span7" Style="margin-top: 1%;"></asp:Label>


                                                                <asp:TextBox ID="txt_import_f_name" runat="server" class="span6" Style="width: 94% !important;"></asp:TextBox>




                                                            </div>
                                                            <div style="width: 48.5%;" class="span4">
                                                                <asp:Label ID="Label37" runat="server" Text="Last Name" class="span7" Style="margin-top: 1%;"></asp:Label>

                                                                <asp:TextBox ID="txt_import_l_name" runat="server" class="span6" Style="width: 94% !important;"></asp:TextBox>

                                                            </div>
                                                        </div>
                                                        <div style="float: left; width: 100%;">
                                                            <div style="float: left; width: 48.5%;" class="span4">
                                                                <asp:Label ID="Label47" runat="server" Text="Email" class="span7" Style="margin-top: 1%;"></asp:Label>
                                                                <asp:TextBox ID="txt_import_email" runat="server" class="span6" Style="width: 94% !important;"></asp:TextBox>
                                                            </div>
                                                            <div style="width: 48.5%;" class="span4">
                                                                <asp:Label ID="Label49" runat="server" Text="Phone" class="span7" Style="margin-top: 1%;"></asp:Label>
                                                                <asp:TextBox ID="txt_import_phone" runat="server" class="span6" Style="width: 94% !important;"></asp:TextBox>

                                                            </div>
                                                        </div>

                                                        <asp:Button ID="btn_import_update" runat="server" Text="Update" class="custom_btn" Style="width: 15.5% !important; margin-right: 0%; margin-bottom: 0px;" OnClick="btn_import_update_Click" />
                                                        <asp:Button ID="btn_import_cancel" runat="server" Text="Cancel" class="custom_btn" Style="width: 15.5% !important; margin-left: 1%; margin-bottom: 0px;" OnClick="btn_import_cancel_Click" />
                                                    </div>
                                                </asp:Panel>
                                            </div>
                                            <div style="float: left; border: 1px solid #E1E1E1; width: 99.9%; margin-top: 2%;">
                                                <div class="header" style="padding-bottom: 0px; margin-bottom: 8px; background: url(./img/header_.png) no-repeat scroll center center #f4f4f4;">
                                                    <dl class="dl-horizontal" style="margin-bottom: 8px;">

                                                        <dd style="margin-top: 8px; margin-left: 5px;">
                                                            <h4>Area of Service</h4>
                                                            <asp:LinkButton ID="link_edit_area_services" runat="server" Style="float: right;" OnClick="link_edit_area_services_Click">Edit</asp:LinkButton>
                                                        </dd>
                                                    </dl>
                                                </div>
                                                <asp:Panel ID="service_pro_panel" runat="server" Visible="true">
                                                    <div class="standard-form row-fluid" style="padding: 5px;">
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
                                                            <asp:Label ID="Label2" runat="server" Text="OTHER SERVICE :" Style="color: #444444;"></asp:Label>
                                                            <asp:Label ID="lbl_other_service" runat="server" Text="Other Service:"></asp:Label>

                                                        </div>
                                                    </div>
                                                </asp:Panel>
                                                <asp:Panel ID="edit_service_pro_panel" runat="server" Visible="false">
                                                    <div class="standard-form row-fluid" style="padding: 2.3%;">
                                                        <asp:CheckBoxList ID="chk_edit_service" runat="server" CssClass="checkbox" RepeatColumns="2">
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
                                                        <div>
                                                            <asp:Label ID="Label43" runat="server" Text="Other Service:" class="span2" Style="margin-top: 1%;"></asp:Label>
                                                            <asp:TextBox ID="txt_other_service" runat="server" class="span6" Style="width: 50% !important;"></asp:TextBox>
                                                        </div>
                                                        <asp:Button ID="btn_service_update" runat="server" Text="Update" class="custom_btn" Style="width: 15.5% !important; margin-right: 0%; margin-bottom: 0px;" OnClick="btn_service_update_Click" />
                                                        <asp:Button ID="btn_service_cancel" runat="server" Text="Cancel" class="custom_btn" Style="width: 15.5% !important; margin-left: 1%; margin-bottom: 0px;" OnClick="btn_service_cancel_Click" />
                                                    </div>
                                                </asp:Panel>
                                            </div>
                                            <div style="float: left; border: 1px solid #E1E1E1; width: 99.9%; margin-top: 2%;">
                                                <div class="header" style="padding-bottom: 0px; margin-bottom: 8px; background: url(./img/header_.png) no-repeat scroll center center #f4f4f4;">
                                                    <dl class="dl-horizontal" style="margin-bottom: 8px;">

                                                        <dd style="margin-top: 8px; margin-left: 13px;">
                                                            <h4>About Us</h4>
                                                            <asp:LinkButton ID="link_edit_about_us" runat="server" Style="float: right;" OnClick="link_edit_about_us_Click">Edit</asp:LinkButton>
                                                        </dd>
                                                    </dl>
                                                </div>
                                                <asp:Panel ID="about_pro_panel" runat="server" Visible="true">
                                                    <div class="standard-form row-fluid" style="padding: 5px;">
                                                        <div class="span12">
                                                            <asp:Label ID="lbl_about_us" runat="server"></asp:Label>

                                                        </div>
                                                    </div>
                                                </asp:Panel>
                                                <asp:Panel ID="edit_about_panel" runat="server" Visible="false">

                                                    <div class="standard-form row-fluid" style="padding: 2.3%;">

                                                        <asp:TextBox ID="txt_about_us" runat="server" class="span12" Style="width: 95%; height: 100px;" placeholder="About Us" TextMode="MultiLine"></asp:TextBox>
                                                        <asp:Button ID="btn_about_update" runat="server" Text="Update" class="custom_btn" Style="width: 15.5% !important; margin-right: 0%; margin-bottom: 0px;" OnClick="btn_about_update_Click" />
                                                        <asp:Button ID="btn_about_cancel" runat="server" Text="Cancel" class="custom_btn" Style="width: 15.5% !important; margin-left: 1%; margin-bottom: 0px;" OnClick="btn_about_cancel_Click" />
                                                    </div>
                                                </asp:Panel>
                                            </div>
                                        </div>

                                        <div id="ajaxresponse"></div>
                                    </div>
                                </div>


                            </div>


                            <div class="span4 contact_form">
                                <div style="margin-bottom: 10px; margin-top: 4%; float: left; width: 100%; border: 1px solid #E1E1E1;">
                                    <div class="header" style="padding-bottom: 0px; margin-bottom: 8px; background: url(./img/header_.png) no-repeat scroll center center #f4f4f4;">
                                        <dl class="dl-horizontal" style="margin-bottom: 8px;">

                                            <dd style="margin-top: 8px; margin-left: 5px;">
                                                <h4>Login Detail</h4>
                                                <asp:LinkButton ID="link_change_password" runat="server" Style="float: right;" OnClick="link_change_password_Click">Change Password</asp:LinkButton>
                                            </dd>
                                        </dl>
                                    </div>

                                    <asp:Panel ID="login_panel" runat="server" Visible="true">
                                        <div class="standard-form row-fluid" style="padding: 5px;">
                                            <asp:Label ID="Label10" runat="server" Text="Email:"></asp:Label>
                                            <asp:Label ID="lbl_login_email" runat="server"></asp:Label>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="edit_change_password" runat="server" Visible="false">
                                        <div class="standard-form row-fluid" style="padding: 2.3%;">
                                            <asp:TextBox ID="txt_old_password" runat="server" class="span6" placeholder="Old Password" Style="width: 96% !important;" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Old Password" ControlToValidate="txt_old_password" Display="None" ValidationGroup="pass"></asp:RequiredFieldValidator>
                                            <asp:TextBox ID="txt_new_password" runat="server" class="span6" placeholder="New Password" Style="width: 96% !important;" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="ref1" runat="server" ErrorMessage="Please Enter New Password" ControlToValidate="txt_new_password" Display="None" ValidationGroup="pass"></asp:RequiredFieldValidator>
                                            <asp:TextBox ID="txt_confirm_password" runat="server" class="span6" placeholder="Confrom Password" Style="width: 96% !important;" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfv3" runat="server" ErrorMessage="Please Enter Confirm Password" ControlToValidate="txt_confirm_password" Display="None" ValidationGroup="pass"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Not Match Password" ControlToValidate="txt_confirm_password" ControlToCompare="txt_new_password"></asp:CompareValidator>
                                            <asp:Button ID="btn_password_update" runat="server" Text="Update" class="custom_btn" Style="width: 29% !important; margin-right: 0%; margin-top: 2px; margin-bottom: 0px;" OnClick="btn_password_update_Click" ValidationGroup="pass" />
                                            <asp:Button ID="btn_password_cancel" runat="server" Text="Cancel" class="custom_btn" Style="width: 29% !important; margin-left: 1%; margin-top: -18px; margin-bottom: 0px;" OnClick="btn_password_cancel_Click" />
                                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="pass" ShowSummary="false" ShowMessageBox="true" />
                                        </div>
                                    </asp:Panel>
                                </div>
                                <div style="margin-bottom: 10px; float: left; width: 100%; border: 1px solid #E1E1E1;">
                                    <div class="header" style="padding-bottom: 0px; margin-bottom: 8px; background: url(./img/header_.png) no-repeat scroll center center #f4f4f4;">
                                        <dl class="dl-horizontal" style="margin-bottom: 8px;">

                                            <dd style="margin-top: 8px; margin-left: 5px;">
                                                <h4>Logo</h4>
                                                <asp:LinkButton ID="link_change_logo" runat="server" Style="float: right;" OnClick="link_change_logo_Click">Change Logo</asp:LinkButton>
                                            </dd>
                                        </dl>
                                    </div>
                                    <asp:Panel ID="logo_panel" runat="server" Visible="true">
                                        <div class="standard-form row-fluid">
                                            <center>
                                            <asp:Image ID="Image1" runat="server" Height="50%"  Width="50%"/>
                                            </center>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="edit_logo_panel" runat="server" Visible="false">
                                        <div class="standard-form row-fluid" style="padding: 2.3%;">
                                            <div>
                                                <asp:Label ID="Label4" runat="server" Text="Upload Logo:"></asp:Label>
                                                <asp:FileUpload ID="FileUpload1" runat="server" Style="height: 27px; margin-top: 5%;" />
                                            </div>
                                            <asp:Button ID="btn_logo_update" runat="server" Text="Update" class="custom_btn" Style="width: 30.5% !important; margin-right: 0%; margin-bottom: 0px;" OnClick="btn_logo_update_Click" />
                                            <asp:Button ID="btn_logo_cancel" runat="server" Text="Cancel" class="custom_btn" Style="width: 30.5% !important; margin-left: 1%; margin-bottom: 0px;" OnClick="btn_logo_cancel_Click" />
                                        </div>
                                    </asp:Panel>
                                </div>
                                <div style="margin-bottom: 10px; float: left; width: 100%; border: 1px solid #E1E1E1;">
                                    <div class="header" style="padding-bottom: 0px; margin-bottom: 8px; background: url(./img/header_.png) no-repeat scroll center center #f4f4f4;">
                                        <dl class="dl-horizontal" style="margin-bottom: 8px;">

                                            <dd style="margin-top: 8px; margin-left: 5px;">
                                                <h4>Your Ratings</h4>

                                            </dd>
                                        </dl>

                                    </div>
                                    <asp:Panel ID="Panel1" runat="server" Visible="true">
                                        <div class="standard-form row-fluid">
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


                                        </div>

                                        <div class="standard-form row-fluid">

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


                                        </div>
                                        <div class="standard-form row-fluid">
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


                                        </div>
                                        <div class="standard-form row-fluid">
                                            <table>
                                                <tr>
                                                    <td style="width: 67.6%;">Recommend this Agent :</td>
                                                    <td>
                                                        <cc2:Rating ID="Rating4" OnChanged="Rating1_Changed4" runat="server" AutoPostBack="true" ReadOnly="true"
                                                            StarCssClass="ratingEmpty" WaitingStarCssClass="ratingSaved" EmptyStarCssClass="Star"
                                                            FilledStarCssClass="ratingFilled" CurrentRating='<%# Eval("Rating4") %>'>
                                                        </cc2:Rating>
                                                    </td>
                                                </tr>
                                            </table>


                                        </div>
                                    </asp:Panel>
                                </div>
                                <div style="margin-bottom: 10px; float: left; width: 100%; border: 1px solid #E1E1E1;">
                                    <div class="header" style="padding-bottom: 0px; margin-bottom: 8px; background: url(./img/header_.png) no-repeat scroll center center #f4f4f4;">
                                        <dl class="dl-horizontal" style="margin-bottom: 8px;">

                                            <dd style="margin-top: 8px; margin-left: 5px;">
                                                <h4>Membership</h4>
                                                <asp:LinkButton ID="link_change_membership" runat="server" Style="float: right;" OnClick="link_change_membership_Click">Change Membership</asp:LinkButton>
                                            </dd>
                                        </dl>
                                    </div>
                                    <asp:Panel ID="member_plan_panel" runat="server" Visible="true">
                                        <div class="standard-form row-fluid">
                                            <asp:Label ID="lbl_member_plan" runat="server" Text="Gold Membership (USD 250/Month)" Style="color: #444444; margin-left: 5px;"></asp:Label>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="edit_member_plan_panel" runat="server" Visible="false">
                                        <div class="standard-form row-fluid" style="padding: 2.3%;">
                                            <asp:RadioButtonList ID="rdb_member_plan" runat="server" CssClass="radio">
                                                <asp:ListItem>Standard Membership (USD 150/Month)</asp:ListItem>
                                                <asp:ListItem>Gold Membership (USD 250/Month)</asp:ListItem>
                                                <asp:ListItem>Cancel Membership</asp:ListItem>
                                            </asp:RadioButtonList>
                                            <asp:Button ID="btn_member_update" runat="server" Text="Update" class="custom_btn" Style="width: 30.5% !important; margin-right: 0%; margin-bottom: 0px;" OnClick="btn_member_update_Click" />
                                            <asp:Button ID="btn_member_cancel" runat="server" Text="Cancel" class="custom_btn" Style="width: 30.5% !important; margin-left: 1%; margin-bottom: 0px;" OnClick="btn_member_cancel_Click" />
                                        </div>
                                    </asp:Panel>

                                </div>
                                <div style="margin-bottom: 10px; padding: 5px; float: left; width: 97%; border: 1px solid #E1E1E1;">
                                    <span></span><span style="color: green;">Online</span>


                                </div>
                            </div>

                        </div>

                    </div>

                </div>
            </div>

        </div>
    </section>
</asp:Content>

