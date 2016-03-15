using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class purchase_membership : System.Web.UI.Page
{
    DataClassesDataContext linq_obj = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;
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
}