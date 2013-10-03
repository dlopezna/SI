using System;
using System.Web.UI;
using System.Collections.Generic;
using LOBIncidencias;

namespace WebAdmin
{
    public partial class HistorialIncidencias : System.Web.UI.Page
    {
        protected List<Incidencia> _incidencias;
        protected void Page_Load(object sender, EventArgs e)
        {
            _incidencias = LOBIncidencias.IncidenciasManager.getIncidencias();


        }

        protected void cmdFiltrar_Click(object sender, EventArgs e)
        {
            
            Filtro _filtro=new Filtro();
            _filtro.texto = txtWords.Text;

            if (!txtCal1.Text.Equals(""))
                _filtro.desde = Convert.ToDateTime(txtCal1.Text);

             if (!txtCal2.Text.Equals(""))
                 _filtro.hasta = Convert.ToDateTime(txtCal2.Text);

           



            _incidencias = LOBIncidencias.IncidenciasManager.getIncidencias(_filtro);




        }
    }
}
