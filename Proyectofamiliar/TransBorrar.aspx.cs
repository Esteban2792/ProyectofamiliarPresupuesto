using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyectofamiliar
{
    public partial class TransBorrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            //SqlInicio2.Delete();
            try
            {
                SqlInicio2.Delete();

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                Page.RegisterStartupScript("UserMsg", "<script>alert('A ocurrido un error en la transacción, vuelva a intentarlo..');if(alert){ window.location='Transborra.aspx';}</script>");

            }
        }
    }
}