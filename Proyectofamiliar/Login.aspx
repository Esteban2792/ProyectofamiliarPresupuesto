<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Proyectofamiliar.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/CSS/login.css" type="text/css" media="screen" />

    <title>Página de login</title>
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
                        <asp:SqlDataSource ID="Sqlregistro" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoProgra3ConnectionString %>" InsertCommand="NuevoUsuario" InsertCommandType="StoredProcedure" SelectCommand="LoginUsuario" SelectCommandType="StoredProcedure">
                            
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txtuser" Name="Usuario" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtpass" Name="Contraseña" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <div class="group">
                            <label for="txtuser" class="label">Usuario</label>
                            <asp:TextBox ID="txtuser" class="input" runat="server"></asp:TextBox>
                            <div>
                                <asp:RequiredFieldValidator ID="ValidarUsuario" runat="server" ErrorMessage="Por favor, rellenar el espacio con su usuario" ControlToValidate="txtuser"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="group">
                            <label for="txtpass" class="label">Contraseña</label>
                            <asp:TextBox ID="txtpass" type="password" class="input" data-type="password" runat="server"></asp:TextBox>
                            <div>
                                <asp:RequiredFieldValidator ID="ValidadorContraseña" runat="server" ErrorMessage="Digite su contraseña" ControlToValidate="txtpass"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="group">
                            <input id="check" class="check" type="checkbox" />
                            <label for="check"><span class="icon"></span>&nbsp;Recuerdame</label>
                        </div>
                        <div class="group">
                            <asp:Button ID="BTNIngresar" class="button" value="Sign In" runat="server" Text="Ingresar" OnClick="BTNIngresar_Click" />
                        </div>
                        <div class="hr"></div>
                        <div class="foot-lnk">
                            <a href="Registrarse.aspx">¿Desea Registrarse?</a>
                            <div>
                                <asp:Label ID="LbBienvenido" runat="server" class="label"></asp:Label>
                            </div>
                            <div>
                                <asp:Label ID="Lbincorrecto" runat="server" class="label"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="sign-up-htm">
                        
                        
                        <div class="hr">
                        </div>
                        <div class="foot-lnk">
                            <a>
                                <label for="Ingresar">¿Ya estas registrado?</label>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </form>
</body>
</html>