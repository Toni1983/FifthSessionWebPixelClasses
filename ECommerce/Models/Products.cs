//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ECommerce.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Products
    {
        public int ProductId { get; set; }
        public byte BrandId { get; set; }
        public byte CategoryId { get; set; }
        public string Name { get; set; }
        public Nullable<double> Price { get; set; }
        public string ImageURL { get; set; }
        public Nullable<bool> IsNew { get; set; }
        public Nullable<bool> Sold { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public Nullable<System.DateTime> RegisterDate { get; set; }
    
        public virtual Brands Brands { get; set; }
        public virtual Categories Categories { get; set; }
        public virtual ProductDetails ProductDetails { get; set; }
    }
}
