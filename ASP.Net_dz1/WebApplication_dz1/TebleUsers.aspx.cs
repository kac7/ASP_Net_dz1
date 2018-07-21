using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_dz1
{
    public partial class TebleUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            foreach (User v in Singleton.Instance.Users)
            {
                TableRow row = new TableRow();
                row.Cells.Add(new TableCell { Text = v.Id.ToString()});
                row.Cells.Add(new TableCell { Text = v.Name.ToString() });
                row.Cells.Add(new TableCell { Text = v.Password.ToString() });
                row.Cells.Add(new TableCell { Text = v.RoleUser.Name });
                row.Cells.Add(new TableCell { Text = $"<a href=\"{"Edit.aspx?id=" + v.Id}\">Edit</a>" });
                row.Cells.Add(new TableCell { Text = $"<a href=\"{"Delete.ashx?id=" + v.Id}\">Delete</a>" });
                Table1.Rows.Add(row);
            }
            Return.NavigateUrl = $"Default.aspx";
        }
    }
}