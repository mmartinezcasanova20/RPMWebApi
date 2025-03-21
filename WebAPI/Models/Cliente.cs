using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAPI.Models
{
    public class Cliente
    {
        public int CI { get; set; }
        public string? RUT { get; set; }
        public string? RazonSocial { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Telefono { get; set; }
        public string Mail { get; set; }
        

    }
}