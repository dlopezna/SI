using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using LOBIncidencias;
using System.Collections.Generic;
using AuditServices;

namespace WebAdmin
{
    public partial class Ordenes : System.Web.UI.Page
    {
        public int a = 100;
        protected List<OrdenTrabajo> _ordenesAbiertas, _ordenesCerradas;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                _ordenesAbiertas = OrdenTrabajoManager.getOrdenesTrabajo();
                _ordenesCerradas = OrdenTrabajoManager.getOrdenesTrabajoCerradas();
            }
            catch (Exception ex)
            {
                AuditManager.AñadirSuceso(DateTime.Now, ex.Message, Sucesos.Web);
            }
           


        }

        protected void CargarOrden(object sender, EventArgs e)
        {
            /*Int32 _orden;
            switch (((ListView)sender).ID)
            {
            case "lvOrdenesA":
                     _orden = Convert.ToInt32(((LinkButton)lvOrdenesA.Items[lvOrdenesA.SelectedIndex].FindControl("lnkIdOrden")).Text);
                    break;
                case "lvOrdenesC":
                    _orden = Convert.ToInt32(((LinkButton)lvOrdenesC.Items[lvOrdenesC.SelectedIndex].FindControl("lnkIdOrden")).Text);
                    break;
                default:
                    break;
            }
            
            OrdenTrabajo _ordenSel = OrdenTrabajoManager.getOrdenByID(_orden);
            if (_ordenSel != null)
                Session["orden"] = _ordenSel;*/

        }
    }
}
