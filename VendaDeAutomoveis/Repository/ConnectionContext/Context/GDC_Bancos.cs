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
    
    public partial class GDC_Bancos
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public GDC_Bancos()
        {
            this.GDC_Perfomances = new HashSet<GDC_Perfomances>();
        }
    
        public string Id { get; set; }
        public string Modelo { get; set; }
        public bool Multimidia { get; set; }
        public string Cor { get; set; }
        public decimal Valor { get; set; }
        public string IdUpload { get; set; }
    
        public virtual GDC_Uploads GDC_Uploads { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GDC_Perfomances> GDC_Perfomances { get; set; }
    }
}
