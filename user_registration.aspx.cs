using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_registration : System.Web.UI.Page
{
    DataClassesDataContext linq_obj = new DataClassesDataContext();
    static string imagename3;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;
        fill_country();
        if (Session["standard"] != null)
        {
            rdb_member_plan.SelectedIndex = 0;
        }
        if (Session["gold"] != null)
        {
            rdb_member_plan.SelectedIndex = 1;
        }
        fill_sinup();
    }
    private void fill_sinup()
    {
        var id = (from a in linq_obj.cms_masters
                  where a.intglcode == 1
                  select a).Single();
        ltrl_aboutus.Text = id.sign_up_cms;
    }
    private void fill_country()
    {
        var id = (from a in linq_obj.Country_masters
                  select a).ToList();
        ddl_country.DataSource = id;
        ddl_country.DataBind();
        ddl_country.Items.Insert(0, "--Select Country--");
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {

        var id = (from a in linq_obj.user_registration_tbls
                  where a.login_email == txt_login_email.Text
                  select a).ToList();
        string service = "";
        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                if (service == "")
                {
                    service = CheckBoxList1.Items[i].Value;
                }
                else
                {
                    service += "," + CheckBoxList1.Items[i].Value;
                }
            }
        }
        if (FileUpload1.PostedFile.FileName != "" && id.Count() == 0)
        {
            FileUpload1.SaveAs(Request.PhysicalApplicationPath + "/upload/" + FileUpload1.FileName);
            linq_obj.insert_user_registration_mst(txt_company_name.Text, txt_street_address.Text, txt_city.Text, Convert.ToInt32(ddl_country.SelectedValue), txt_website.Text, txt_telephone.Text, txt_fax.Text, txt_date_of_foundation.Text, ddl_no_of_employee.SelectedItem.Text, txt_login_email.Text, txt_password.Text, txt_director_f_name.Text, txt_director_l_name.Text, txt_email.Text, txt_director_phone.Text, txt_export_f_name.Text, txt_export_l_name.Text, txt_export_email.Text, txt_export_phone.Text, txt_import_f_name.Text, txt_import_l_name.Text, txt_import_email.Text, txt_import_phone.Text, service, txt_other.Text, txt_about_us.Text, FileUpload1.FileName, rdb_member_plan.SelectedItem.Text, "Deactive", "Deactive", "Accept", Convert.ToDateTime(System.DateTime.Now.ToString()), 0, 0, 0, 0);
            linq_obj.SubmitChanges();
            Session["standard"] = "";
            Session["gold"] = "";
            ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('** You are Successfully Registration **');window.location='user_registration.aspx';</script>'");
            
           

        }
        else if (FileUpload1.PostedFile.FileName == "" && id.Count() == 0)
        {
            imagename3 = "noimage.jpg";
            linq_obj.insert_user_registration_mst(txt_company_name.Text, txt_street_address.Text, txt_city.Text, Convert.ToInt32(ddl_country.SelectedValue), txt_website.Text, txt_telephone.Text, txt_fax.Text, txt_date_of_foundation.Text, ddl_no_of_employee.SelectedItem.Text, txt_login_email.Text, txt_password.Text, txt_director_f_name.Text, txt_director_l_name.Text, txt_email.Text, txt_director_phone.Text, txt_export_f_name.Text, txt_export_l_name.Text, txt_export_email.Text, txt_export_phone.Text, txt_import_f_name.Text, txt_import_l_name.Text, txt_import_email.Text, txt_import_phone.Text, service, txt_other.Text, txt_about_us.Text, imagename3, rdb_member_plan.SelectedItem.Text, "Deactive", "Deactive", "Accept", Convert.ToDateTime(System.DateTime.Now.ToString()), 0, 0, 0, 0);
            linq_obj.SubmitChanges();
            Session["standard"] = "";
            Session["gold"] = "";
            ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('** You are Successfully Registration **');window.location='user_registration.aspx';</script>'");
           
        }
        else
        {
            Page.RegisterStartupScript("onload", "<script language='javascript'>alert('** User Name Alredy Exist Please Enter diffrent Userid **')</script> ");
        }

    }
}