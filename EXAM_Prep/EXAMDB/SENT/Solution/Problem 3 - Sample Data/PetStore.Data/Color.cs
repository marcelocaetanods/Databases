//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PetStore.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Color
    {
        public Color()
        {
            this.Pets = new HashSet<Pet>();
        }
    
        public int Id { get; set; }
        public string Black { get; set; }
        public string White { get; set; }
        public string Red { get; set; }
        public string Mixed { get; set; }
    
        public virtual ICollection<Pet> Pets { get; set; }
    }
}
