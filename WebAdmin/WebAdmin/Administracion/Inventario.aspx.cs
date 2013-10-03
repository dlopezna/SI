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
using System.Linq;

using LOBIncidencias;
using System.Collections.Generic;
using System.Web.Services;

namespace WebAdmin
{
    public partial class Inventario : System.Web.UI.Page
    {
        protected Planta _planta;
        protected Inversor _inversor;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
               _planta = (Planta)ComponentFactory.getComponent("planta","C1-01-01");
            }

        }

        private void AltaComponente() {
            /*try
            {
                int i = 0;
                switch (i)
                {
                    case 0://Planta
                        LOBIncidencias.Planta cmp4 = (LOBIncidencias.Planta)ComponentFactory.createComponent("Planta");
                        cmp4.NSerie = this.NseriePlanta.Text.ToString().ToUpper();
                        cmp4.CIF = this.txtCif.Text;
                        cmp4.Telefono = this.txtTlf.Text;
                        cmp4.Descripcion = this.DescPlanta.Text;
                        cmp4.E_total = Decimal.Parse(txtEtotal.Text);
                        cmp4.CrearComponente();
                        break;
                    case 1://Inversor
                        Inversor cmp = (Inversor)ComponentFactory.createComponent("inversor");
                        cmp.NSerie = this.txtNSerieInversor.Text.ToString().ToUpper();
                        cmp.Potencia = Decimal.Parse(this.txtPotencia.Text.ToString());
                        cmp.FechaAlta = DateTime.Now;
                        cmp.EnlaceSunny = txtEnlaceSunny.Text;
                        cmp.ComponentePadre = cbPlantas.SelectedValue;
                        cmp.CrearComponente();
                        break;
                    case 2://String
                        LOBIncidencias.String cmp1 = (LOBIncidencias.String)ComponentFactory.createComponent("string");
                        cmp1.NSerie = this.NserieString.Text.ToString().ToUpper();
                        cmp1.Descripcion = this.DescString.Text;
                        cmp1.FechaAlta = DateTime.Now;
                        cmp1.ComponentePadre = cbInversores.SelectedValue;
                        cmp1.Canales[0] = canal1.Checked;
                        cmp1.Canales[1] = canal2.Checked;
                        cmp1.Canales[2] = canal3.Checked;
                        cmp1.Canales[3] = canal4.Checked;
                        cmp1.Canales[4] = canal5.Checked;
                        cmp1.Canales[5] = canal6.Checked;
                        cmp1.Canales[6] = canal7.Checked;
                        cmp1.Canales[7] = canal8.Checked;
                        cmp1.Canales[8] = canal9.Checked;
                        cmp1.Canales[9] = canal10.Checked;
                        cmp1.Canales[10] = canal11.Checked;
                        cmp1.Canales[11] = canal12.Checked;
                        cmp1.Canales[12] = canal13.Checked;
                        cmp1.Canales[13] = canal14.Checked;
                        cmp1.Canales[14] = canal15.Checked;
                        cmp1.Canales[15] = canal16.Checked;
                        cmp1.CrearComponente();
                        break;
                    case 3://Seguidor
                        LOBIncidencias.Seguidor cmp2 = (LOBIncidencias.Seguidor)ComponentFactory.createComponent("seguidor");
                        cmp2.ComponentePadre = cbStrings.SelectedValue;
                        cmp2.NSerie = this.NserieSeguidor.Text.ToString().ToUpper();
                        cmp2.Descripcion = this.DescSeguidor.Text;
                        cmp2.FechaAlta = DateTime.Now;
                        cmp2.CrearComponente();
                        break;
                    case 4://Panel
                        LOBIncidencias.Panel cmp3 = (LOBIncidencias.Panel)ComponentFactory.createComponent("panel");
                        cmp3.ComponentePadre = cbSeguidores.SelectedValue;
                        cmp3.NSerie = this.NseriePanel.Text.ToString().ToUpper();
                        cmp3.Descripcion = this.DescPanel.Text;
                        cmp3.Pmax = Decimal.Parse(this.txtPmax.Text);
                        cmp3.Ipm = Decimal.Parse(this.txtIpm.Text);
                        cmp3.FechaAlta = DateTime.Now;
                        cmp3.CrearComponente();
                        break;


                }
            }
            catch (Exception ex)
            {

                lblError.Text = ex.Message;
            }
            finally {

                //Paneles.DataBind();
            
            }
          
        
        */
        
        
        }

        protected void loadComponente(int tipo, string _nserie) {
            /*try
            {
               //int i = tipo;
                //string _nserie = "";
                switch (tipo)
                {

                    case 0:
                        Planta cmp = (Planta)ComponentFactory.getComponent("planta",_nserie);
                        this.NseriePlanta.Text = cmp.NSerie;
                        this.NseriePlanta.ReadOnly = true;
                        this.txtEtotal.Text = cmp.E_total.ToString() ;
                        this.DescPlanta.Text = cmp.Descripcion;
                        this.txtTlf.Text = cmp.Telefono.Trim(); ;
                        this.txtCif.Text = cmp.CIF.Trim(); ;
                        Inversor _inv = cmp.Inversores[0] as Inversor;
                        loadComponente(1, _inv.NSerie.Trim());
                        break;
                    case 1:
                        try
                        {
                            Inversor cmp1 = (Inversor)ComponentFactory.getComponent("inversor", _nserie);
                            this.txtNSerieInversor.Text = cmp1.NSerie;
                            this.txtNSerieInversor.ReadOnly = true;
                            this.txtPotencia.Text = cmp1.Potencia.ToString();
                            this.txtEnlaceSunny.Text = cmp1.EnlaceSunny;
                            if (!cmp1.ComponentePadre.Equals("") && ComponentFactory.getComponent("planta", cmp1.ComponentePadre) != null)
                                this.cbPlantas.SelectedValue = cmp1.ComponentePadre;
                            else
                                throw new ArgumentOutOfRangeException("El componente padre asociado no existe");
                        }
                        catch (Exception)
                        {
                            cbPlantas.Items.Add("Selecciona un componente");
                            cbPlantas.SelectedValue = "Selecciona un componente";
                        }
                        break;
                    case 2:
                        try
                        {
                            LOBIncidencias.String cmp2 = (LOBIncidencias.String)ComponentFactory.getComponent("string",_nserie);
                            this.NserieString.Text = cmp2.NSerie;
                            this.NserieString.ReadOnly = true;
                            this.DescString.Text = cmp2.Descripcion;
                            this.canal1.Checked = cmp2.Canales[0];
                            this.canal2.Checked = cmp2.Canales[1];
                            this.canal3.Checked = cmp2.Canales[2];
                            this.canal4.Checked = cmp2.Canales[3];
                            this.canal5.Checked = cmp2.Canales[4];
                            this.canal6.Checked = cmp2.Canales[5];
                            this.canal7.Checked = cmp2.Canales[6];
                            this.canal8.Checked = cmp2.Canales[7];
                            this.canal9.Checked = cmp2.Canales[8];
                            this.canal10.Checked = cmp2.Canales[9];
                            this.canal11.Checked = cmp2.Canales[10];
                            this.canal12.Checked = cmp2.Canales[11];
                            this.canal13.Checked = cmp2.Canales[12];
                            this.canal14.Checked = cmp2.Canales[13];
                            this.canal15.Checked = cmp2.Canales[14];
                            this.canal16.Checked = cmp2.Canales[15];

                            if (!cmp2.ComponentePadre.Equals("") && ComponentFactory.getComponent("inversor", cmp2.ComponentePadre) != null)
                                this.cbInversores.SelectedValue = cmp2.ComponentePadre;
                            else
                                throw new ArgumentOutOfRangeException("El componente padre asociado no existe");
                        }
                        catch (Exception)
                        {
                            cbInversores.Items.Add("Selecciona un componente");
                            cbInversores.SelectedValue = "Selecciona un componente";
                        }
                        break;
                    case 3:
                        try
                        {
                            Seguidor cmp3 = (Seguidor)ComponentFactory.getComponent("seguidor", _nserie);
                            this.NserieSeguidor.Text = cmp3.NSerie;
                            this.NserieSeguidor.ReadOnly = true;
                            this.DescSeguidor.Text = cmp3.Descripcion;
                            if (!cmp3.ComponentePadre.Equals("") && ComponentFactory.getComponent("string", cmp3.ComponentePadre) != null)
                                this.cbStrings.SelectedValue = cmp3.ComponentePadre;
                            else
                                throw new ArgumentOutOfRangeException("El componente padre asociado no existe");
                        }
                        catch (Exception)
                        {
                            cbStrings.Items.Add("Selecciona un componente");
                            cbStrings.SelectedValue = "Selecciona un componente";
                        }
                        break;
                    case 4:
                        try
                        {
                            LOBIncidencias.Panel cmp4 = (LOBIncidencias.Panel)ComponentFactory.getComponent("panel", _nserie);
                            this.NseriePanel.Text = cmp4.NSerie;
                            this.NseriePanel.ReadOnly = true;
                            this.txtIpm.Text = cmp4.Ipm.ToString();
                            this.txtPmax.Text = cmp4.Pmax.ToString();
                            this.DescPanel.Text = cmp4.Descripcion;
                            if (!cmp4.ComponentePadre.Equals("") && ComponentFactory.getComponent("seguidor", cmp4.ComponentePadre) != null)
                                this.cbSeguidores.SelectedValue = cmp4.ComponentePadre;
                            else
                                throw new ArgumentOutOfRangeException("El componente padre asociado no existe");
                        }
                        catch (Exception)
                        {
                            cbSeguidores.Items.Add("Selecciona un componente");
                            cbSeguidores.SelectedValue = "Selecciona un componente";
                        }
                        break;
                }

            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
             * */
        }

        protected void EliminarComponente(object sender, EventArgs e)
        {
           /* try
            {
                int i = 0;
                Componente cmp = null;
                switch (0)
                {
                    case 0:
                        cmp = ComponentFactory.getComponent("planta", NseriePlanta.Text);
                        break;
                    case 1:
                        cmp = ComponentFactory.getComponent("inversor", txtNSerieInversor.Text);
            
                        break;
                    case 2:
                     cmp = ComponentFactory.getComponent("string", NserieString.Text);
                        break;
                    case 3:
                       cmp= ComponentFactory.getComponent("seguidor",NserieSeguidor.Text);
                        break;
                    case 4:
                        cmp = ComponentFactory.getComponent("panel", NseriePanel.Text);
                        break;
                }
                cmp.EliminarComponente(cmp.NSerie);
                
            }
            catch (Exception ex)
            {

                lblError.Text = ex.Message;
            }
            finally
            {

                //Paneles.DataBind();

            }*/
        }

        protected void BajaComponente(object sender, EventArgs e) {
           /* try
            {
                int i = 0;
                Componente cmp = null;
                switch (i)
                {
                    case 0:
                        cmp = ComponentFactory.getComponent("planta", NseriePlanta.Text);
                        break;
                    case 1:
                        cmp = ComponentFactory.getComponent("inversor", txtNSerieInversor.Text);

                        break;
                    case 2:
                        cmp = ComponentFactory.getComponent("string", NserieString.Text);
                        break;
                    case 3:
                        cmp = ComponentFactory.getComponent("seguidor", NserieSeguidor.Text);
                        break;
                    case 4:
                        cmp = ComponentFactory.getComponent("panel", NseriePanel.Text);
                        break;
                }
                cmp.FechaBaja = DateTime.Now;
                cmp.ActualizarComponente(TipoActualizacion.Baja);

            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
            finally
            {

                //Paneles.DataBind();

            }*/
        
        }

        protected void UpdateComponente(object sender, EventArgs e)
        {
            /*int i = 0;
            try
            {
                switch (i)
                {
                    case 0://Planta
                       
                            LOBIncidencias.Planta cmp4 = (LOBIncidencias.Planta)ComponentFactory.getComponent("planta", NseriePlanta.Text);
                        if (cmp4!=null)
                        {
                            cmp4.Telefono = this.txtTlf.Text;
                            cmp4.CIF = this.txtCif.Text;
                            cmp4.Descripcion = this.DescPlanta.Text;
                            cmp4.E_total = decimal.Parse(this.txtEtotal.Text);
                            cmp4.ActualizarComponente(TipoActualizacion.Mantenimiento);
                        }else{
                            AltaComponente();
                        }
                        break;
                    case 1://Inversor
                 
                        Inversor cmp = (Inversor)ComponentFactory.getComponent("inversor", txtNSerieInversor.Text);
                        if (cmp != null)
                        {
                            cmp.Potencia = Decimal.Parse(this.txtPotencia.Text.ToString());
                            cmp.EnlaceSunny = txtEnlaceSunny.Text;
                            cmp.ComponentePadre = cbPlantas.SelectedValue;
                            cmp.ActualizarComponente(TipoActualizacion.Mantenimiento);
                        }
                        else
                        {
                            AltaComponente();
                        }
                        break;
                    case 2://String
                        LOBIncidencias.String cmp1 = (LOBIncidencias.String)ComponentFactory.getComponent("string", NserieString.Text);
                        if (cmp1 != null)
                        {
                            cmp1.Descripcion = this.DescString.Text;
                            cmp1.ComponentePadre = cbInversores.SelectedValue;
                            cmp1.Canales[0] = canal1.Checked;
                            cmp1.Canales[1] = canal2.Checked;
                            cmp1.Canales[2] = canal3.Checked;
                            cmp1.Canales[3] = canal4.Checked;
                            cmp1.Canales[4] = canal5.Checked;
                            cmp1.Canales[5] = canal6.Checked;
                            cmp1.Canales[6] = canal7.Checked;
                            cmp1.Canales[7] = canal8.Checked;
                            cmp1.Canales[8] = canal9.Checked;
                            cmp1.Canales[9] = canal10.Checked;
                            cmp1.Canales[10] = canal11.Checked;
                            cmp1.Canales[11] = canal12.Checked;
                            cmp1.Canales[12] = canal13.Checked;
                            cmp1.Canales[13] = canal14.Checked;
                            cmp1.Canales[14] = canal15.Checked;
                            cmp1.Canales[15] = canal16.Checked;
                            cmp1.ActualizarComponente(TipoActualizacion.Mantenimiento);
                        }
                        else
                        {
                            AltaComponente();
                        }
                        break;
                    case 3://Seguidor
                        LOBIncidencias.Seguidor cmp2 = (LOBIncidencias.Seguidor)ComponentFactory.getComponent("seguidor", NserieSeguidor.Text);
                        if (cmp2 != null)
                        {
                            cmp2.ComponentePadre = cbStrings.SelectedValue;
                            cmp2.Descripcion = this.DescSeguidor.Text;
                            cmp2.ActualizarComponente(TipoActualizacion.Mantenimiento);
                        }
                        else
                        {
                            AltaComponente();
                        }
                        break;
                    case 4://Panel
                        LOBIncidencias.Panel cmp3 = (LOBIncidencias.Panel)ComponentFactory.getComponent("panel", NseriePanel.Text);
                        if (cmp3 != null)
                        {
                            cmp3.ComponentePadre = cbSeguidores.SelectedValue;
                            cmp3.Descripcion = this.DescPanel.Text;
                            cmp3.Pmax = Decimal.Parse(this.txtPmax.Text);
                            cmp3.Ipm = Decimal.Parse(this.txtIpm.Text);
                            cmp3.ActualizarComponente(TipoActualizacion.Mantenimiento);
                        }
                        else
                        {
                            AltaComponente();
                        }
                        break;


                }
            }
            catch (Exception ex)
            {

                lblError.Text = ex.Message;
            }
            finally
            {

                //Paneles.DataBind();

            }
            */
        
        }

        protected override void OnError(EventArgs e)
        {

            
        }

        protected void cmdNuevo_Click(object sender, ImageClickEventArgs e)
        {
           /* int i = 0;
            try
            {
                switch (i)
                {
                    case 0://Planta
                        this.NseriePlanta.Text = "";
                        this.NseriePlanta.ReadOnly = false;
                        this.txtCif.Text = "";
                        this.txtTlf.Text="";
                        this.DescPlanta.Text="";
                        this.txtEtotal.Text = "";
                        this.txtEtotal.ReadOnly = false;
                        break;
                    case 1://Inversor
                        this.txtNSerieInversor.Text = "";
                        this.txtNSerieInversor.ReadOnly = false;
                        this.txtPotencia.Text = "";
                        this.txtEnlaceSunny.Text = "";
                        break;
                    case 2://String
                        this.NserieString.Text = "";
                        this.NserieString.ReadOnly = false;
                        this.DescString.Text = "";
                        canal1.Checked = false;
                        canal2.Checked=false;
                        canal3.Checked= false;
                        canal4.Checked=false;
                        canal5.Checked=false;
                        canal6.Checked=false;
                        canal7.Checked=false;
                        canal8.Checked = false;
                        canal9.Checked = false;
                        canal10.Checked = false;
                        canal11.Checked = false;
                        canal12.Checked = false;
                        canal13.Checked = false;
                        canal14.Checked = false;
                        canal15.Checked = false;
                        canal16.Checked = false;
                        break;
                    case 3://Seguidor
                        this.NserieSeguidor.Text = "";
                        this.NserieSeguidor.ReadOnly = false;
                        this.DescSeguidor.Text = "";
                        break;
                    case 4://Panel
                        this.NseriePanel.Text = "";
                        this.NseriePanel.ReadOnly = false;
                        this.DescPanel.Text="";
                        this.txtPmax.Text = "";
                        this.txtIpm.Text = "";
                        break;
                }
            }
            catch (Exception ex)
            {

                lblError.Text = ex.Message;
            }
            finally
            {

                //Paneles.DataBind();

            }*/

        }

        protected void cbPlantas_SelectedIndexChanged(object sender, EventArgs e)
        {
            string _nSerie = (sender as DropDownList).SelectedValue.Trim();
            //loadComponente(0, _nSerie);
            _planta = (Planta)ComponentFactory.getComponent("planta", _nSerie);
        }

        [WebMethod]
        public static string addInversor(string Nserie, string Descripcion, string idPadre, string Potencia, string EnlaceSunny)
        {
            LOBIncidencias.Inversor _inversor = (LOBIncidencias.Inversor)ComponentFactory.createComponent("Inversor");
            _inversor.NSerie = Nserie.ToUpper();
            _inversor.Descripcion = Descripcion;
            _inversor.ComponentePadre = idPadre.ToUpper();
            _inversor.Potencia = Convert.ToDecimal(Potencia);
            _inversor.EnlaceSunny = EnlaceSunny;
            _inversor.CrearComponente();
            return "ok";

        }

        [WebMethod]
        public static string addSeguidor(string Nserie, string Descripcion, string idPadre)
        {
            LOBIncidencias.Seguidor _seguidor = (LOBIncidencias.Seguidor)ComponentFactory.createComponent("Seguidor");
            _seguidor.NSerie = Nserie.ToUpper();
            _seguidor.Descripcion = Descripcion;
            _seguidor.ComponentePadre = idPadre.ToUpper();
            _seguidor.CrearComponente();
            return "ok";

        }

        [WebMethod]
        public static string addPanel(string Nserie, string Descripcion, string idPadre, string Pmax, string Ipm)
        {
            LOBIncidencias.Panel _panel = (LOBIncidencias.Panel)ComponentFactory.createComponent("Panel");
            _panel.NSerie = Nserie.ToUpper();
            _panel.Descripcion = Descripcion;
            _panel.ComponentePadre = idPadre.ToUpper();
            _panel.Pmax = Convert.ToDecimal(Pmax);
            _panel.Ipm = Convert.ToDecimal(Ipm);
            _panel.CrearComponente();
            return "ok";

        }

        [WebMethod]
        public static string addStrings(string Nserie, string Descripcion, string idPadre, string c1, string c2, string c3, string c4, string c5, string c6, string c7, string c8, string c9, string c10, string c11, string c12, string c13, string c14, string c15, string c16)
        {
            try
            {
                LOBIncidencias.String _string = (LOBIncidencias.String)ComponentFactory.createComponent("String");
                _string.NSerie = Nserie.ToUpper();
                _string.Descripcion = Descripcion;
                _string.ComponentePadre = idPadre.ToUpper();
                _string.Canales[0] = Convert.ToBoolean(c1);
                _string.Canales[1] = Convert.ToBoolean(c2);
                _string.Canales[2] = Convert.ToBoolean(c3);
                _string.Canales[3] = Convert.ToBoolean(c4);
                _string.Canales[4] = Convert.ToBoolean(c5);
                _string.Canales[5] = Convert.ToBoolean(c6);
                _string.Canales[6] = Convert.ToBoolean(c7);
                _string.Canales[7] = Convert.ToBoolean(c8);
                _string.Canales[8] = Convert.ToBoolean(c9);
                _string.Canales[9] = Convert.ToBoolean(c10);
                _string.Canales[10] = Convert.ToBoolean(c11);
                _string.Canales[11] = Convert.ToBoolean(c12);
                _string.Canales[12] = Convert.ToBoolean(c13);
                _string.Canales[13] = Convert.ToBoolean(c14);
                _string.Canales[14] = Convert.ToBoolean(c15);
                _string.Canales[15] = Convert.ToBoolean(c16);
                _string.CrearComponente();

                return "ok";
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        [WebMethod]
        public static Dictionary<string, string> getComponente(string type, string id)
        {
            Dictionary<string, string> dic = new Dictionary<string, string>();
            switch (type)
            {
                case "INVERSOR":
                    LOBIncidencias.Inversor _inv = (LOBIncidencias.Inversor)ComponentFactory.getComponent("INVERSOR", id);
                    dic.Add("Nserie", _inv.NSerie);
                    dic.Add("ComponentePadre", _inv.ComponentePadre);
                    dic.Add("Descripcion", _inv.Descripcion);
                    dic.Add("Potencia", _inv.Potencia.ToString());
                    dic.Add("EnlaceSunny", _inv.EnlaceSunny);
                    return dic;
                case "STRING":
                    LOBIncidencias.String _str = (LOBIncidencias.String)ComponentFactory.getComponent("STRING", id);
                    dic.Add("Nserie", _str.NSerie);
                    dic.Add("ComponentePadre", _str.ComponentePadre);
                    dic.Add("Descripcion", _str.Descripcion);
                    dic.Add("c1", _str.Canales[0].ToString());
                    dic.Add("c2", _str.Canales[1].ToString());
                    dic.Add("c3", _str.Canales[2].ToString());
                    dic.Add("c4", _str.Canales[3].ToString());
                    dic.Add("c5", _str.Canales[4].ToString());
                    dic.Add("c6", _str.Canales[5].ToString());
                    dic.Add("c7", _str.Canales[6].ToString());
                    dic.Add("c8", _str.Canales[7].ToString());
                    dic.Add("c9", _str.Canales[8].ToString());
                    dic.Add("c10", _str.Canales[9].ToString());
                    dic.Add("c11", _str.Canales[10].ToString());
                    dic.Add("c12", _str.Canales[11].ToString());
                    dic.Add("c13", _str.Canales[12].ToString());
                    dic.Add("c14", _str.Canales[13].ToString());
                    dic.Add("c15", _str.Canales[14].ToString());
                    dic.Add("c16", _str.Canales[15].ToString());
                 
                    return dic;
                case "SEGUIDOR":
                    LOBIncidencias.Seguidor _seg = (LOBIncidencias.Seguidor)ComponentFactory.getComponent("SEGUIDOR", id);
                    dic.Add("Nserie", _seg.NSerie);
                    dic.Add("ComponentePadre", _seg.ComponentePadre);
                    dic.Add("Descripcion", _seg.Descripcion);
                    return dic;
                case "PANEL":
                    LOBIncidencias.Panel _panel = (LOBIncidencias.Panel)ComponentFactory.getComponent("PANEL", id);
                    dic.Add("Nserie", _panel.NSerie);
                    dic.Add("ComponentePadre", _panel.ComponentePadre);
                    dic.Add("Descripcion", _panel.Descripcion);
                    dic.Add("Pmax", _panel.Pmax.ToString());
                    dic.Add("Ipm", _panel.Ipm.ToString());
                    return dic;
                    
                default:
                    break;
            }
            return dic;
        }


        [WebMethod]
        public static void delComponente(string Nserie, string type)
        {
            ComponentFactory.deleteComponent(type, Nserie);
        }
    }
}
