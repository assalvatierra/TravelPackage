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
    
    public partial class tpProducts
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tpProducts()
        {
            this.tpProductImages = new HashSet<tpProductImages>();
            this.tpProdCats = new HashSet<tpProdCat>();
            this.tpInqServices = new HashSet<tpInqServices>();
            this.tpProdRates = new HashSet<tpProdRate>();
            this.tpProductDescs = new HashSet<tpProductDesc>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
        public string ShortRemarks { get; set; }
        public string PageView { get; set; }
        public string PgFeatureImg { get; set; }
        public int Sort { get; set; }
        public int tpAreasId { get; set; }
    
        public virtual tpAreas tpArea { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tpProductImages> tpProductImages { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tpProdCat> tpProdCats { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tpInqServices> tpInqServices { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tpProdRate> tpProdRates { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tpProductDesc> tpProductDescs { get; set; }
    }
}
