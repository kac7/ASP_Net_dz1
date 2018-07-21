using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication_dz1
{
    public class User
    {
        public Role RoleUser;
        public int Id { get; set; }
        public string Name { get; set; }
        public string Password { get; set; }

        public User(int id, string name, string pass, string roleUser)
        {
            Id = id;
            Name = name;
            Password = pass;
            RoleUser = new Role(roleUser); 
        }
    }
}