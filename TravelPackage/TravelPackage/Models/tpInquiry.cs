//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TravelPackage.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tpInquiry
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tpInquiry()
        {
            this.tpInqServices = new HashSet<tpInqServices>();
        }
    
        public int Id { get; set; }
        public System.DateTime dtInquiry { get; set; }
        public string LeadGuest { get; set; }
        public string ContactNo { get; set; }
        public string Email { get; set; }
        public int NoOfChild { get; set; }
        public int NoOfAdult { get; set; }
        public string Status { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tpInqServices> tpInqServices { get; set; }
    }
}
