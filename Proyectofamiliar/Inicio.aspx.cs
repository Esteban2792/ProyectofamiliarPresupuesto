using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace Proyectofamiliar
{
    public partial class Pruebas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtnombreU.Text = Usuario.Getusuario();
            //if (!IsPostBack)
            //{
            //    llenarGripFiltro();
            //}

        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            try
            {
                SqlInicio.Insert();
                TxtCantidad.Text = "";
                TxtDescripcion.Text = "";
                Txtfecha.Text = "";
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                Page.RegisterStartupScript("UserMsg", "<script>alert('A ocurrido un error en la transacción, vuelva a ingresar..');if(alert){ window.location='Login.aspx';}</script>");

            }

        }

        public void llenarGripFiltro()

        {
            string connection = "";
            DataTable dt = new DataTable(connection);
            SqlConnection conn = new SqlConnection();
            SqlCommand cmd = new SqlCommand("Filtro_Transacciones", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Tipo", Ddfiltro.Text);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                using (dt = new DataTable())
                {
                    SqlDataAdapter sda = new SqlDataAdapter();
                    cmd.CommandType = CommandType.StoredProcedure;
                    sda.SelectCommand = cmd;
                    sda.Fill(dt);
                    this.Tabla1.DataSource = dt;
                    this.Tabla1.DataBind();
                }
            }
            catch (Exception ex)
            {
                Page.RegisterStartupScript("UserMsg", "<script>alert('No existe tal filtro..');if(alert){ window.location='Inicio.aspx';}</script>");
                throw new Exception("Exeception adding filter " + ex);
            }
            finally
            {
                conn.Close();
            }
        }

        protected void Ddfiltro_SelectedIndexChanged(object sender, EventArgs e)
        {
            llenarGripFiltro();
        }
    }
}