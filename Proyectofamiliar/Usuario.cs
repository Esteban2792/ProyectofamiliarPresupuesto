namespace Proyectofamiliar
{
    public class Usuario
    {
        private static string usuario { get; set; }

        private static string correo { get; set; }

        private static string clave { get; set; }

        //metodos
        public static void Setusuario(string user)
        {
            usuario = user;
        }

        public static string Getusuario()
        {
            return usuario;
        }

        public static string Getcorreo()
        {
            return correo;
        }

        public static void Setcorreo(string email)
        {
            correo = email;
        }

        public static string Getclave()
        {
            return clave;
        }

        public static void Setclave(string password)
        {
            clave = password;
        }
    }
}