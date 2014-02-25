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
    public class Departamentos
    {
        public static IEnumerable<Departamento> Listar(int pCodProvincia)
        {
            Database odb = DatabaseFactory.CreateDatabase("jQuery");
            try
            {
                return odb.ExecuteSprocAccessor("ListarDepartamentos", MapBuilder<Departamento>.MapAllProperties().Build(), pCodProvincia);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Problemas Al Listar Los Departamentos: " + ex.Message);
                throw;
            }
        }
    }
}