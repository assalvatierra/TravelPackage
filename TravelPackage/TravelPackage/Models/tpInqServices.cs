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
    
    public partial class tpInqServices
    {
        public int Id { get; set; }
        public int tpInquiryId { get; set; }
        public int tpProductsId { get; set; }
        public string dtSvcStart { get; set; }
        public string Message { get; set; }
    
        public virtual tpProducts tpProduct { get; set; }
        public virtual tpInquiry tpInquiry { get; set; }
    }
}