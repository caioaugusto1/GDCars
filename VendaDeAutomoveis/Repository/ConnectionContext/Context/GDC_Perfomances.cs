//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace VendaDeAutomoveis.Repository.ConnectionContext.Context
{
    using System;
    using System.Collections.Generic;
    
    public partial class GDC_Perfomances
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public GDC_Perfomances()
        {
            this.GDC_Vendas = new HashSet<GDC_Vendas>();
        }
    
        public System.Guid Id { get; set; }
        public decimal ValorTotal { get; set; }
        public Nullable<System.Guid> IdRoda { get; set; }
        public Nullable<System.Guid> IdBanco { get; set; }
        public Nullable<System.Guid> IdCliente { get; set; }
        public Nullable<System.Guid> IdCor { get; set; }
    
        public virtual GDC_Bancos GDC_Bancos { get; set; }
        public virtual GDC_Clientes GDC_Clientes { get; set; }
        public virtual GDC_Cores_Externa GDC_Cores_Externa { get; set; }
        public virtual GDC_Rodas GDC_Rodas { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GDC_Vendas> GDC_Vendas { get; set; }
    }
}
