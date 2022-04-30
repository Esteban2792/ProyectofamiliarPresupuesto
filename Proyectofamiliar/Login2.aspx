<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Login2.aspx.cs" Inherits="Proyectofamiliar.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" href="/CSS/login.css" type="text/css" media="screen" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="auto-style">
       
            <div class="login-html">
                <input id="Administrador" type="radio" name="tab" class="sign-in" value="button" />
                <label for="Administrador" class="tab">Administrador</label>
       <input id="Registrarse" type="radio" name="tab" class="sign-up" value="button"/>
              <label for="Registrarse" class="tab">Usuario</label>           
                 
                <div class="login-form">
                    <div class="sign-in-htm">
                        <asp:SqlDataSource ID="Sqlregistro" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoProgra3ConnectionString %>" InsertCommand="NuevoUsuario" InsertCommandType="StoredProcedure" SelectCommand="LoginUsuario" SelectCommandType="StoredProcedure">
                            
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txtuser" Name="Usuario" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtpass" Name="Contraseña" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <div class="group">
                            <label for="txtuser" class="label">Administrador</label>
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
                            <a href="Inicio.aspx">¿No eres administrador?</a>
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
                          
<a href="Inicio.aspx">¿No eres administrador?</a>                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
