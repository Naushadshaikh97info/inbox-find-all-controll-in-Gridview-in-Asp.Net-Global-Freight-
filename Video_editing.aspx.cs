using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Video_editing : System.Web.UI.Page
{
    DataClassesDataContext linq_obj = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;
        fill_video_editing();
    }
    private void fill_video_editing()
    {
        var id = (from a in linq_obj.cms_masters
                  where a.intglcode == 1
                  select a).Single();
        ltrl_video_editing.Text = id.video_editing_cms;
    }
}