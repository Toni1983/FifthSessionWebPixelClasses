//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MVCscaffolding.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Users
    {
        public int UserId { get; set; }
        public string UserName { get; set; }
        public string EmailAddress { get; set; }
        public string Password { get; set; }
        public Nullable<System.DateTime> Registerdate { get; set; }
        public Nullable<bool> IsActive { get; set; }
    }
}
