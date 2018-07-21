using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication_dz1
{
    /// <summary>
    /// Summary description for Handler1
    /// </summary>
    public class Handler1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            int id;
            if (context.Request.QueryString["id"] != null && int.TryParse(context.Request.QueryString["id"].ToString(), out id))
            {
                var newUser = Singleton.Instance.Users.Find(user => user.Id == id);
                if (newUser != null)
                    Singleton.Instance.Users.Remove(newUser);
            }
            context.Response.Redirect("~/TebleUsers.aspx"); 
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}