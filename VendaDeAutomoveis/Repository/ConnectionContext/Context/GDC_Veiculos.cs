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
    
    public partial class GDC_Veiculos
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public GDC_Veiculos()
        {
            this.GDC_Vendas = new HashSet<GDC_Vendas>();
        }
    
        public System.Guid Id { get; set; }
        public string Fabricante { get; set; }
        public string Modelo { get; set; }
        public System.DateTime Ano { get; set; }
        public decimal Valor { get; set; }
        public string Tipo { get; set; }
        public Nullable<System.Guid> IdUpload { get; set; }
    
        public virtual GDC_Uploads GDC_Uploads { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GDC_Vendas> GDC_Vendas { get; set; }
    }
}
