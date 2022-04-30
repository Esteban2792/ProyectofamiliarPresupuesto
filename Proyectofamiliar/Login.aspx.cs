using System;
using System.Data.SqlClient;

namespace Proyectofamiliar
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LbBienvenido.Text = "Bienvenid@ " + Usuario.Getusuario();
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
                SqlCommand comando = new SqlCommand("exec LoginUsuario '" + Usuario.Getusuario() + "','" + Usuario.Getclave() + "'", conexion);
                SqlDataReader registro = comando.ExecuteReader();
                if (registro.Read())
                {
                    Page.RegisterStartupScript("UserMsg", "<script>alert('Login Exitoso..');if(alert){ window.location='Inicio.aspx';}</script>");

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