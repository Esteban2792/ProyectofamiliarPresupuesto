using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyectofamiliar
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BTNIngresar_Click(object sender, EventArgs e)
        {
  Usuario.Setusuario(txtuser.Text);
            Usuario.Setclave(txtpass.Text);
            if (IsValid)
            {
                String Sconexion = System.Configuration.ConfigurationManager.ConnectionStrings["ProyectoProgra3ConnectionString"].ConnectionString;
                SqlConnection conexion = new SqlConnection(Sconexion);
                conexion.Open();
                SqlCommand comando = new SqlCommand("exec Login_Admi '" + Usuario.Getusuario() + "','" + Usuario.Getclave() + "'", conexion);
                SqlDataReader registro = comando.ExecuteReader();
                if (registro.Read())
                {
                    Page.RegisterStartupScript("UserMsg", "<script>alert('Login Exitoso..');if(alert){ window.location='Administrar.aspx';}</script>");

                    //Response.Redirect("prueba.aspx");
                }
                conexion.Close();
            }
            else
            {
                Lbincorrecto.Text = "Usuario no valido o contraseña incorrecta";
            }
        }
    }
}