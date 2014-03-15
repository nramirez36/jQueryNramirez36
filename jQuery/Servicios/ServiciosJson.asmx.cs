using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using jQuery.Entidades;
using jQuery.Logica_de_Negocio;
using System.Web.Script.Services;
namespace jQuery.Servicios
{
    /// <summary>
    /// Descripción breve de ServiciosJson
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    [System.Web.Script.Services.ScriptService]
    public class ServiciosJson : System.Web.Services.WebService
    {

        [WebMethod]
        public List<Categoria> GetCategorias(int value, string text)
        {
            List<Categoria> lstCategorias = new List<Categoria>()
            {
                new Categoria{Codigo="1", Descripcion="CategoriaA"},
                new Categoria{Codigo="2",Descripcion="CategoriaB"}
            };
            return lstCategorias;
        }

        [WebMethod]
        public List<Provincia> GetProvincias()
        {
            List<Provincia> lstProvincias = Provincias.Listar().ToList();
            return lstProvincias;
        }
        [WebMethod]
        public List<Departamento> GetDepartamentos(int codProvincia)
        {
            List<Departamento> lstDepartamento = Departamentos.Listar(codProvincia).ToList();
            return lstDepartamento;
        }
        [WebMethod]
        public List<Localidad> GetLocalidades(int codDepartamento)
        {
            List<Localidad> lstLocalidad = Localidades.Listar(codDepartamento).ToList();
            return lstLocalidad;
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public string[] GetNombreLocalidades(string prefix)
        {
            List<string> elements = new List<string>();
            List<Localidad> lstLocalidades = Localidades.ListarNombre(prefix).ToList();
            foreach (var item in lstLocalidades)
            {
                elements.Add(item.Nombre);
            }
            var res = from dato in elements
                      where dato.ToUpper().Contains(prefix.ToUpper())
                      select dato;
            return res.ToArray();
        }
        [WebMethod]
        public List<Localidad> GetNombreLocalidad(string prefix)
        {
            var loc = Localidades.ListarNombre("").ToList();
            var nom = loc.Where(m => m.Nombre.ToLower().StartsWith(prefix.ToLower()));
            return nom.ToList();
        }
    }
}
