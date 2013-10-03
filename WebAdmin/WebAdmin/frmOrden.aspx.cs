using System;
using LOBIncidencias;

namespace WebAdmin
{
    public partial class frmOrden : System.Web.UI.Page
    {
        protected OrdenTrabajo _ordenTrabajo ;
        protected void Page_Load(object sender, EventArgs e)
        {
            Int32 _idOrden = Convert.ToInt32(Request["id"]);
            _ordenTrabajo = OrdenTrabajoManager.getOrdenByID(_idOrden);

            if (!Page.IsPostBack)
            {
                lblFecha.Text = _ordenTrabajo.FechaInicio.ToShortDateString();
                lblFechaFinPrevista.Text = _ordenTrabajo.FechaFinalEstimada.ToShortDateString();
                lblOrden.Text = _ordenTrabajo.IdOrden.ToString();
                lblIdMotivo.Text = _ordenTrabajo.idMotivo.ToString();
                txtDescripcion.Text = _ordenTrabajo.Descripcion;
                txtObservaciones.Text = _ordenTrabajo.Observaciones;
                lblPLANTA.Text = _ordenTrabajo.PLANTA != null ? _ordenTrabajo.PLANTA : "";
                lblSEGUIDOR.Text = _ordenTrabajo.SEGUIDOR!=null?_ordenTrabajo.SEGUIDOR :"";
            }
        }

        protected void cmdFinalizar_Click(object sender, EventArgs e)
        {
            if (!txtFechaFinal.Text.Equals(""))
                _ordenTrabajo.FechaFinal = Convert.ToDateTime(txtFechaFinal.Text);

            _ordenTrabajo.IdUsuario = new Guid();
            _ordenTrabajo.Observaciones = txtObservaciones.Text;
            OrdenTrabajoManager.guardarOrden(_ordenTrabajo);
            Incidencia _inc = _ordenTrabajo.Incidencia;
            _inc.FechaCierre = _ordenTrabajo.FechaFinal;
            IncidenciasManager.guardarIncidencia(_inc);
            Response.Redirect("/Ordenes.aspx");
        }

        protected void cmdGuardar_Click(object sender, EventArgs e)
        {
            _ordenTrabajo.IdUsuario = new Guid();
            _ordenTrabajo.Observaciones = txtObservaciones.Text;
            OrdenTrabajoManager.guardarOrden(_ordenTrabajo);
            Response.Redirect("/Ordenes.aspx");
        }

        protected void cmdCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Ordenes.aspx");
        }

    }
}
