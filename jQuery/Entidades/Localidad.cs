using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace jQuery.Entidades
{
    public class Localidad
    {
        public int Id { get; set; }
        public int Departamento_Id { get; set; }
        public string Nombre { get; set; }
    }
}