//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HomeworkClassSystem.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Departments
    {
        public int DepartmentId { get; set; }
        public int StudentId { get; set; }
        public string DepartmentName { get; set; }
        public string IsActive { get; set; }
    
        public virtual Students Students { get; set; }
    }
}
