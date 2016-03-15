using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class logo_download : System.Web.UI.Page
{
    DataClassesDataContext linq_obj = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;
        fill_image();
    }
    protected void link_logo_Click(object sender, EventArgs e)
    {
        //LinkButton lnk = (LinkButton)sender;
        //int code = Convert.ToInt32(lnk.CommandArgument.ToString());
        var id = (from a in linq_obj.image_msts
                  where a.intglcode ==  1
                  select a).Single();
        ScriptManager.RegisterStartupScript(this, GetType(), "onload", "alert('**  Your Password is Successfully Send to Your Email**')", true);
        Response.AddHeader("Content-Disposition", "attachment;filename=\"" + id.fhoto + "\"");
        Response.TransmitFile(Server.MapPath("~/upload/" + id.fhoto));
        Response.End();
    }
    private void fill_image()
    {
        var id = (from a in linq_obj.image_msts
                  select new
                  {
                      code = a.intglcode,
                      image = "./upload/" + a.fhoto
                  }).Single();
        Image1.ImageUrl = id.image;
    }
}