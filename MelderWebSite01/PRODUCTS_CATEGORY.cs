//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MelderWebSite01
{
    using System;
    using System.Collections.Generic;
    
    public partial class PRODUCTS_CATEGORY
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PRODUCTS_CATEGORY()
        {
            this.PRODUCTS = new HashSet<PRODUCTS>();
        }
    
        public int CATEGORY_ID { get; set; }
        public string URL_CATEGURY_NAME { get; set; }
        public string USUAL_CATEGORY_NAME { get; set; }
        public string CATEGORY_DESCRIPTION { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PRODUCTS> PRODUCTS { get; set; }
    }
}
