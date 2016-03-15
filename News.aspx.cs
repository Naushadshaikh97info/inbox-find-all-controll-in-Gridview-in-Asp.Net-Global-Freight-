using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class News : System.Web.UI.Page
{
    DataClassesDataContext linq_obj = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;
        fill_news();
        fill_company_detail();
    }
    private void fill_news()
    {
        var id = (from a in linq_obj.news_masters
                  where a.status_news == "Active"
                  orderby a.intglcode descending
                  select new
                  {
                      code = a.intglcode,
                      news_image = "./upload/" + a.image_news,
                      title_news = a.title_news,
                      title_discription = a.discription_news.Substring(0,200),
                      title_discription_sub = a.discription_news.Remove(0, 200),
                      date = a.date_time_news.ToString(),
                     
                  }).ToList();
        DataList1.DataSource = id;
        DataList1.DataBind();
    }
    private void fill_company_detail()
    {
        var id = (from a in linq_obj.user_registration_tbls
                  where a.intglcode != 1 && a.status=="Active"
                  orderby a.ratings, a.ratings2, a.ratings3, a.ratings4 descending
                  select
                  new
                  {
                      code = a.intglcode,
                      company_logo = "./upload/" + a.company_logo,
                      company_name = a.company_name
                  }).ToList().Take(10);
        DataList2.DataSource = id;
        DataList2.DataBind();
    }
    protected void link_company_name_Click(object sender, EventArgs e)
    {
        try
        {
            LinkButton lnk = (LinkButton)sender;
            int code = Convert.ToInt32(lnk.CommandArgument.ToString());
            var id = (from a in linq_obj.user_registration_tbls
                      where a.intglcode == code
                      select a).Single();
            if (Session["username"] != null)
            {
                Response.Redirect("Member_directory.aspx?code=" + code + "&&" + "company Name =" + "#" + id.company_name);
            }
            else
            {
                Response.Redirect("Login_Form.aspx?id=" + code);
            }
        }
        catch (Exception ex)
        {
        }
    }
}