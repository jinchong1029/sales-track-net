﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication1.DB
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class CompatibilityEntities : DbContext
    {
        public CompatibilityEntities()
            : base("name=CompatibilityEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Admin> Admins { get; set; }
        public virtual DbSet<ASMLSchema> ASMLSchemas { get; set; }
        public virtual DbSet<Customer> Customers { get; set; }
        public virtual DbSet<Device> Devices { get; set; }
        public virtual DbSet<FAB> FABs { get; set; }
        public virtual DbSet<Feature> Features { get; set; }
        public virtual DbSet<Layer> Layers { get; set; }
        public virtual DbSet<Node> Nodes { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<ProductCategory> ProductCategories { get; set; }
        public virtual DbSet<ProductFeature> ProductFeatures { get; set; }
        public virtual DbSet<ProductLayer> ProductLayers { get; set; }
        public virtual DbSet<ProductSchema> ProductSchemas { get; set; }
        public virtual DbSet<SchemaVersion> SchemaVersions { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<Tasted> Tasteds { get; set; }
        public virtual DbSet<TestedProduct> TestedProducts { get; set; }
    }
}
