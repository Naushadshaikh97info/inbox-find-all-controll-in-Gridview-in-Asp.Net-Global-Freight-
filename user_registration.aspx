<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="user_registration.aspx.cs" Inherits="user_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="header_page">
        <div class="container">
            <div class="row-fluid">
                <div class="span6">
                    <h4>User Registration</h4>
                </div>
                <div class="breadcrumbss">
                    <ul class="page_parents pull-right">
                        <li>You are here: </li>
                        <li><a href="Default.aspx">Home</a>/</li>
                        <li>User Registration</li>
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
                                <div class="header">

                                    <dl class="dl-horizontal">

                                        <dd style="margin-left: 0px !important; margin-top: 10px;">
                                            <h4>Membership Application</h4>
                                        </dd>
                                    </dl>
                                </div>
                                <div class="row-fluid">
                                    <div class="row-fluid">
                                        <div class="span12">
                                            <div class="standard-form row-fluid">
                                                <div>
                                                    <asp:TextBox ID="txt_company_name" runat="server" class="span6" placeholder="Company Name"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfv1" runat="server" ErrorMessage="Please Enter Company Name" ControlToValidate="txt_company_name" ValidationGroup="registraion" Display="None"></asp:RequiredFieldValidator>
                                                    <asp:TextBox ID="txt_street_address" runat="server" class="span6" placeholder="Street Address"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfv2" runat="server" ErrorMessage="Please Enter Company Adrress Name" ControlToValidate="txt_street_address" ValidationGroup="registraion" Display="None"></asp:RequiredFieldValidator>
                                                    <asp:TextBox ID="txt_city" runat="server" class="span6" placeholder="City" Style="width: 46% !important;"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfv3" runat="server" ErrorMessage="Please Enter City Name" ControlToValidate="txt_city" ValidationGroup="registraion" Display="None"></asp:RequiredFieldValidator>
                                                    <asp:DropDownList ID="ddl_country" runat="server" class="span6" DataTextField="Country_name" DataValueField="intglcode">
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="rfv4" runat="server" ErrorMessage="Please Enter Country Name" ControlToValidate="ddl_country" ValidationGroup="registraion" Display="None"></asp:RequiredFieldValidator>
                                                    <asp:TextBox ID="txt_website" runat="server" class="span6" placeholder="Website" Style="width: 29.5% !important;"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfv5" runat="server" ErrorMessage="Please Enter Website Name" ControlToValidate="txt_website" ValidationGroup="registraion" Display="None"></asp:RequiredFieldValidator>
                                                    <asp:TextBox ID="txt_telephone" runat="server" class="span6" placeholder="Telephone" Style="width: 29.5% !important;"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfv6" runat="server" ErrorMessage="Please Enter Telephone Number" ControlToValidate="txt_telephone" ValidationGroup="registraion" Display="None"></asp:RequiredFieldValidator>
                                                    <asp:TextBox ID="txt_fax" runat="server" class="span6" placeholder="FAX" Style="width: 29.5% !important;"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfv7" runat="server" ErrorMessage="Please Enter Fax Number" ControlToValidate="txt_fax" ValidationGroup="registraion" Display="None"></asp:RequiredFieldValidator>
                                                    <asp:TextBox ID="txt_date_of_foundation" runat="server" class="span6" placeholder="Date of Foundation"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfv8" runat="server" ErrorMessage="Please Enter DateofFoundation" ControlToValidate="txt_date_of_foundation" ValidationGroup="registraion" Display="None"></asp:RequiredFieldValidator>
                                                    <asp:DropDownList ID="ddl_no_of_employee" class="span6" runat="server">
                                                        <asp:ListItem>--No of Employee--</asp:ListItem>
                                                        <asp:ListItem>0 to 5</asp:ListItem>
                                                        <asp:ListItem>5 to 10</asp:ListItem>
                                                        <asp:ListItem>10 to 20</asp:ListItem>
                                                        <asp:ListItem>20 to 30</asp:ListItem>
                                                        <asp:ListItem>30 to 40</asp:ListItem>
                                                        <asp:ListItem>40 to 50</asp:ListItem>
                                                        <asp:ListItem>50 or more</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="rfv9" runat="server" ErrorMessage="Please Enter Fax Name" ControlToValidate="ddl_no_of_employee" ValidationGroup="registraion" Display="None"></asp:RequiredFieldValidator>
                                                    <div class="header">
                                                        <dl class="dl-horizontal">

                                                            <dd style="margin-left: 0px !important; margin-top: 10px;">
                                                                <h4>Login Detail</h4>
                                                            </dd>
                                                        </dl>
                                                    </div>
                                                    <asp:TextBox ID="txt_login_email" runat="server" class="span6" placeholder="Email Id"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="txt_login_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ErrorMessage="Enter User Email ID" Display="None" ValidationGroup="registraion"></asp:RegularExpressionValidator>
                                                    <asp:TextBox ID="txt_password" TextMode="Password" runat="server" class="span6" placeholder="Password"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfv11" runat="server" ErrorMessage="Please Enter Password " ControlToValidate="txt_password" ValidationGroup="registraion" Display="None"></asp:RequiredFieldValidator>
                                                    <div class="header">
                                                        <dl class="dl-horizontal">
                                                            <dd style="margin-left: 0px !important; margin-top: 10px;">
                                                                <h4>Director / Manager</h4>
                                                            </dd>
                                                        </dl>
                                                    </div>
                                                    <asp:TextBox ID="txt_director_f_name" runat="server" class="span6" placeholder="First Name"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfv12" runat="server" ErrorMessage="Please Enter Director First Name" ControlToValidate="txt_director_f_name" ValidationGroup="registraion" Display="None"></asp:RequiredFieldValidator>
                                                    <asp:TextBox ID="txt_director_l_name" runat="server" class="span6" placeholder="Last Name"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfv13" runat="server" ErrorMessage="Please Enter Password " ControlToValidate="txt_director_l_name" ValidationGroup="registraion" Display="None"></asp:RequiredFieldValidator>
                                                    <asp:TextBox ID="txt_email" runat="server" class="span6" placeholder="Email"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ControlToValidate="txt_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ErrorMessage="Enter Director Email ID" Display="None" ValidationGroup="registraion"></asp:RegularExpressionValidator>
                                                    <asp:TextBox ID="txt_director_phone" runat="server" class="span6" placeholder="Telephone"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfv15" runat="server" ErrorMessage="Please Enter Director Phone Number" ControlToValidate="txt_director_phone" ValidationGroup="registraion" Display="None"></asp:RequiredFieldValidator>
                                                    <div class="header">
                                                        <dl class="dl-horizontal">

                                                            <dd style="margin-left: 0px !important; margin-top: 10px;">
                                                                <h4>Contact for Exports</h4>
                                                            </dd>
                                                        </dl>
                                                    </div>

                                                    <asp:TextBox ID="txt_export_f_name" runat="server" class="span6" placeholder="First Name"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfv16" runat="server" ErrorMessage="Please Enter Export FirstName " ControlToValidate="txt_export_f_name" ValidationGroup="registraion" Display="None"></asp:RequiredFieldValidator>
                                                    <asp:TextBox ID="txt_export_l_name" runat="server" class="span6" placeholder="Last Name"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfv17" runat="server" ErrorMessage="Please Enter Export LastName " ControlToValidate="txt_export_l_name" ValidationGroup="registraion" Display="None"></asp:RequiredFieldValidator>
                                                    <asp:TextBox ID="txt_export_email" runat="server" class="span6" placeholder="Email"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txt_export_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ErrorMessage="Enter Export Email ID" Display="None" ValidationGroup="registraion"></asp:RegularExpressionValidator>
                                                    <asp:TextBox ID="txt_export_phone" runat="server" class="span6" placeholder="Telephone"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfv19" runat="server" ErrorMessage="Please Enter Export Phone Number " ControlToValidate="txt_export_phone" ValidationGroup="registraion" Display="None"></asp:RequiredFieldValidator>
                                                    <div class="header">
                                                        <dl class="dl-horizontal">

                                                            <dd style="margin-left: 0px !important; margin-top: 10px;">
                                                                <h4>Contact for Imports</h4>
                                                            </dd>
                                                        </dl>
                                                    </div>
                                                    <asp:TextBox ID="txt_import_f_name" runat="server" class="span6" placeholder="First Name"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfv20" runat="server" ErrorMessage="Please Enter Import FirstName" ControlToValidate="txt_import_f_name" ValidationGroup="registraion" Display="None"></asp:RequiredFieldValidator>
                                                    <asp:TextBox ID="txt_import_l_name" runat="server" class="span6" placeholder="Last Name"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfv21" runat="server" ErrorMessage="Please Enter Import LastName" ControlToValidate="txt_import_l_name" ValidationGroup="registraion" Display="None"></asp:RequiredFieldValidator>
                                                    <asp:TextBox ID="txt_import_email" runat="server" class="span6" placeholder="Email"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="txt_import_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ErrorMessage="Enter Import Email ID" Display="None" ValidationGroup="registraion"></asp:RegularExpressionValidator>
                                                    <asp:TextBox ID="txt_import_phone" runat="server" class="span6" placeholder="Telephone"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfv23" runat="server" ErrorMessage="Please Enter Import Phone Number " ControlToValidate="txt_import_phone" ValidationGroup="registraion" Display="None"></asp:RequiredFieldValidator>
                                                    <div class="header">
                                                        <dl class="dl-horizontal">

                                                            <dd style="margin-left: 0px !important; margin-top: 10px;">
                                                                <h4>Areas of Service</h4>
                                                            </dd>
                                                        </dl>
                                                    </div>
                                                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" CssClass="checkbox" RepeatColumns="2">
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

                                                    <asp:TextBox ID="txt_other" runat="server" class="span6" placeholder="Other Service"></asp:TextBox>
                                                </div>
                                                <div class="header">
                                                    <dl class="dl-horizontal">

                                                        <dd style="margin-left: 0px !important; margin-top: 10px;">
                                                            <h4>About Us</h4>
                                                        </dd>
                                                    </dl>
                                                </div>
                                                <asp:TextBox ID="txt_about_us" runat="server" class="span12" Style="width: 95%; height: 100px;" placeholder="About Us" TextMode="MultiLine"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfv26" runat="server" ErrorMessage="Please Select Other Service " ControlToValidate="txt_about_us" ValidationGroup="registraion" Display="None"></asp:RequiredFieldValidator>
                                                <table style="margin-bottom: 2%;">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label1" runat="server" Text="Upload Logo"></asp:Label></td>
                                                        <td>
                                                            <asp:FileUpload ID="FileUpload1" runat="server" Style="margin-bottom: 0; width: 100% !important; margin-left: 10%;" /></td>
                                                    </tr>
                                                </table>
                                                <asp:Label ID="Label2" runat="server" Text="Membership" Style="margin-top: 2%;"></asp:Label>
                                                <asp:RadioButtonList ID="rdb_member_plan" runat="server" CssClass="radio">
                                                    <asp:ListItem>Standard Membership (USD 150/Month)</asp:ListItem>
                                                    <asp:ListItem>Gold Membership (USD 250/Month)</asp:ListItem>
                                                </asp:RadioButtonList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Plan" ControlToValidate="rdb_member_plan" ValidationGroup="registraion" Display="None"></asp:RequiredFieldValidator>
                                                <asp:Button ID="btn_submit" runat="server" Text="Submit" class="custom_btn" Style="width: 15.5% !important; margin-right: 0%; margin-top: 3%;" OnClick="btn_submit_Click" ValidationGroup="registraion" />
                                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" ValidationGroup="registraion" />
                                            </div>
                                        </div>

                                        <div id="ajaxresponse"></div>
                                    </div>
                                </div>
                            </div>


                            <div class="span4 post_page_cont">
                                <div class="header">
                                    <dl class="dl-horizontal">

                                        <dd style="margin-left: 55px !important; margin-top: 30px;"></dd>
                                    </dl>
                                </div>
                                <p>
                                    <asp:Literal ID="ltrl_aboutus" runat="server"></asp:Literal>
                                </p>


                            </div>

                        </div>

                    </div>

                </div>
            </div>

        </div>
    </section>
</asp:Content>

