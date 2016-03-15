
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_profile : System.Web.UI.Page
{
    DataClassesDataContext linq_obj = new DataClassesDataContext();
    static string imagename2;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        if (IsPostBack)
            return;
        fill_user_data();
        fill_country();

    }
   
    private void fill_country()
    {
        var id = (from a in linq_obj.Country_masters
                  select a).ToList();
        ddl_country.DataSource = id;
        ddl_country.DataBind();
        ddl_country.Items.Insert(0, "--Select Country--");
    }
    private void fill_user_data()
    {
        var id = (from a in linq_obj.user_registration_tbls
                  join b in linq_obj.Country_masters on a.country_name equals b.intglcode
                  where a.intglcode == Convert.ToInt32(Session["id"])
                  select new
                  {
                      code = a.intglcode,
                      company_name = a.company_name,
                      address = a.street_address,
                      city = a.city_name,
                      country = b.Country_name,
                      website = a.website,
                      telephone = a.telephone,
                      fax = a.fax,
                      date_of_foundation = a.date_of_foundation,
                      no_of_emplyoee = a.no_of_employee,
                      login_email = a.login_email,
                      director_f_name = a.director_f_name,
                      director_l_name = a.director_l_name,
                      director_email = a.director_email,
                      director_telephone = a.director_phone,
                      export_f_name = a.export_f_name,
                      export_l_name = a.export_l_name,
                      export_email = a.export_email,
                      export_telephone = a.export_phone,
                      import_f_name = a.import_f_name,
                      import_l_name = a.import_l_name,
                      import_email = a.import_email,
                      import_telephone = a.import_phone,
                      about_us = a.about_us,
                      service = a.area_of_services,
                      other_service = a.other_service,
                      image_logo = "./upload/" + a.company_logo,
                      member_plan = a.membership,
                      Rating = a.ratings,
                      Rating2 = a.ratings2,
                       Rating3 = a.ratings3,
                        Rating4 = a.ratings4
                  }).Single();

        string[] abc = id.service.Split(',');
        for (int i = 0; i < abc.Length; i++)
        {
            string xyz = abc[i].ToString();
            for (int j = 0; j < chk_service.Items.Count; j++)
            {
                if (chk_service.Items[j].Value == xyz)
                {
                    chk_service.Items[j].Selected = true;
                }
            }
        }

        lbl_company_name.Text = id.company_name;
        lbl_address.Text = id.address;
        lbl_city.Text = id.city;
        lbl_country.Text = id.country;
        lbl_website.Text = id.website;
        lbl_telephone.Text = id.telephone;
        lbl_fax.Text = id.fax;
        lbl_foundation.Text = id.date_of_foundation;
        lbl_employee.Text = id.no_of_emplyoee;
        lbl_login_email.Text = id.login_email;
        lbl_director_f_name.Text = id.director_f_name;
        lbl_director_l_name.Text = id.director_l_name;
        lbl_director_email.Text = id.director_email;
        lbl_director_phone.Text = id.director_telephone;
        lbl_exports_f_name.Text = id.export_f_name;
        lbl_exports_l_name.Text = id.export_l_name;
        lbl_exports_email.Text = id.export_email;
        lbl_exports_phone.Text = id.export_telephone;
        lbl_Imports_f_name.Text = id.import_f_name;
        lbl_Imports_l_name.Text = id.import_l_name;
        lbl_Imports_email.Text = id.import_email;
        lbl_Imports_phone.Text = id.import_telephone;
        lbl_about_us.Text = id.about_us;
        lbl_other_service.Text = id.other_service;
        lbl_member_plan.Text = id.member_plan;
        Image1.ImageUrl = id.image_logo;
        Rating1.CurrentRating = Convert.ToInt32(id.Rating);
        Rating2.CurrentRating = Convert.ToInt32(id.Rating2);
        Rating3.CurrentRating = Convert.ToInt32(id.Rating3);
        Rating4.CurrentRating = Convert.ToInt32(id.Rating4);
    }
    protected void link_edit_company_profile_Click(object sender, EventArgs e)
    {
        if (edit_direcotor_panel.Visible == true || edit_export_pro_panel.Visible == true || edit_import_pro_panel.Visible == true || edit_service_pro_panel.Visible == true || edit_about_panel.Visible == true || edit_change_password.Visible == true || edit_logo_panel.Visible == true || edit_member_plan_panel.Visible ==true)
        {
            Page.RegisterStartupScript("onload", "<script language='javascript'>alert('**Please Update Open Profile**')</script> ");
        }
        else
        {
            company_pro_panel.Visible = false;
            edit_comp_pro_panel.Visible = true;
            var id = (from a in linq_obj.user_registration_tbls
                      where a.intglcode == Convert.ToInt32(Session["id"])
                      select a).Single();
            txt_company_name.Text = id.company_name;
            txt_street_address.Text = id.street_address;
            txt_city.Text = id.city_name;
            ddl_country.SelectedValue = id.country_name.ToString();
            txt_website.Text = id.website;
            txt_telephone.Text = id.telephone;
            txt_fax.Text = id.fax;
            txt_date_of_foundation.Text = id.date_of_foundation;
            ddl_no_of_employee.SelectedItem.Text = id.no_of_employee;
        }
    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
        linq_obj.update_company_profile_mst(Convert.ToInt32(Session["id"]), txt_company_name.Text, txt_street_address.Text, txt_city.Text, Convert.ToInt32(ddl_country.SelectedValue), txt_website.Text, txt_telephone.Text, txt_fax.Text, txt_date_of_foundation.Text, ddl_no_of_employee.SelectedItem.Text);
        linq_obj.SubmitChanges();
        Response.Redirect("user_profile.aspx");

    }
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("user_profile.aspx");
    }
    protected void link_edit_director_Click(object sender, EventArgs e)
    {
        if (edit_comp_pro_panel.Visible == true || edit_export_pro_panel.Visible == true || edit_import_pro_panel.Visible == true || edit_service_pro_panel.Visible == true || edit_about_panel.Visible == true || edit_change_password.Visible == true || edit_logo_panel.Visible == true || edit_member_plan_panel.Visible == true)
        {
            Page.RegisterStartupScript("onload", "<script language='javascript'>alert('**Please Update Open Profile**')</script> ");
        }
        else
        {
            director_pro_panel.Visible = false;
            edit_direcotor_panel.Visible = true;
            var id = (from a in linq_obj.user_registration_tbls
                      where a.intglcode == Convert.ToInt32(Session["id"])
                      select a).Single();
            txt_director_f_name.Text = id.director_f_name;
            txt_director_l_name.Text = id.director_l_name;
            txt_director_email.Text = id.director_email;
            txt_director_phone.Text = id.director_phone;
        }
    }
    protected void btn_director_cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("user_profile.aspx");
    }
    protected void btn_director_update_Click(object sender, EventArgs e)
    {
        linq_obj.update_director_profile_mst(Convert.ToInt32(Session["id"]), txt_director_f_name.Text, txt_director_l_name.Text, txt_director_email.Text, txt_director_phone.Text);
        linq_obj.SubmitChanges();
        Response.Redirect("user_profile.aspx");
    }
    protected void link_edit_export_contact_Click(object sender, EventArgs e)
    {
        if (edit_comp_pro_panel.Visible == true || edit_direcotor_panel.Visible == true || edit_import_pro_panel.Visible == true || edit_service_pro_panel.Visible == true || edit_about_panel.Visible == true || edit_change_password.Visible == true || edit_logo_panel.Visible == true || edit_member_plan_panel.Visible == true)
        {
            Page.RegisterStartupScript("onload", "<script language='javascript'>alert('**Please Update Open Profile**')</script> ");
        }
        else
        {
            export_pro_panel.Visible = false;
            edit_export_pro_panel.Visible = true;
            var id = (from a in linq_obj.user_registration_tbls
                      where a.intglcode == Convert.ToInt32(Session["id"])
                      select a).Single();
            txt_eport_f_name.Text = id.export_f_name;
            txt_export_l_name.Text = id.export_l_name;
            txt_export_email.Text = id.export_email;
            txt_export_phone.Text = id.export_phone;
        }

    }
    protected void btn_export_cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("user_profile.aspx");
    }

    protected void btn_export_update_Click(object sender, EventArgs e)
    {
        linq_obj.update_export_profile_mst(Convert.ToInt32(Session["id"]), txt_eport_f_name.Text, txt_export_l_name.Text, txt_export_email.Text, txt_export_phone.Text);
        linq_obj.SubmitChanges();
        Response.Redirect("user_profile.aspx");
    }

    protected void btn_import_cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("user_profile.aspx");
    }
    protected void link_edit_imports_contact_Click(object sender, EventArgs e)
    {
        if (edit_comp_pro_panel.Visible == true || edit_direcotor_panel.Visible == true || edit_export_pro_panel.Visible == true || edit_service_pro_panel.Visible == true || edit_about_panel.Visible == true || edit_change_password.Visible == true || edit_logo_panel.Visible == true || edit_member_plan_panel.Visible == true)
        {
            Page.RegisterStartupScript("onload", "<script language='javascript'>alert('**Please Update Open Profile**')</script> ");
        }
        else
        {
            import_pro_panel.Visible = false;
            edit_import_pro_panel.Visible = true;
            var id = (from a in linq_obj.user_registration_tbls
                      where a.intglcode == Convert.ToInt32(Session["id"])
                      select a).Single();
            txt_import_f_name.Text = id.import_f_name;
            txt_import_l_name.Text = id.import_l_name;
            txt_import_email.Text = id.import_email;
            txt_import_phone.Text = id.import_phone;
        }
    }
    protected void btn_import_update_Click(object sender, EventArgs e)
    {
        linq_obj.update_import_profile_mst(Convert.ToInt32(Session["id"]), txt_import_f_name.Text, txt_import_l_name.Text, txt_import_email.Text, txt_import_phone.Text);
        linq_obj.SubmitChanges();
        import_pro_panel.Visible = true;
        edit_import_pro_panel.Visible = false;

    }
    protected void btn_service_cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("user_profile.aspx");
    }
    protected void link_edit_area_services_Click(object sender, EventArgs e)
    {
        if (edit_comp_pro_panel.Visible == true || edit_direcotor_panel.Visible == true || edit_export_pro_panel.Visible == true || edit_import_pro_panel.Visible == true || edit_about_panel.Visible == true || edit_change_password.Visible == true || edit_logo_panel.Visible == true || edit_member_plan_panel.Visible == true)
        {
            Page.RegisterStartupScript("onload", "<script language='javascript'>alert('**Please Update Open Profile**')</script> ");
        }
        else
        {
            service_pro_panel.Visible = false;
            edit_service_pro_panel.Visible = true;
            var id = (from a in linq_obj.user_registration_tbls
                      where a.intglcode == Convert.ToInt32(Session["id"])
                      select a).Single();
            string[] abc = id.area_of_services.Split(',');
            for (int i = 0; i < abc.Length; i++)
            {
                string xyz = abc[i].ToString();
                for (int j = 0; j < chk_edit_service.Items.Count; j++)
                {
                    if (chk_edit_service.Items[j].Value == xyz)
                    {
                        chk_edit_service.Items[j].Selected = true;
                    }
                }
            }
            txt_other_service.Text = id.other_service;
        }
    }
    protected void btn_service_update_Click(object sender, EventArgs e)
    {
        string service = "";
        for (int i = 0; i < chk_edit_service.Items.Count; i++)
        {
            if (chk_edit_service.Items[i].Selected)
            {
                if (service == "")
                {
                    service = chk_edit_service.Items[i].Value;
                }
                else
                {
                    service += "," + chk_edit_service.Items[i].Value;
                }
            }
        }
        linq_obj.update_services_mst(Convert.ToInt32(Session["id"]), service, txt_other_service.Text);
        linq_obj.SubmitChanges();
        Response.Redirect("user_profile.aspx");
    }
    protected void btn_about_cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("user_profile.aspx");
    }
    protected void link_edit_about_us_Click(object sender, EventArgs e)
    {
        if (edit_comp_pro_panel.Visible == true || edit_direcotor_panel.Visible == true || edit_export_pro_panel.Visible == true || edit_import_pro_panel.Visible == true || edit_service_pro_panel.Visible == true || edit_change_password.Visible == true || edit_logo_panel.Visible == true || edit_member_plan_panel.Visible == true)
        {
            Page.RegisterStartupScript("onload", "<script language='javascript'>alert('**Please Update Open Profile**')</script> ");
        }
        else
        {
            about_pro_panel.Visible = false;
            edit_about_panel.Visible = true;
            var id = (from a in linq_obj.user_registration_tbls
                      where a.intglcode == Convert.ToInt32(Session["id"])
                      select a).Single();
            txt_about_us.Text = id.about_us;
        }
    }
    protected void btn_about_update_Click(object sender, EventArgs e)
    {
        linq_obj.update_about_us_profile_mst(Convert.ToInt32(Session["id"]), txt_about_us.Text);
        linq_obj.SubmitChanges();
        Response.Redirect("user_profile.aspx");
    }
    protected void btn_password_cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("user_profile.aspx");
    }
    protected void link_change_password_Click(object sender, EventArgs e)
    {
        if (edit_comp_pro_panel.Visible == true || edit_direcotor_panel.Visible == true || edit_export_pro_panel.Visible == true || edit_import_pro_panel.Visible == true || edit_service_pro_panel.Visible == true || edit_about_panel.Visible == true || edit_logo_panel.Visible == true || edit_member_plan_panel.Visible == true)
        {
            Page.RegisterStartupScript("onload", "<script language='javascript'>alert('** Please Update Open Profile **')</script> ");
        }
        else
        {
            login_panel.Visible = false;
            edit_change_password.Visible = true;
        }
    }
    protected void btn_logo_cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("user_profile.aspx");
    }
    protected void link_change_logo_Click(object sender, EventArgs e)
    {
        if (edit_comp_pro_panel.Visible == true || edit_direcotor_panel.Visible == true || edit_export_pro_panel.Visible == true || edit_import_pro_panel.Visible == true || edit_service_pro_panel.Visible == true || edit_about_panel.Visible == true || edit_change_password.Visible == true || edit_member_plan_panel.Visible == true)
        {
            Page.RegisterStartupScript("onload", "<script language='javascript'>alert('**Please Update Open Profile**')</script> ");
        }
        else
        {
            logo_panel.Visible = false;
            edit_logo_panel.Visible = true;
        }
    }
    protected void btn_member_cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("user_profile.aspx");
    }
    protected void link_change_membership_Click(object sender, EventArgs e)
    {
        if (edit_comp_pro_panel.Visible == true || edit_direcotor_panel.Visible == true || edit_export_pro_panel.Visible == true || edit_import_pro_panel.Visible == true || edit_service_pro_panel.Visible == true || edit_about_panel.Visible == true || edit_change_password.Visible == true || edit_logo_panel.Visible == true)
        {
            Page.RegisterStartupScript("onload", "<script language='javascript'>alert('**Please Update Open Profile**')</script> ");
        }
        else
        {
            member_plan_panel.Visible = false;
            edit_member_plan_panel.Visible = true;

            var id = (from a in linq_obj.user_registration_tbls
                      where a.intglcode == Convert.ToInt32(Session["id"])
                      select a).Single();

            rdb_member_plan.SelectedValue = id.membership;
        }
    }
    protected void btn_member_update_Click(object sender, EventArgs e)
    {

        linq_obj.update_membership_plan_mst(Convert.ToInt32(Session["id"]), rdb_member_plan.SelectedItem.Text);
        linq_obj.SubmitChanges();
        Response.Redirect("user_profile.aspx");
    }
    protected void btn_logo_update_Click(object sender, EventArgs e)
    {
        var id = (from a in linq_obj.user_registration_tbls
                  where a.intglcode == Convert.ToInt32(Session["id"])
                  select a).Single();
        imagename2 = id.company_logo;

        if (FileUpload1.PostedFile.FileName != "")
        {
            FileUpload1.SaveAs(Request.PhysicalApplicationPath + "//upload//" + FileUpload1.FileName);
            imagename2 = FileUpload1.FileName;
        }

        linq_obj.update_logo_mst(Convert.ToInt32(Session["id"].ToString()), imagename2);
        linq_obj.SubmitChanges();

        Response.Redirect("user_profile.aspx");
        logo_panel.Visible = true;


    }
    protected void btn_password_update_Click(object sender, EventArgs e)
    {
        try
        {
            int flag = 0;
            var id = (from a in linq_obj.user_registration_tbls
                      select a).ToList();
            for (int i = 0; i < id.Count(); i++)
            {
                if (id[i].login_password == txt_old_password.Text)
                {
                    flag = 1;
                    id[i].login_password = txt_new_password.Text;
                    linq_obj.SubmitChanges();
                    //Session.Clear();
                    //Session.Abandon();
                    Response.Redirect("user_profile.aspx");
                    //break;
                }
            }
            if (flag == 0)
            {
                Page.RegisterStartupScript("onload", "<script language='javascript'>alert('**Please Enter Correct Old Password**')</script> ");
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
        }
    }

    protected void Rating1_Changed(object sender, AjaxControlToolkit.RatingEventArgs e)
    {
        this.Rating1.ReadOnly = true;
    }
    protected void Rating1_Changed2(object sender, AjaxControlToolkit.RatingEventArgs e)
    {
        this.Rating1.ReadOnly = true;
    }
    protected void Rating1_Changed3(object sender, AjaxControlToolkit.RatingEventArgs e)
    {
        this.Rating1.ReadOnly = true;
    }
    protected void Rating1_Changed4(object sender, AjaxControlToolkit.RatingEventArgs e)
    {
        this.Rating1.ReadOnly = true;
    }
}