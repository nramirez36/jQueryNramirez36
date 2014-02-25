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
    public class Provincias
    {
         public static IEnumerable<Provincia> Listar()
        {
            Database odb = DatabaseFactory.CreateDatabase("jQuery");
            try
            {
                return odb.ExecuteSprocAccessor("ListarProvincias", MapBuilder<Provincia>.MapAllProperties().Build());
            }
            catch (Exception ex)
            {
                Console.WriteLine("Problemas Al Listar Los Departamentos: " + ex.Message);
                throw;
            }
        }
    }
}