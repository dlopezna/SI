using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Data;

namespace AuditServices
{
    public class AuditManager
    {
        public static void AñadirSuceso(DateTime fecha, string afectaA, Sucesos tipoSuceso)
        {
            try
            {

                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paAñadirSuceso");

                db.AddInParameter(cmd, "@fecha", DbType.DateTime, fecha);
                db.AddInParameter(cmd, "@afectado", DbType.String, afectaA);
                db.AddInParameter(cmd, "@suceso", DbType.String, tipoSuceso.ToString());
                

                db.ExecuteNonQuery(cmd);
            }

            catch (Exception ex)
            {

                throw ex;
            }
        }
    }

    public enum Sucesos
    {
        AltaIncidencia,
        BajaIncidencia,
        AltaTarea,
        BajaTarea,
        AccionMantenimiento,
        AccionSeguimiento,
        CrearComponente,
        ModificarComponente,
        BorrarComponente,
        AñadirAlerta, 
        ModificarAlerta, 
        BorrarAlerta,
        LogIn,
        LogOut,
        Excepcion,
        CrearUsuario,
        BorrarUsuario,
        Web
        
    }
}
