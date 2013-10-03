using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI.WebControls;
using System.Reflection;
using System.ComponentModel;

namespace ControlBotones
{
    public class Botonera:WebControl
    {
        [
      Category("Behavior"),
      Description("Botones de la botonera"),
      ]
        public List<ImageButton> _Botones = new List<ImageButton>();
       
      

        private int _numBotones=3;

        [
        Category("Behavior"),
        Description("Indica el número de botones"),
        ]
        public int Botones
        {
            get { return _numBotones; }
            set { _numBotones = value; }
         }
        
        public Botonera() {
            ImageButton cmd;

            for (int i = 0; i < Botones; i++)
            {
                cmd = new ImageButton();
                _Botones.Add(cmd);
                
            }
    
        }

  

        //public Botonera() 
        //{
        //    ImageButton cmd;
        //    cmd = new ImageButton();
        //    cmd.AlternateText = "Nuevo";
        //    _Botones.Add(cmd);

        //    cmd = new ImageButton();
        //    cmd.AlternateText = "Guardar";
        //    _Botones.Add(cmd);

        //    cmd = new ImageButton();
        //    cmd.AlternateText = "Eliminar";
        //    _Botones.Add(cmd);

        //    cmd = new ImageButton();
        //    cmd.AlternateText = "Baja";
        //    _Botones.Add(cmd);

        //}
        protected override void CreateChildControls()
        {
            base.CreateChildControls();

        }
        protected override void RenderContents(System.Web.UI.HtmlTextWriter writer)
        {
            writer.RenderBeginTag(System.Web.UI.HtmlTextWriterTag.Table);
            writer.RenderBeginTag(System.Web.UI.HtmlTextWriterTag.Tr);

            foreach (ImageButton cmd in _Botones)
	        {
	            writer.RenderBeginTag(System.Web.UI.HtmlTextWriterTag.Td);
                cmd.RenderControl(writer);
	        }
            writer.RenderEndTag();
        }



    }
}
