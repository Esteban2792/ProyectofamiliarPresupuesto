using System;

namespace Proyectofamiliar
{
    public partial class Registrarse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Registro_Click(object sender, EventArgs e)
        {
            try
            {
                if (IsValid)
                {
                    Sqlregistro.Insert();
                    Usuario.Setusuario(txtuser2.Text);
                    Page.RegisterStartupScript("UserMsg", "<script>alert('Registro Exitoso..');if(alert){ window.location='Login.aspx';}</script>");

                    //Response.Redirect("Login.aspx");

                }
            }
            catch (Exception)
            {
                Page.RegisterStartupScript("UserMsg", "<script>alert('Usuario repetido..');if(alert){ window.location='Registrarse.aspx';}</script>");

            }


        }


    }
}