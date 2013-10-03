using System;
using System.Collections.Generic;
using System.Text;

namespace LOBIncidencias
{
    public static class OrdenManager
    {
        public static void Guardar(OrdenTrabajo _orden){
            if (siExiste(_orden))
            {  
            //TODO: Actualizar
            }
            else { 
            //TODO: Crear
            }
        
        }


        private static bool siExiste(OrdenTrabajo _orden) {
            return false;

        }


        public static List<OrdenTrabajo> getOrdenes() {
            throw new NotImplementedException();
        }
    }
}
