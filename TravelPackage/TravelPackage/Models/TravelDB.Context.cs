﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class TravelDBContainer : DbContext
    {
        public TravelDBContainer()
            : base("name=TravelDBContainer")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<tpAreas> tpAreas { get; set; }
        public virtual DbSet<tpProducts> tpProducts { get; set; }
        public virtual DbSet<tpProductImages> tpProductImages { get; set; }
        public virtual DbSet<tpInquiry> tpInquiries { get; set; }
        public virtual DbSet<tpProdCat> tpProdCats { get; set; }
        public virtual DbSet<tpCategory> tpCategories { get; set; }
        public virtual DbSet<tpInqServices> tpInqServices { get; set; }
        public virtual DbSet<tpProdRate> tpProdRates { get; set; }
        public virtual DbSet<tpUom> tpUoms { get; set; }
        public virtual DbSet<tpProductDesc> tpProductDescs { get; set; }
        public virtual DbSet<tpKeyword> tpKeywords { get; set; }
        public virtual DbSet<tpBacklink> tpBacklinks { get; set; }
    }
}
