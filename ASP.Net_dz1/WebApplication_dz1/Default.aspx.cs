using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_dz1
{
    public partial class Default : System.Web.UI.Page
    {
        Singleton instance = Singleton.Instance;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            HyperLink1.NavigateUrl = $"TebleUsers.aspx";
        }
        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            instance.Users.Add( new User(instance.id, Login.Text, Password.Text, ListBoxRole.SelectedItem.Text));
            Password.Text = ""; 
            Login.Text = "";
            instance.id++;
        }
    }
}