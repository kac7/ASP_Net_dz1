using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_dz1
{
    public partial class Edit : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null && int.TryParse(Request.QueryString["id"].ToString(), out id))
                {
                    var newUser = Singleton.Instance.Users.Find(user => user.Id == id);
                    if (newUser != null)
                    {
                        Login.Text = newUser.Name;
                        Password.Text = newUser.Password;
                        ListBoxRole.Text = newUser.RoleUser.Name;
                    }
                }
            }
        }
        protected void Edit_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null && int.TryParse(Request.QueryString["id"].ToString(), out id))
            {
                var newUser = Singleton.Instance.Users.Find(user => user.Id == id);
                if (newUser != null)
                {
                    newUser.Name = Login.Text;
                    newUser.Password = Password.Text;
                    newUser.RoleUser.Name = ListBoxRole.Text;
                }
            }
            Response.Redirect("~/TebleUsers.aspx");
        }
        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/TebleUsers.aspx");
        }
    }
}