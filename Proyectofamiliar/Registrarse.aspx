<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="Proyectofamiliar.Registrarse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link rel="stylesheet" href="/CSS/login.css" type="text/css" media="screen" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div class="auto-style">
       
            <div class="login-html">
                <input id="Ingresar" type="radio" name="tab" class="sign-in" value="button" />
                <label for="Ingresar" class="tab">Ingresar</label>
                 <input id="Registrarse" type="radio" name="tab" class="sign-up" value="button"/>
              <label for="Registrarse" class="tab">Registrarse</label>
                 
                <div class="login-form">
                    <div class="sign-in-htm">
                        <div class="group">
                            
                        <div class="group">
                        </div>
                        <div class="hr"></div>
                        <div class="foot-lnk">
                            <a href="Login.aspx">¿Desea ingresar?</a>
                            <div>
                                <asp:Label ID="LbBienvenido" runat="server" class="label"></asp:Label>
                            </div>
                            <div>
                                <asp:Label ID="Lbincorrecto" runat="server" class="label"></asp:Label>
                            </div>
                        </div>
                    </div>
                    
                </div>
                    <div class="sign-up-htm">
                        <asp:SqlDataSource ID="Sqlregistro" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoProgra3ConnectionString %>" InsertCommand="NuevoUsuario" InsertCommandType="StoredProcedure" SelectCommand="LoginUsuario" SelectCommandType="StoredProcedure">
                            <InsertParameters>
                                <asp:ControlParameter ControlID="txtuser2" Name="Usuario" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtEmail" Name="Correo" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtpass2" Name="Contraseña" PropertyName="Text" Type="String" />
                            </InsertParameters>
                          
                        </asp:SqlDataSource>
                        <div class="group">
                            <asp:Label ID="Lbuser2" for="txtuser2" class="label" runat="server" Text="Usuario"></asp:Label>
                            <asp:TextBox ID="txtuser2" class="input" runat="server"></asp:TextBox>
                        <div>
                            <asp:RequiredFieldValidator ID="ValidadorUsuarioR" runat="server" ErrorMessage="Digite su nombre de usuario" ControlToValidate="txtuser2" BorderStyle="Inset"></asp:RequiredFieldValidator></div>
                        </div>
                        <div class="group">
                            <asp:Label ID="Lbpass2" for="txtpass2" class="label" runat="server" Text="Contraseña"></asp:Label>
                            <asp:TextBox ID="txtpass2" class="input" data-type="password" runat="server"></asp:TextBox>
                                                <div>
                                                    <asp:RequiredFieldValidator ID="Validarclave1" runat="server" ErrorMessage="Digite una contraseña" ControlToValidate="txtpass2"></asp:RequiredFieldValidator></div>

                        </div>
                        <div class="group">
                            <asp:Label ID="Lbrepeat" for="txtrepeatpass" class="label" runat="server" Text="Repite la contraseña"></asp:Label>
                            <asp:TextBox ID="txtrepeatpass" type="password" class="input" data-type="password" runat="server"></asp:TextBox>
                                                <div>
                                                    <asp:RequiredFieldValidator ID="ValidarClaveR2" runat="server" ErrorMessage="No confirmaste tu contraseña" ControlToValidate="txtrepeatpass"></asp:RequiredFieldValidator></div>

                        </div>
                        <asp:CompareValidator ID="ComparePassword" runat="server" ErrorMessage="Las Contraseñas no son iguales" ControlToCompare="txtpass2" ControlToValidate="txtrepeatpass"></asp:CompareValidator>
                        <div class="group">
                            <asp:Label ID="Lbemail" for="txtEmail" class="label" runat="server" Text="Correo electrónico"></asp:Label>
                            <asp:TextBox ID="txtEmail" class="input" runat="server" TextMode="Email"></asp:TextBox>
                                                <div>
                            <asp:RequiredFieldValidator ID="validaremailvacio" runat="server" ErrorMessage="Digite un correo" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                        </div>
                        <div class="group">
                            <asp:Button ID="Registro" class="button" runat="server" Text="Registrarse" OnClick="Registro_Click" />
                        </div>
                                                        

                        <div class="hr">
                        </div>
                        <div class="foot-lnk">
                                                       <a href="Login.aspx">¿Ya estás registrado?</a>

                        </div>
                    </div>
            </div>
        </div>
             </div>
             </div>
    </form>
</body>
</html>
