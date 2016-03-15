using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    DataClassesDataContext linq_obj = new DataClassesDataContext();
    static int flag = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        fill_events();
        fill_news();
        fill_member_logo();
        fill_home();
        if (IsPostBack)
            return;

        if (Session["id"] != null)
        {
            btn_logout_btn.Visible = true;
            btn_profile.Visible = true;
            btn_signup.Visible = false;
            btn_message.Visible = true;
            login_div.Visible = false;
            var id2 = (from a in linq_obj.sender_messages
                       where a.receiver_id == Convert.ToInt32(Session["id"].ToString()) && a.status == "true"
                       select a).ToList();
            lbl_msg.Text = Convert.ToString(id2.Count);
        }
        else
        {
            btn_profile.Visible = false;
            btn_logout_btn.Visible = false;
            btn_message.Visible = false;
            login_div.Visible = true;
        }
       
    }
    private void fill_events()
    {
        try
        {
            var id = (from a in linq_obj.event_masters
                      where a.status_event == "Active"
                      orderby a.intglcode descending
                      select new
                      {
                          code = a.intglcode,
                          date = a.date_event,
                          Title = a.title_event.Substring(0, 40)
                      }).ToList().Take(10);
            DataList1.DataSource = id;
            DataList1.DataBind();
        }
        catch (Exception)
        {
           
        }
    }
    private void fill_home()
    {
        var id = (from a in linq_obj.cms_masters
                  where a.intglcode == 1
                  select a).Single();
        ltrl_home.Text = id.home_cms;
    }
    private void fill_news()
    {
        var id = (from a in linq_obj.news_masters
                  orderby a.intglcode descending
                  where a.status_news == "Active"
                  select new
                  {
                      code = a.intglcode,
                      news_title = a.title_news.Substring(0,80),
                      image_news = "./upload/" + a.image_news
                  }).ToList().Take(10);
        datalist_news.DataSource = id;
        datalist_news.DataBind();
    }
    private void fill_member_logo()
    {
        var id = (from a in linq_obj.user_registration_tbls
                  orderby a.ratings, a.ratings2, a.ratings3, a.ratings4 descending
                  where a.membership == "Gold Membership (USD 250/Month)" && a.status=="Active"
                  select
                  new
                  {
                      code = a.intglcode,
                      logo_images = "./upload/" + a.company_logo,
                      company_name = a.company_name
                  }).ToList();
        rpt_member_logo.DataSource = id;
        rpt_member_logo.DataBind();
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        var id = (from a in linq_obj.user_registration_tbls
                  select a).ToList();
        for (int i = 0; i < id.Count; i++)
        {
            if (id[i].login_email == txt_username.Text && id[i].login_password == txt_password.Text && id[i].status == "Active")
            {
                flag = 1;
                Session["username"] = txt_username.Text;
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
                Page.RegisterStartupScript("onload", "<script language='javascript'>alert('**Incorect UserName or Password**')</script>");
            }
        }
        if (flag == 1)
        {
            Response.Redirect("user_profile.aspx");
        }
        {
            Page.RegisterStartupScript("onload", "<script language='javascript'>alert('**Your Account is Deactive by Admin Please Contact Customer Care**')</script>");
        }
    }
    protected void link_logout_Click(object sender, EventArgs e)
    {
        var id = (from a in linq_obj.user_registration_tbls
                  where a.intglcode == Convert.ToInt32(Session["id"])
                  select a).Single();
        if (id.online_status == "Active")
        {
            id.online_status = "Deactive";
            linq_obj.SubmitChanges();
        }
            Session["username"] = "";
            Session["id"] = "";
           
            Session.Clear();
            Session.Abandon();
            

            Response.Redirect("Default.aspx", false);

            btn_profile.Visible = false;
            btn_logout_btn.Visible = false;
            btn_message.Visible = false;
            login_div.Visible = true;
            btn_signup.Visible = true;
       
    }
    protected void btn_sumbit1_Click(object sender, EventArgs e)
    {
        var id = (from a in linq_obj.user_registration_tbls
                  where a.login_email == txt_email_id.Text
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
    protected void btn_profile_Click(object sender, EventArgs e)
    {
        Response.Redirect("user_profile.aspx");
    }
    protected void btn_signup_Click(object sender, EventArgs e)
    {
        Response.Redirect("purchase_membership.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try
        {
            LinkButton lnk = (LinkButton)sender;
            int code = Convert.ToInt32(lnk.CommandArgument.ToString());
            var id = (from a in linq_obj.event_masters
                      where a.intglcode == code
                      select a).Single();
            Response.Redirect("Event.aspx?id=" + code + "&&" + "id2=" + "#" + id.title_event);
        }
        catch (Exception ex)
        {
        }
    }
    protected void link_read_more_Click(object sender, EventArgs e)
    {
        try
        {
            LinkButton lnk = (LinkButton)sender;
            int code = Convert.ToInt32(lnk.CommandArgument.ToString());
            var id = (from a in linq_obj.event_masters
                      where a.intglcode == code
                      select a).Single();
            Response.Redirect("Event.aspx?id=" + code + "&&" + "id2=" + "#" + id.title_event);
        }
        catch (Exception ex)
        {
        }
    }
    protected void link_news_Click(object sender, EventArgs e)
    {
        try
        {
            LinkButton lnk = (LinkButton)sender;
            int code = Convert.ToInt32(lnk.CommandArgument.ToString());
            var id = (from a in linq_obj.news_masters
                      where a.intglcode == code
                      select a).Single();
            Response.Redirect("News.aspx?id=" + code + "&&" + "id2=" + "#" + id.title_news);
        }
        catch (Exception ex)
        {
        }
    }
    protected void btn_message_Click(object sender, EventArgs e)
    {
        Response.Redirect("Instant_message.aspx");
    }
    protected void link_read_news_Click(object sender, EventArgs e)
    {
        try
        {
            LinkButton lnk = (LinkButton)sender;
            int code = Convert.ToInt32(lnk.CommandArgument.ToString());
            var id = (from a in linq_obj.news_masters
                      where a.intglcode == code
                      select a).Single();
            Response.Redirect("News.aspx?id=" + code + "&&" + "id2=" + "#" + id.title_news);
        }
        catch (Exception ex)
        {
        }
    }
    protected void btn_benefit_Click(object sender, EventArgs e)
    {
        Response.Redirect("Benefits.aspx");
    }
    protected void btn_standard_plan_Click(object sender, EventArgs e)
    {
        Session["standard"] = "Standard Membership (USD 150/Month)";
        Response.Redirect("user_registration.aspx");
    }
    protected void btn_gold_plan_Click(object sender, EventArgs e)
    {
        Session["gold"] = "Gold Membership (USD 250/Month)";
        Response.Redirect("user_registration.aspx");
    }
    protected void btn_events_Click(object sender, EventArgs e)
    {
        Response.Redirect("Event.aspx");
    }
}