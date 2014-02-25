using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using jQuery.Entidades;
using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Common;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
namespace jQuery.Logica_de_Negocio
{
    public class Localidades
    {
        public static IEnumerable<Localidad> Listar(int pCodLocalidad)
        {
            Database odb = DatabaseFactory.CreateDatabase("jQuery");
            try
            {
                return odb.ExecuteSprocAccessor("ListarCiudades", MapBuilder<Localidad>.MapAllProperties().Build(), pCodLocalidad);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Problemas Al Listar Los Ciudad: " + ex.Message);
                throw;
            }
        }
    }
}