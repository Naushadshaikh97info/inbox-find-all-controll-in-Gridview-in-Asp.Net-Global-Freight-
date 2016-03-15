using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_form : System.Web.UI.Page
{
    DataClassesDataContext linq_obj = new DataClassesDataContext();
    static int flag = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (IsPostBack)
            return;
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {

        var id = (from a in linq_obj.user_registration_tbls
                  select a).ToList();
        for (int i = 0; i < id.Count; i++)
        {
            if (id[i].login_email == txt_email_id_1.Text && id[i].login_password == txt_password.Text && id[i].status == "Active")
            {
                flag = 1;
                Session["username"] = txt_email_id_1.Text;
                Session["id"] = id[i].intglcode;
                if (id[i].online_status == "Deactive")
                {
                    id[i].online_status = "Active";
                    linq_obj.SubmitChanges();
                }
               
                break;
            }
            else
            {
                Page.RegisterStartupScript("onload", "<script language='javascript'>alert('**Your Account is Deactive by Admin Please Contact Customer Care**')</script>");
            }
        }
        if (flag == 1)
        {
            if (Request.QueryString["id"] != null)
            {
                Response.Redirect("Member_directory.aspx?code=" + Request.QueryString["id"].ToString());
            }
            else
            {
                Response.Redirect("user_profile.aspx");
            }
        }
        else
        {
            Page.RegisterStartupScript("onload", "<script language='javascript'>alert('**Incorect UserName or Password**')</script>");
        }
    }
    protected void btn_signup_Click(object sender, EventArgs e)
    {
        Response.Redirect("purchase_membership.aspx");
    }
    protected void btn_sumbit_Click(object sender, EventArgs e)
    {
        var id = (from a in linq_obj.user_registration_tbls
                  where a.login_email == txt_email_id_1.Text
                  select a).ToList();
        if (id.Count() == 1)
        {
            try
            {
                SmtpClient smtpclient;
                MailMessage message;
                string str23 = "Username is: " + id[0].login_email + " and Password is: " + id[0].login_password;
                smtpclient = new SmtpClient();
                message = new MailMessage();
                try
                {
                    message.From = new MailAddress("vishalppatel302@gmail.com");
                    message.To.Add(id[0].login_email);  //send email to yahoo
                    message.Subject = "Forgot Password";
                    message.Body = str23;
                    smtpclient.Host = "smtp.gmail.com";
                    smtpclient.EnableSsl = true;
                    smtpclient.UseDefaultCredentials = true;
                    System.Net.NetworkCredential network = new System.Net.NetworkCredential();
                    network.UserName = "vishalppatel302@gmail.com"; // moksha mail
                    network.Password = "9904991304"; //password
                    smtpclient.UseDefaultCredentials = true;
                    smtpclient.Credentials = network;
                    smtpclient.Port = 25;
                    smtpclient.Send(message);
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
                ScriptManager.RegisterStartupScript(this, GetType(), "onload", "alert('**  Your Password is Successfully Send to Your Email**')", true);
            }
            catch (Exception ex)
            {


            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "onload", "alert('**  Enter Your right Email**')", true);
        }
    }
}