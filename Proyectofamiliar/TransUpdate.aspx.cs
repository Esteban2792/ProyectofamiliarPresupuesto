using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyectofamiliar
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            //SqlInicio1.Update();
            try
            {
                SqlInicio1.Update();
                TxtCantidad.Text = "";
                TxtDescripcion.Text = "";
                Txtfecha.Text = "";
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                Page.RegisterStartupScript("UserMsg", "<script>alert('A ocurrido un error en la transacción, vuelva a intentarlo..');if(alert){ window.location='TransUpdate.aspx';}</script>");

            }
        }
    }
}