using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAPI.Data
{
    public class Conexion
    {
        //public static string RutaConexion = "Data Source=.;Initial Catalog=rpmtecno;Integrated Security=True";
        public static string RutaConexion = "Server=tcp:rpm-tecno-server.database.windows.net,1433;Initial Catalog=rpm-tecno-db;Persist Security Info=False;User ID=rpm-admin;Password=LaMismaDeSiempre.1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
    }
}