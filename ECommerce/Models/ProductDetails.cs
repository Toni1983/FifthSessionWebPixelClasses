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
    
    public partial class ProductDetails
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ProductDetails()
        {
            this.Images = new HashSet<Images>();
        }
    
        public int ProductId { get; set; }
        public Nullable<int> WebId { get; set; }
        public Nullable<bool> IsAvailable { get; set; }
        public Nullable<bool> IsCondition { get; set; }
        public string Description { get; set; }
    
        public virtual Products Products { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Images> Images { get; set; }
    }
}
